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
                      <h4 class="heading">{{ __('Facebook Login') }}</h4>
                    <ul class="links">
                      <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ __('Social Settings') }}</a>
                      </li>
                      <li>
                        <a href="{{ route('admin-social-facebook') }}">{{ __('Facebook Login') }}</a>
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
                        <form action="{{ route('admin-social-update') }}" id="geniusform" method="POST" enctype="multipart/form-data">
                          @csrf

                        @include('alerts.admin.form-both')  

                        <div class="row justify-content-center">
                            <div class="col-lg-3">
                              <div class="left-area">
                                <h4 class="heading">
                                    {{ __('Facebook Login') }}
                                </h4>
                              </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="action-list">
                                    <select class="process select droplinks {{ $data->f_check == 1 ? 'drop-success' : 'drop-danger' }}">
                                      <option data-val="1" value="{{route('admin-social-facebookup',1)}}" {{ $data->f_check == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                      <option data-val="0" value="{{route('admin-social-facebookup',0)}}" {{ $data->f_check == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                    </select>
                                  </div>
                            </div>
                          </div>

                        <div class="row justify-content-center">
                          <div class="col-lg-3">
                            <div class="left-area">
                                <h4 class="heading">{{ __('App ID') }} *</h4>
                                <p class="sub-heading">{{ __('Get Your App ID from developers.facebook.com') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-6">
                            <input type="text" class="input-field" placeholder="{{ __('Enter App ID') }}" name="fclient_id" value="{{ $data->fclient_id }}" required="">
                          </div>
                        </div>

                        <div class="row justify-content-center">
                          <div class="col-lg-3">
                            <div class="left-area">
                                <h4 class="heading">{{ __('App Secret') }} *</h4>
                                <p class="sub-heading">{{ __('Get Your App Secret from developers.facebook.com') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-6">
                            <input type="text" class="input-field" placeholder="{{ __('Enter App Secret') }}" name="fclient_secret" value="{{ $data->fclient_secret }}" required="">
                          </div>
                        </div>


                        <div class="row justify-content-center">
                          <div class="col-lg-3">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Website URL') }} *</h4>
                            </div>
                          </div>
                          <div class="col-lg-6">
                            <input type="text" class="input-field" placeholder="{{ __('Website URL') }}"  value="{{ url('/') }}" readonly="">
                          </div>
                        </div>

                        <div class="row justify-content-center">
                          <div class="col-lg-3">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Valid OAuth Redirect URI') }} *</h4>
                                <p class="sub-heading">{{ __('Copy this url and paste it to your Valid OAuth Redirect URI in developers.facebook.com.') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-6">
                            @php
                            $url = url('/auth/facebook/callback');
                            $url = preg_replace("/^http:/i", "https:", $url);
                            @endphp
                            <input type="text" class="input-field" placeholder="{{ __('Enter Site URL') }}" name="fredirect" value="{{$url}}" readonly>
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