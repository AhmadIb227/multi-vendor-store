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
    @media screen and (max-width: 767px) {
    .add-product-content1 .product-description .body-area {
    padding: 0px 1px 0px 10px;
}
.add-product-content1 .product-description .body-area .addProductSubmit-btn {
    margin-right: 10px;
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
											<form id="geniusformdata" action="{{route('admin-pick-update',$data->id)}}" method="POST" enctype="multipart/form-data">
												{{csrf_field()}}


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Location') }} *</h4>
																<p class="sub-heading">{{ __('(In Any Language)') }}</p>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="location" placeholder="{{ __('Location') }}" required="" value="{{$data->location}}">
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