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
        .add-product-content1 .product-description .body-area {
    padding: 30px 10px 30px 30px;
}
.add-product-content1 .product-description .body-area .input-field {
    margin-bottom: 0px !important;
           direction: ltr;
}
.add-product-content1 .product-description .body-area .addProductSubmit-btn {
     float: right;
      margin-right: 55px;
}
    }
    </style>
    
    @else
    
    @endif

<div class="content-area">
              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading">{{ __('Google Analytics') }}</h4>
                    <ul class="links">
                      <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ __('SEO Tools') }}</a>
                      </li>
                      <li>
                        <a href="{{ route('admin-seotool-analytics') }}">{{ __('Google Analytics') }}</a>
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
                        <form id="geniusform" action="{{ route('admin-seotool-analytics-update') }}" method="POST" enctype="multipart/form-data">
                          {{csrf_field()}}
                        @include('alerts.admin.form-both')  

                        <div class="row justify-content-center">
                          <div class="col-lg-3">
                            <div class="left-area">
                              <h4 class="heading">
                                  {{ __('Google Analytics ID') }} *
                              </h4>
                            </div>
                          </div>
                          <div class="col-lg-6">
                              <div class="tawk-area">
                                <input class="input-field" name="google_analytics" type="text" placeholder="{{ __('Google Analytics ID') }} " value="{{ $tool->google_analytics }}">
                              </div>
                          </div>
                        </div>

                        <div class="row justify-content-center">
                            <div class="col-lg-3">
                              <div class="left-area">
                                <h4 class="heading">
                                    {{ __('Facebook Pixel ID') }} *
                                </h4>
                              </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="tawk-area">
                                  <input class="input-field" name="facebook_pixel" type="text" placeholder="{{ __('Facebook Pixel ID') }} " value="{{ $tool->facebook_pixel }}">
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
                      </div>
                     </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>

@endsection