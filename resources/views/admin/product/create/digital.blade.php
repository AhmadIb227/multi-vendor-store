@extends('layouts.admin')
@section('styles')

<link href="{{asset('assets/admin/css/product.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/jquery.Jcrop.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/Jcrop-style.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/select2.css')}}" rel="stylesheet"/>

@endsection
@section('content')
@if(Session::has('language'))
    @php
        $curr_lang = App\Models\Language::find(Session::get('language'));
    @endphp
@else
    @php
        $curr_lang = App\Models\Language::where('is_default', 1)->first();
    @endphp
@endif
 @if($curr_lang->rtl == 1)
<style>
    @media screen and (max-width: 767px) {
        .content-area {
    margin-right: 35px;
            
        }
    }
    </style>
    
    @else
    
    @endif
						<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading">{{ __("Digital Product") }} <a class="add-btn" href="{{ route('admin-prod-types') }}"><i class="fas fa-arrow-left"></i> {{ __("Back") }}</a></h4>
											<ul class="links">
												<li>
													<a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
												</li>
											<li>
												<a href="javascript:;">{{ __("Products") }} </a>
											</li>
											<li>
												<a href="{{ route('admin-prod-index') }}">{{ __("All Products") }}</a>
											</li>
												<li>
													<a href="{{ route('admin-prod-types') }}">{{ __("Add Product") }}</a>
												</li>
												<li>
													<a href="{{ route('admin-prod-create','digital') }}">{{ __("Digital Product") }}</a>
												</li>
											</ul>
									</div>
								</div>
							</div>

							<form id="geniusform" action="{{route('admin-prod-store')}}" method="POST" enctype="multipart/form-data">
								{{csrf_field()}}
								@include('alerts.admin.form-both')
								<div class="row">
									<div class="col-lg-8">
										<div class="add-product-content">
											<div class="row">
												<div class="col-lg-12">
													<div class="product-description">
														<div class="body-area">
															<div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>


															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																			<h4 class="heading">{{ __('Product Name') }}* </h4>
																			<p class="sub-heading">{{ __('(In Any Language)') }}</p>
																	</div>
																</div>
																<div class="col-lg-12">
																	<input type="text" class="input-field" placeholder="{{ __('Enter Product Name') }}" name="name" required="">
																</div>
															</div>


															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">{{ __('Category') }}*</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																	<select id="cat" name="category_id" required="">
																		<option value="">{{ __('Select Category') }}</option>
																		@foreach($cats as $cat)
																			<option data-href="{{ route('admin-subcat-load',$cat->id) }}" value="{{ $cat->id }}">{{$cat->name}}</option>
																		@endforeach
																	</select>
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">{{ __('Sub Category') }}*</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																	<select id="subcat" name="subcategory_id" disabled="">
																			<option value="">{{ __('Select Sub Category') }}</option>
																	</select>
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">{{ __('Child Category') }}*</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																	<select id="childcat" name="childcategory_id" disabled="">
																			<option value="">{{ __('Select Child Category') }}</option>
																	</select>
																</div>
															</div>


															<div id="catAttributes"></div>
															<div id="subcatAttributes"></div>
															<div id="childcatAttributes"></div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																			<h4 class="heading">{{ __("Select Upload Type") }}*</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																		<select id="type_check" name="type_check">
																		  <option value="1">{{ __("Upload By File") }}</option>
																		  <option value="2">{{ __("Upload By Link") }}</option>
																		</select>
																</div>
															</div>

															<div class="row file">
																<div class="col-lg-12">
																	<div class="left-area">
																			<h4 class="heading">{{ __("Select File") }}*</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																		<input type="file" name="file" required="">
																</div>
															</div>

															<div class="row link hidden">
																<div class="col-lg-4">
																	<div class="left-area">
																			<h4 class="heading">{{ __("Link") }}*</h4>
																	</div>
																</div>
																<div class="col-lg-7">
																		<textarea class="input-field" rows="4" name="link" placeholder="{{ __("Link") }}"></textarea>
																</div>
															</div>


															<div class="">
																<div class="row">
																	<div class="col-lg-12">
																		<div class="left-area">
																				<h4 class="heading">{{ __('Cross Showing Product By Current Category') }}*</h4>
																		</div>
																	</div>
																	<div class="col-lg-12">
																			<select name="cross_products[]" multiple id="cross_product" class="select2">

																			</select>
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">
																			{{ __('Product Description') }}*
																		</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																	<div class="text-editor">
																		<textarea class="nic-edit-p" name="details"></textarea>
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">
																			{{ __('Product Buy/Return Policy') }}*
																		</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																	<div class="text-editor">
																		<textarea class="nic-edit-p" name="policy"></textarea>
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="checkbox-wrapper">
																		<input type="checkbox" name="seo_check" value="1" class="checkclick" id="allowProductSEO" value="1">
																		<label for="allowProductSEO">{{ __('Allow Product SEO') }}</label>
																	</div>
																</div>
															</div>



														<div class="showbox">
															<div class="row">
															  <div class="col-lg-12">
																<div class="left-area">
																	<h4 class="heading">{{ __('Meta Tags') }} *</h4>
																</div>
															  </div>
															  <div class="col-lg-12">
																<ul id="metatags" class="myTags">
																</ul>
															  </div>
															</div>

															<div class="row">
															  <div class="col-lg-12">
																<div class="left-area">
																  <h4 class="heading">
																	  {{ __('Meta Description') }} *
																  </h4>
																</div>
															  </div>
															  <div class="col-lg-12">
																<div class="text-editor">
																  <textarea name="meta_description" class="input-field" placeholder="{{ __('Meta Description') }}"></textarea>
																</div>
															  </div>
															</div>
														  </div>

														  <input type="hidden" name="type" value="Digital">

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
									<div class="col-lg-4">
										<div class="add-product-content">
											<div class="row">
												<div class="col-lg-12">
													<div class="product-description">
														<div class="body-area">
															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">{{ __('Feature Image') }} *</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																	<div class="panel panel-body">
																		<div class="span4 cropme text-center" id="image-upload-container"
																			 style="width: 100%; height: 285px; border: 1px dashed #ddd; background: #f1f1f1;">
																			<a href="javascript:;" id="crop-image" class="mybtn1" style=" margin-top: 120px">
																				<i class="icofont-upload-alt "></i> {{ __('Upload Image Here') }}
																			</a>
																			{{-- <input type="file" id="image-upload" style="display: none;"> --}}
																			<img id="preview-image" style="display: none; max-width: 100%; height: auto;" />
																		</div>
																	</div>
																</div>

															</div>
															<input type="hidden" id="feature_photo" name="photo" value="">
															<input type="file" name="gallery[]" class="hidden" id="uploadgallery" accept="image/*"
																multiple>
															<div class="row mb-4">
																<div class="col-lg-12 mb-2">
																	<div class="left-area">
																		<h4 class="heading">
																			{{ __('Product Gallery Images') }} *
																		</h4>
																	</div>
																</div>
																<div class="col-lg-12">
																	<a href="#" class="set-gallery" data-toggle="modal" data-target="#setgallery">
																		<i class="icofont-plus"></i> {{ __('Set Gallery') }}
																	</a>
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">
																			{{ __('Product Current Price') }}*
																		</h4>
																		<p class="sub-heading">
																			({{ __('In') }} {{$sign->name}})
																		</p>
																	</div>
																</div>
																<div class="col-lg-12">
																	<input name="price" type="number" class="input-field" placeholder="{{ __('e.g 20') }}" step="0.1" required="" min="0">
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																			<h4 class="heading">{{ __('Product Discount Price') }}*</h4>
																			<p class="sub-heading">{{ __('(Optional)') }}</p>
																	</div>
																</div>
																<div class="col-lg-12">
																	<input name="previous_price" step="0.1" type="number" class="input-field" placeholder="{{ __('e.g 20') }}" min="0">
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">
																		<h4 class="heading">{{ __('Youtube Video URL') }}*</h4>
																		<p class="sub-heading">{{ __('(Optional)') }}</p>
																	</div>
																</div>
																<div class="col-lg-12">
																	<input  name="youtube" type="text" class="input-field" placeholder="{{ __('Enter Youtube Video URL') }}">
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																	<div class="left-area">

																	</div>
																</div>
																<div class="col-lg-12">
																	<div class="featured-keyword-area">
																		<div class="left-area">
																			<h4 class="title">{{ __('Feature Tags') }}</h4>
																		</div>

																		<div class="feature-tag-top-filds" id="feature-section">
																			<div class="feature-area">
																				<span class="remove feature-remove"><i class="fas fa-times"></i></span>
																				<div class="row">
																					<div class="col-lg-6">
																					<input type="text" name="features[]" class="input-field" placeholder="{{ __('Enter Your Keyword') }}">
																					</div>

																					<div class="col-lg-6">
																						<div class="input-group colorpicker-component cp">
																						  <input type="text" name="colors[]" value="#000000" class="input-field cp"/>
																						  <span class="input-group-addon"><i></i></span>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>

																		<a href="javascript:;" id="feature-btn" class="add-fild-btn"><i class="icofont-plus"></i> {{ __('Add More Field') }}</a>
																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-lg-12">
																  <div class="left-area">
																	  <h4 class="heading">{{ __('Tags') }} *</h4>
																  </div>
																</div>
																<div class="col-lg-12">
																  <ul id="tags" class="myTags">
																  </ul>
																</div>
															  </div>

															  <div class="row text-center">
																<div class="col-6 offset-3">
																	<button class="addProductSubmit-btn" type="submit">{{ __('Create Product') }}</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>

					<div class="modal fade" id="setgallery" tabindex="-1" role="dialog" aria-labelledby="setgallery" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
							<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalCenterTitle">{{__('Image Gallery')}}</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="top-area">
									<div class="row">
										<div class="col-sm-6 text-right">
											<div class="upload-img-btn">
														<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i>{{__('Upload File')}}</label>
											</div>
										</div>
										<div class="col-sm-6">
											<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> {{__('Done')}}</a>
										</div>
										<div class="col-sm-12 text-center">( <small>{{__('You can upload multiple Images.')}}</small> )</div>
									</div>
								</div>
								<div class="gallery-images">
									<div class="selected-image">
										<div class="row">


										</div>
									</div>
								</div>
							</div>
							</div>
						</div>
					</div>

@endsection

@section('scripts')

		<script src="{{asset('assets/admin/js/jquery.Jcrop.js')}}"></script>
		<script src="{{asset('assets/admin/js/jquery.SimpleCropper.js')}}"></script>
		<script src="{{asset('assets/admin/js/select2.js')}}"></script>

<script type="text/javascript">

    (function($) {
		"use strict";

		$(document).ready(function() {
    $('.select2').select2({
		placeholder: "Select Products",
		maximumSelectionLength: 4,
	});
});

  $(document).on('click', '.remove-img' ,function() {
    var id = $(this).find('input[type=hidden]').val();
    $('#galval'+id).remove();
    $(this).parent().parent().remove();
  });

  $(document).on('click', '#prod_gallery' ,function() {
    $('#uploadgallery').click();
     $('.selected-image .row').html('');
    $('#geniusform').find('.removegal').val(0);
  });


  $("#uploadgallery").change(function(){
     var total_file=document.getElementById("uploadgallery").files.length;
     for(var i=0;i<total_file;i++)
     {
      $('.selected-image .row').append('<div class="col-sm-6">'+
                                        '<div class="img gallery-img">'+
                                            '<span class="remove-img"><i class="fas fa-times"></i>'+
                                            '<input type="hidden" value="'+i+'">'+
                                            '</span>'+
                                            '<a href="'+URL.createObjectURL(event.target.files[i])+'" target="_blank">'+
                                            '<img src="'+URL.createObjectURL(event.target.files[i])+'" alt="gallery image">'+
                                            '</a>'+
                                        '</div>'+
                                  '</div> '
                                      );
      $('#geniusform').append('<input type="hidden" name="galval[]" id="galval'+i+'" class="removegal" value="'+i+'">')
     }

  });

})(jQuery);
</script>

<script type="text/javascript">

    (function($) {
		"use strict";

$('.cropme').simpleCropper();

})(jQuery);

</script>


@include('partials.admin.product.product-scripts')
@endsection


<script src="https://cdn.jsdelivr.net/npm/pica@latest/dist/pica.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const uploadInput = document.getElementById('image-upload');
        const previewImage = document.getElementById('preview-image');
        const imageUploadContainer = document.getElementById('image-upload-container');

        uploadInput.addEventListener('change', async (event) => {
            const files = event.target.files;
            if (files.length > 0) {
                const file = files[0];
                const reader = new FileReader();
                reader.onload = async (e) => {
                    const img = new Image();
                    img.onload = async () => {
                        const maxDimension = 1080;
                        const scaleFactor = Math.min(maxDimension / img.width, maxDimension / img.height, 1);
                        const width = img.width * scaleFactor;
                        const height = img.height * scaleFactor;

                        const canvas = document.createElement('canvas');
                        canvas.width = width;
                        canvas.height = height;
                        await pica().resize(img, canvas, {
                            unsharpAmount: 80,
                            unsharpThreshold: 2
                        });

                        const mimeType = file.type || 'image/jpeg';
                        const dataUrl = canvas.toDataURL(mimeType);

                        imageUploadContainer.style.backgroundImage = `url(${dataUrl})`;
                        imageUploadContainer.style.backgroundSize = 'cover';
                        imageUploadContainer.style.backgroundPosition = 'center';
                        imageUploadContainer.style.backgroundRepeat = 'no-repeat';

                        previewImage.src = dataUrl;
                        previewImage.style.display = 'block';
                    };
                    img.src = e.target.result;
                };
                reader.readAsDataURL(file);
            } else {
                imageUploadContainer.style.backgroundImage = 'none';
                previewImage.style.display = 'none';
            }
        });

        imageUploadContainer.addEventListener('click', () => {
            uploadInput.click();
        });
    });
</script>

