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
											<form id="geniusformdata" action="{{ route('admin-user-edit',$data->id) }}" method="POST" enctype="multipart/form-data">
												{{csrf_field()}}

						                        <div class="row">
						                          <div class="col-lg-4">
						                            <div class="left-area">
						                                <h4 class="heading">{{ __("Customer Profile Image") }} *</h4>
						                            </div>
						                          </div>
						                          <div class="col-lg-7">
						                            <div class="img-upload">
						                            	@if($data->is_provider == 1)
						                                <div id="image-preview" class="img-preview" style="background: url({{ $data->photo ? asset($data->photo):asset('assets/images/noimage.png') }});">
						                            	@else
						                                <div id="image-preview" class="img-preview" style="background: url({{ $data->photo ? asset('assets/images/users/'.$data->photo):asset('assets/images/noimage.png') }});">
						                                @endif
						                                @if($data->is_provider != 1)
						                                    <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __("Upload Image") }}</label>
						                                    <input type="file" name="photo" class="img-upload" id="image-upload">
						                                @endif
						                                  </div>
						                                  <p class="text">{{ __("Prefered Size: (600x600) or Square Sized Image") }}</p>
						                            </div>
						                          </div>
						                        </div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("Name") }} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="name" placeholder="{{ __("User Name") }}" required="" value="{{ $data->name }}">
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("Email") }} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="email" class="input-field" name="email" placeholder="{{ __("Email Address") }}" value="{{ $data->email }}">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("Phone") }} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="phone" placeholder="{{ __("Phone Number") }}" required="" value="{{ $data->phone }}">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("Address") }} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="address" placeholder="{{ __("Address") }}" required="" value="{{ $data->address }}">
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("City") }} </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="city" placeholder="{{ __("City") }}" value="{{ $data->city }}">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("State") }} </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="state" placeholder="{{ __("State") }}" value="{{ $data->state }}">
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("Country") }} </h4>
														</div>
													</div>
													<div class="col-lg-7">
                                                        <select class="input-field" name="country" required>
                                                            <option value="">{{ __('Select Country') }}</option>
                                                            @foreach (DB::table('countries')->get() as $dt)
                                                                <option value="{{ $dt->country_name }}" {{ $data->country == $dt->country_name ? 'selected' : '' }}>
                                                                    {{ $dt->country_name }}
                                                                </option>		
                                                             @endforeach
                                                        </select>
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("Phone Number2") }} </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="Phone Number2" placeholder="{{ __("Phone Number2") }}" value="{{ $data->fax }}">
													</div>
												</div>


												{{-- <div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __("Postal Code") }} </h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="text" class="input-field" name="zip" placeholder="{{ __("Postal Code") }}" value="{{ $data->zip }}">
													</div>
												</div> --}}


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{__('Password')}} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="password" class="input-field" name="password" placeholder="{{__('Enter Password')}}" value="">
													</div>
												</div>


						                        <div class="row">
						                          <div class="col-lg-4">
						                            <div class="left-area">
						                              
						                            </div>
						                          </div>
						                          <div class="col-lg-7">
						                            <button class="addProductSubmit-btn" type="submit">{{ __("Save") }}</button>
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