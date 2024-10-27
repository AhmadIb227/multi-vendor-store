@extends('layouts.vendor')
@section('styles')

<link href="{{asset('assets/admin/css/product.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/jquery.Jcrop.css')}}" rel="stylesheet"/>
<link href="{{asset('assets/admin/css/Jcrop-style.css')}}" rel="stylesheet"/>

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
        .checkbox-wrapper{
margin-right: 130px;
} }
.left-area{text-align: right;}
.mybtn1{
margin-right: 50px;
}

.left-area3 .heading{
    color: #143250;
        font-size: 15px;
            font-weight: 600;
}
.left-area1 .heading{
    color: #143250;
        font-size: 15px;
            font-weight: 600;
}
@media screen and (max-width: 400px) {
    
    
    
    .left-area2 .heading{
      font-size: 15px;
            font-weight: 600;
}
.links .a::after{
    right: -80px;
}
.left-area2{
     
     
}

}

@media screen and (min-width: 1024px) {
    .left-area2 .heading{
      font-size: 15px;
            font-weight: 600;
}
.left-area2{
     margin-left: 390;
     
}
.left-area{
    margin-left: 480;
}
}
.addProductSubmit-btn{
         margin-right: 25px;
}
.addProductSubmit-btn1{
        margin-right: 50px;
    width: 200px;
    height: 40;
}
.set-gallery{
     margin-right: 50px;
}

.mr-breadcrumb{
        margin-right: 15;
}
</style>
@endif
	<div class="content-area">
		<div class="mr-breadcrumb">
			<div class="row">
				<div class="col-lg-12">
						<h4 class="heading">{{ __('Physical Product') }} <a class="add-btn" href="{{ route('vendor-prod-types') }}"><i class="fas fa-arrow-left"></i> {{ __('Back') }}</a></h4>
						<ul class="links">
							<li>
								<a href="{{ route('vendor.dashboard') }}">{{ __('Dashboard') }} </a>
							</li>
						<li>
							<a href="javascript:;">{{ __('Products') }} </a>
						</li>
						<li>
							<a href="{{ route('vendor-prod-index') }}">{{ __('All Products') }}</a>
						</li>
							<li>
								<a href="{{ route('vendor-prod-types') }}">{{ __('Add Product') }}</a>
							</li>
							<li>
								<a href="{{ route('vendor-prod-create','physical') }}">{{ __('Physical Product') }}</a>
							</li>
						</ul>
				</div>
			</div>
		</div>
			<form id="geniusform" action="{{route('vendor-prod-store')}}" method="POST" enctype="multipart/form-data">
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
													<div class="left-area2">
															<h4 class="heading">{{ __('Product Name') }}* </h4>
															<p class="sub-heading">{{ __('(In English)') }}</p>
													</div>
												</div>
												<div class="col-lg-12">
													<input type="text" class="input-field" placeholder="{{ __('Enter Product Name') }}" name="name" required="">
												</div>
											</div>

											<div class="row">
												<div class="col-lg-12">
													<div class="left-area2">
															<h4 class="heading">{{ __('Product Name') }}* </h4>
															<p class="sub-heading">{{ __('(In Arabic)') }}</p>
													</div>
												</div>
												<div class="col-lg-12">
													<input type="text" class="input-field" placeholder="{{ __('Enter Product Name') }}" name="name_ar" required="">
												</div>
											</div>

											<div class="row">
												<div class="col-lg-12">
												    @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													    	<div class="left-area">
													    	    @endif
															<h4 class="heading">{{ __('Product Name') }}* </h4>
															<p class="sub-heading">{{ __('(In Kurdish)') }}</p>
													</div>
												</div>
												<div class="col-lg-12">
													<input type="text" class="input-field" placeholder="{{ __('Enter Product Name') }}" name="name_ku" required="">
												</div>
											</div>

											<div class="row">
												<div class="col-lg-12">
												     @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
														<h4 class="heading">
															{{ __('Product Description') }}*
														</h4>
													</div>
												</div>
												<div class="col-lg-12">
													<div class="text-editor">
														<textarea class="nic-edit-p" id="productDescription" rows="5" cols="90" style="width: 100%;" name="details"></textarea>
													</div>
												@if(auth()->user()->hasNonBasicSubscription())
													<button type="button" style="min-width: 250px;" onclick="generateDescription()" class="addProductSubmit-btn">{{ __('Generate Description with AI') }}</button>
                                                @endif
													<script>
													function generateDescription() {
														// Get product name from input field
														var productName = document.getElementById("productName").value;

														// Create a new XMLHttpRequest object
														var xhr = new XMLHttpRequest();

														// Define the callback function to handle the response
														xhr.onreadystatechange = function() {
															if (xhr.readyState === XMLHttpRequest.DONE) {
																if (xhr.status === 200) {
																	// Update textarea with the generated description
																	document.getElementById("productDescription").value = JSON.parse(xhr.responseText).description;
																} else {
																	console.error('Error:', xhr.statusText);
																}
															}
														};

														// Open a POST request to the /generate-description route
														xhr.open("POST", "/generate-description", true);

														// Set the Content-Type and CSRF token headers
														xhr.setRequestHeader("Content-Type", "application/json");
														xhr.setRequestHeader("X-CSRF-TOKEN", "{{ csrf_token() }}");

														// Send the request with the product name as JSON
														xhr.send(JSON.stringify({ name: productName }));
													}
													</script>
												</div>
											</div>
                                            {{-- --------- --}}
                                            <div class="row">
												<div class="col-lg-12">
													  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
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
												  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
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
                                            {{-- --- --}}
											<div class="row">
												<div class="col-lg-12">
												  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
															<h4 class="heading">{{ __('Product Sku') }}* </h4>
													</div>
												</div>
												<div class="col-lg-12">
													<input type="text" class="input-field" placeholder="{{ __('Enter Product Sku') }}" name="sku" required="" value="{{ Str::random(3).substr(time(), 6,8).Str::random(3) }}">
												</div>
											</div>


											<div class="row">
												<div class="col-lg-12">
												  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
														<h4 class="heading">{{ __('Category') }}*</h4>
													</div>
												</div>
												<div class="col-lg-12">
													<select id="cat" name="category_id" required="">
														<option value="">{{ __('Select Category') }}</option>
														@foreach($cats as $cat)
															<option data-href="{{ route('vendor-subcat-load',$cat->id) }}" value="{{ $cat->id }}">{{$cat->name}}</option>
														@endforeach
													</select>
												</div>
											</div>

											<div class="row">
												<div class="col-lg-12">  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
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
												<div class="col-lg-12">  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
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
												  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclick1" name="product_condition_check" type="checkbox" id="product_condition_check" value="1">
															<label for="product_condition_check">{{ __('Allow Product Condition') }}</label>
														</li>
													</ul>
												</div>
											</div>

											<div class="showbox">
												<div class="row">
													<div class="col-lg-12">
													      @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
																<h4 class="heading">{{ __('Product Condition') }}*</h4>
														</div>
													</div>
													<div class="col-lg-12">
															<select name="product_condition">
																<option value="2">{{ __('New') }}</option>
																<option value="1">{{ __('Used') }}</option>
															</select>
													</div>
												</div>
											</div>


											<div class="row">
												<div class="col-lg-12">
													<div class="left-area">

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclick1" name="preordered_check" type="checkbox" id="preorderedCheck" value="1">
															<label for="preorderedCheck">{{ __('Allow Product Preorder') }}</label>
														</li>
													</ul>
												</div>
											</div>


											<div class="showbox">
												<div class="row">
													<div class="col-lg-12">
													  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
																<h4 class="heading">{{ __('Product Preorder') }}*</h4>
														</div>
													</div>
													<div class="col-lg-12">
															<select name="preordered">
																<option value="1">{{ __('Sale') }}</option>
																<option value="2">{{ __('Preordered') }}</option>
															</select>
													</div>
												</div>
											</div>


											<div class="row">
												<div class="col-lg-12">  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclick1" name="minimum_qty_check" type="checkbox" id="check111" value="1">
															<label for="check111">{{ __('Allow Minimum Order Qty') }}</label>
														</li>
													</ul>
												</div>
											</div>


											<div class="showbox">
												<div class="row">
													<div class="col-lg-12">
														<div class="left-area">
															<h4 class="heading">{{ __('Product Minimum Order Qty') }}* </h4>
														</div>
													</div>
													<div class="col-lg-12">
														<input type="number" class="input-field" min="1"
															placeholder="{{ __('Minimum Order Qty') }}" name="minimum_qty">
													</div>
												</div>

											</div>


											<div class="row">
												<div class="col-lg-12">
												  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclick1" name="shipping_time_check" type="checkbox" id="check1" value="1">
															<label for="check1">{{ __('Allow Estimated Shipping Time') }}</label>
														</li>
													</ul>
												</div>
											</div>



											<div class="showbox">
												<div class="row">
													<div class="col-lg-12">
													  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
															<h4 class="heading">{{ __('Product Estimated Shipping Time') }}* </h4>
														</div>
													</div>
													<div class="col-lg-12">
														<input type="text" class="input-field" placeholder="{{ __('Estimated Shipping Time') }}" name="ship">
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-lg-12">
												  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclickc" name="color_check" type="checkbox" id="check3" value="1">
															<label for="check3">{{ __('Allow Product Colors') }}</label>
														</li>
													</ul>
												</div>
											</div>

											<div class="showbox">

												<div class="row">
														<div  class="col-lg-12">
														  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
																<h4 class="heading">
																	{{ __('Product Colors') }}*
																</h4>
																<p class="sub-heading">
																	{{ __('(Choose Your Favorite Colors)') }}
																</p>
															</div>
														</div>
														<div  class="col-lg-12">
															<div class="select-input-color" id="color-section">
																<div class="color-area">
																	<span class="remove color-remove"><i class="fas fa-times"></i></span>
																	<div class="input-group colorpicker-component cp">
																	  <input type="text" name="color_all[]" class="input-field cp tcolor"/>
																	  <span class="input-group-addon"><i></i></span>
																	</div>
																 </div>
															</div>
														<a href="javascript:;" id="color-btn" class="add-more mt-4 mb-3"><i class="fas fa-plus"></i>{{ __('Add More Color') }} </a>
													</div>
												</div>

											</div>

											<div class="row">
												<div class="col-lg-12">
													<div class="left-area">

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclicks" name="color_check" type="checkbox" id="tcheck" value="1">
															<label for="tcheck">{{ __('Allow Product Sizes') }}</label>
														</li>
													</ul>
												</div>
											</div>

											<div class="showbox">
												<div class="row">
														<div  class="col-lg-4">
															  @if($curr_lang->rtl == 1)
													<div class="left-area3">
													    @else
													<div class="left-area">
													        @endif
																<h4 class="heading">
																	{{ __('Product Size') }}*
																</h4>
																<p class="sub-heading">
																	{{ __('(eg. S,M,L,XL,XXL,3XL,4XL)') }}
																</p>
															</div>
														</div>
														<div  class="col-lg-12">
																<div class="select-input-tsize" id="tsize-section">
																	<div class="tsize-area">
																		<span class="remove tsize-remove"><i class="fas fa-times"></i></span>
																		<input  type="text" class="input-field tsize" placeholder="{{ __('Enter Product Size') }}"  >

																	 </div>
																</div>
															<a href="javascript:;" id="tsize-btn" class="add-more mt-4 mb-3"><i class="fas fa-plus"></i>{{ __('Add More Size') }} </a>
														</div>
												</div>

											</div>

											<div class="row">
												<div class="col-lg-12">
													<div class="left-area">

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclick1" name="whole_check" type="checkbox" id="whole_check" value="1">
															<label for="whole_check">{{ __('Allow Product Whole Sell') }}</label>
														</li>
													</ul>
												</div>
											</div>

											<div class="showbox">
												<div class="row">
													<div class="col-lg-12">
														<div class="left-area">

														</div>
													</div>
													<div class="col-lg-12">
														<div class="featured-keyword-area">
															<div class="feature-tag-top-filds" id="whole-section">
																<div class="feature-area">
																	<span class="remove whole-remove"><i class="fas fa-times"></i></span>
																	<div class="row">
																		<div class="col-lg-6">
																		<input type="number" name="whole_sell_qty[]" class="input-field" placeholder="{{ __('Enter Quantity') }}" min="0">
																		</div>

																		<div class="col-lg-6">
																		<input type="number" name="whole_sell_discount[]" class="input-field" placeholder="{{ __('Enter Discount Percentage') }}" min="0" />
																		</div>
																	</div>
																</div>
															</div>

															<a href="javascript:;" id="whole-btn" class="add-fild-btn"><i class="icofont-plus"></i> {{ __('Add More Field') }}</a>
														</div>
													</div>
												</div>
											</div>


											<div class="row">
												<div class="col-lg-12">
													<div class="left-area">

													</div>
												</div>
												<div class="col-lg-12">
													<ul class="list">
														<li>
															<input class="checkclick1" name="measure_check" type="checkbox" id="measure_check" value="1">
															<label for="measure_check">{{ __('Allow Product Measurement') }}</label>
														</li>
													</ul>
												</div>
											</div>


											<div class="showbox">
												<div class="row">
													<div class="col-lg-6">
													  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
															<h4 class="heading">{{ __('Product Measurement') }}*</h4>
														</div>
													</div>
													<div class="col-lg-12">
														<select id="product_measure">
															<option value="">{{ __('None') }}</option>
															<option value="Gram">{{ __('Gram') }}</option>
															<option value="Kilogram">{{ __('Kilogram') }}</option>
															<option value="Litre">{{ __('Litre') }}</option>
															<option value="Pound">{{ __('Pound') }}</option>
															<option value="Custom">{{ __('Custom') }}</option>
														</select>
													</div>
													{{-- <div class="col-lg-1"></div> --}}
													<div class="col-lg-12 hidden" id="measure">
														<input name="measure" type="text" id="measurement" class="input-field" placeholder="{{ __('Enter Unit') }}">
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-lg-12">
													<div class="left-area">

													</div>
												</div>
												<div class="col-lg-12">
																	<ul class="list">
																		<li>
																			<input name="stock_check" class="stock-check" type="checkbox" id="size-check" value="1">
																			<label for="size-check" class="stock-text">{{ __('Manage Stock') }}</label>
																		</li>
																	</ul>
																</div>
											</div>


										<div class="showbox" id="size-display">
																<div class="row">
																		<div  class="col-lg-12">
																		</div>
																		<div  class="col-lg-12">
																			<div class="product-size-details" id="size-section">
																				<div class="size-area">
																					<span class="remove size-remove"><i class="fas fa-times"></i></span>
																					<div  class="row">
																						<div class="col-md-3 col-sm-6">
																							<label>
																								{{ __('Size Name') }} :
																								<span>
																									{{ __('(eg. S,M,L,XL,3XL,4XL)') }}
																								</span>
																							</label>
																							<select name="size[]" class="input-field size-name"></select>
																						</div>
																						<div class="col-md-3 col-sm-6">
																							<label>
																								{{ __('Size Qty') }} :
																								<span>
																									{{ __('(Quantity of this size)') }}
																								</span>
																							</label>
																							<input type="number" name="size_qty[]" class="input-field" placeholder="{{ __('Size Qty') }}" value="1" min="1">
																						</div>
																						<div class="col-md-3 col-sm-6">
																							<label>
																								{{ __('Size Price') }} :
																								<span>
																									{{ __('(Added with base price)') }}
																								</span>
																							</label>
																							<input type="number" name="size_price[]" class="input-field" placeholder="{{ __('Size Price') }}" value="0" min="0">
																						</div>
																						<div class="col-md-3 col-sm-6">
																							<label>
																								{{ __('Size Color') }} :
																								<span>
																									{{ __('(Select color of this size)') }}
																								</span>
																							</label>
																							<select name="color[]" class="input-field color-name"></select>
																						</div>
			
																					</div>
																				</div>
																			</div>
			
																			<a href="javascript:;" id="size-btn" class="add-more"><i class="fas fa-plus"></i>{{ __('Add More') }} </a>
																		</div>
																</div>
															</div>

											<div class="row" id="default_stock">
												<div class="col-lg-12">
												  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
														<h4 class="heading">{{ __('Product Stock') }}*</h4>
														<p class="sub-heading">{{ __('(Leave Empty will Show Always Available)') }}</p>
													</div>
												</div>
												<div class="col-lg-12">
													<input name="stock"  type="number" class="input-field" placeholder="e.g 20" value="" min="0">
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
											  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
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
											  @if($curr_lang->rtl == 1)
													<div class="left-area2">
													    @else
													<div class="left-area">
													        @endif
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

										<input type="hidden" name="type" value="Physical">

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
											{{-- <div class="row"> --}}
												{{-- <div class="col-lg-12">
													<div class="left-area">
														<h4 class="heading">{{ __('Feature Image') }} *</h4>
													</div>
												</div>
												<div class="col-lg-12">
														<div class="panel panel-body">
															<div class="span4 cropme text-center" id="landscape"
																style="width: 100%; height: 285px; border: 1px dashed #ddd; background: #f1f1f1;">
																<a href="javascript:;" id="crop-image" class=" mybtn1" style="">
																	<i class="icofont-upload-alt"></i> {{ __('Upload Image Here') }}
																</a>
															</div>
														</div>
												</div> --}}
											{{-- </div> --}}
											<input type="hidden" id="feature_photo" name="photo" value="">
											<input type="file" name="gallery[]" class="hidden" id="uploadgallery" accept="image/*"multiple>
											{{-- <div class="row mb-4"> --}}
												{{-- <div class="col-lg-12 mb-2"> --}}
													{{-- <div class="left-area">
														<h4 class="heading">
															{{ __('Product Gallery Images') }} *
														</h4>
													</div> --}}
												{{-- </div> --}}

												{{-- <div class="col-lg-12">
													<a href="#" class="set-gallery" data-toggle="modal" data-target="#setgallery">
														<i class="icofont-plus"></i> {{ __('Set Gallery') }}
													</a>
												</div> --}}
											{{-- </div> --}}

											<div class="row" >
												<div class="col-lg-12">
												    @if($curr_lang->rtl == 1)
													<div class="left-area1">
													    @else
													    	<div class="left-area">
													    	    @endif
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
											{{-- ------------------- --}}

											<div class="row">
												<div class="col-lg-12">
												
												    @if($curr_lang->rtl == 1)
													<div class="left-area1">
													    @else
													    	<div class="left-area">
													    	    @endif
													    	    
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
													
												    @if($curr_lang->rtl == 1)
													<div class="left-area1">
													    @else
													    	<div class="left-area">
													    	    @endif
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
												
												    @if($curr_lang->rtl == 1)
													<div class="left-area1">
													    @else
													    	<div class="left-area">
													    	    @endif

													</div>
												</div>
												<div class="col-lg-12">
													<div class="featured-keyword-area">
														<div class="heading-area">
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
											
												    @if($curr_lang->rtl == 1)
													<div class="left-area1">
													    @else
													    	<div class="left-area">
													    	    @endif
													<h4 class="heading">{{ __('Tags') }} *</h4>
												</div>
												</div>
												<div class="col-lg-12">
												<ul id="tags" class="myTags">
												</ul>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-12">
												
												    @if($curr_lang->rtl == 1)
													<div class="left-area1">
													    @else
													    	<div class="left-area">
													    	    @endif
														<h4 class="heading">{{ __('Feature Image') }} *</h4>
													</div>
												</div>
												{{-- <div class="col-lg-12">
														<div class="panel panel-body">
															<div class="span4 cropme text-center" id="landscape"
																style="width: 100%; height: 285px; border: 1px dashed #ddd; background: #f1f1f1;">
																<a href="javascript:;" id="crop-image" class=" mybtn1" style="">
																	<i class="icofont-upload-alt"></i> {{ __('Upload Image Here') }}
																</a>
															</div>
														</div>
												</div> --}}
												<div class="col-lg-12">
													<div class="panel panel-body">
											
														<div class="span4 cropme text-center" id="image-upload-container"
															 style="width: 100%; height: 285px; border: 1px dashed #ddd; background: #f1f1f1;">
															<a href="javascript:;" id="crop-image" class="mybtn1" style=" margin-top: 120px;">
																<i class="icofont-upload-alt "></i> {{ __('Upload Image Here') }}
															</a>
															{{-- <input type="file" id="image-upload" style="display: none;"> --}}
															<img id="preview-image" style="display: none; max-width: 100%; height: auto;" />
														</div>
													</div>
												</div>


											</div>
											<div class="row mb-4">
												<div class="col-lg-12 mb-2" style="text-align: center;margin-top: 20px;">
													<div style="text-align: center;">
                                                        <h4 class="heading" style="font-size: 17px">
															{{ __('Image Size (300*282)') }}
														</h4>
														<h4 class="heading" style="font-size: 17px">
															{{ __('Product Gallery Images') }} *
														</h4>
													</div>
												</div>

											</div>
											  <div class="row ">

												<div class="col-lg-12" style="text-align: center;margin-top: 25px;">
													<a href="#" class="set-gallery addProductSubmit-btn" data-toggle="modal" data-target="#setgallery" >
														<i class="icofont-plus"></i> {{ __('Set Gallery') }}
													</a>
												</div>
                                                  <style>
													@media (max-width: 767px) {
														.col-5 {
															margin-left: 25%;
														}
															.col-lg-7 {
														    	margin-left: 15%;
														}
													}

	                                            @media (max-width: 400px) {
														.col-5 {
															margin-left: 22.5%;
														}
															.col-lg-7 {
														    	margin-left: 10%;
														}
													
													}
													@media (min-width: 992px) {
                                                        .col-5 {
                                                        margin-left: 19%;
                                                         }
                                                     }
												</style>
												
												<div class="row">
													<div class="col-5 offset-2">
													    @if($curr_lang->rtl == 1)
														<button class="addProductSubmit-btn1" type="submit">{{ __('Create Product') }}</button>
														@else
															<button class="addProductSubmit-btn" type="submit">{{ __('Create Product') }}</button>
															@endif
													</div>
													<div class="col-lg-7 offset-1">
													<input type="hidden" id="removedbgphoto" name="removedbgphoto" value="">
													@if(auth()->user()->hasNonBasicSubscription())
													<button type="button" style="min-width: 250px;" onclick="removeBackground()" 
													class="addProductSubmit-btn">{{ __('Save & Remove Background with AI') }}</button>
													@endif
												</div>


												</div>


										</div>
										{{-- moustaf --}}
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
					<h5 class="modal-title" id="exampleModalCenterTitle">{{ __('Image Gallery') }}</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="top-area">
						<div class="row">
							<div class="col-sm-6 text-right">
								<div class="upload-img-btn">
											<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i>{{ __('Upload File') }}</label>
								</div>
							</div>
							<div class="col-sm-6">
								<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> {{ __('Done') }}</a>
							</div>
							<div class="col-sm-12 text-center">( <small>{{ __('You can upload multiple Images.') }}</small> )</div>
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

<script type="text/javascript">

(function($) {
		"use strict";

// Gallery Section Insert

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

// Gallery Section Insert Ends

})(jQuery);

</script>

<script type="text/javascript">

(function($) {
		"use strict";

$('.cropme').simpleCropper();

})(jQuery);


$(document).on('click','#size-check',function(){
	if($(this).is(':checked')){
		$('#default_stock').addClass('d-none')
	}else{
		$('#default_stock').removeClass('d-none');
	}
})

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
