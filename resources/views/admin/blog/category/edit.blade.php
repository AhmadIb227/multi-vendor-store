@extends('layouts.load')
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
.modal-body{
     direction: ltr;
}
    @media screen and (max-width: 767px) {
        .form-control {
                    direction: ltr;
    }
.content-area {
    margin-right: 5px;
    width: 100%;
    padding: 1px 0px 0px;
    overflow: hidden;
}
    }
 @media (max-width: 767px) {
    .img-upload #image-preview input, .img-upload #image-preview label, .img-upload #image-preview input {
        top: 100%;
        margin-right: -10px;
        left: 100px;
        margin-top: 10px;
    }
}  
    </style>
    
    @else
    
    @endif
						<div class="content-area">
							<div class="add-product-content1">
								<div class="row">
									<div class="col-lg-12">
										<div class="product-description">
											<div class="body-area">
											@include('alerts.admin.form-error') 
											<form id="geniusformdata" action="{{route('admin-cblog-update',$data->id)}}" method="POST" enctype="multipart/form-data">
												
												{{csrf_field()}}
											

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Name') }} *</h4>
																<p class="sub-heading">{{ __('(In English)') }}</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="name" placeholder="{{ __('Name') }}" required="" value="{{$data->name}}">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Slug') }} *</h4>
																<p class="sub-heading">{{ __('(In English)') }}</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="slug" placeholder="{{ __('Slug') }}" required="" value="{{$data->slug}}">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
															
														</div>
													</div>
													<div class="col-lg-7">
														<button class="addProductSubmit-btn" type="submit">{{ __('Save') }}</button>
													</div>
												</div>
											</form>


											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

@endsection