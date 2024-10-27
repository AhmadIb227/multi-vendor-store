@extends('layouts.admin')

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
           .add-product-content1 .product-description .body-area {
    padding: 30px 10px 30px 30px;
}
.add-product-content1 .product-description .body-area .addProductSubmit-btn {
    float: right;
    margin-right: 65px;
}

.add-product-content1 .product-description .body-area .input-field {
    margin-bottom: 0px !important;
    text-align: end;
}
    </style>
    
    @else
    
    @endif
<div class="content-area">
              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading">{{ __('Contact Us') }}</h4>
                    <ul class="links">
                      <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ __('Menu Page Settings') }}</a>
                      </li>
                      <li>
                        <a href="{{ route('admin-ps-contact') }}">{{ __('Contact Us Page') }}</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="add-product-content1 add-product-content2">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">
                        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                        <form id="geniusform" action="{{ route('admin-ps-update') }}" method="POST" enctype="multipart/form-data">
                          @csrf

                        @include('alerts.admin.form-both')

                          <div class="row justify-content-center">
                              <div class="col-lg-3">
                                <div class="left-area">
                                    <h4 class="heading">{{ __('Email') }} *
                                      </h4>
                                </div>
                              </div>
                              <div class="col-lg-6">
                                <input type="email" class="input-field" placeholder="{{ __('Enter Email') }}" name="email" value="{{ $data->email }}">
                              </div>
                            </div>

                            <div class="row justify-content-center">
                              <div class="col-lg-3">
                                <div class="left-area">
                                    <h4 class="heading">{{ __('Website') }} *
                                      </h4>
                                </div>
                              </div>
                              <div class="col-lg-6">
                                <input type="text" class="input-field" placeholder="{{ __('Enter Website') }}" name="site" value="{{ $data->site }}">
                              </div>
                            </div>

                            <div class="row justify-content-center">
                              <div class="col-lg-3">
                                <div class="left-area">
                                    <h4 class="heading">{{ __('Phone') }} *
                                      </h4>
                                </div>
                              </div>
                              <div class="col-lg-6">
                                <input type="text" class="input-field" placeholder="{{ __('Enter Phone') }}" name="phone" value="{{ $data->phone }}">
                              </div>
                            </div>

                            <div class="row justify-content-center">
                              <div class="col-lg-3">
                                <div class="left-area">
                                    <h4 class="heading">{{ __('Phone Number2') }} *
                                      </h4>
                                </div>
                              </div>
                              <div class="col-lg-6">
                                <input type="text" class="input-field" placeholder="{{ __('Enter Phone Number2') }}" name="Phone Number2" value="{{ $data->fax }}">
                              </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                  <div class="left-area">
                                    <h4 class="heading">
                                        {{ __('Street Address') }} *
                                    </h4>
                                  </div>
                                </div>
                                <div class="col-lg-6">
                                      <textarea name="street" class="input-field" placeholder="Enter Street Address"> {{ $data->street }} </textarea>
                                </div>
                              </div>

                          <div class="row justify-content-center">
                              <div class="col-lg-3">
                                <div class="left-area">
                                  <h4 class="heading">
                                      {{ __('Contact Us Email Address') }} *
                                  </h4>
                                </div>
                              </div>
                              <div class="col-lg-6">
                                  <div class="tawk-area">
                                    <textarea name="contact_email"> {{ $data->contact_email }} </textarea>
                                  </div>
                              </div>
                            </div>

                        <div class="row justify-content-center">
                          <div class="col-lg-3">
                            <div class="left-area">

                            </div>
                          </div>
                          <div class="col-lg-6">
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
