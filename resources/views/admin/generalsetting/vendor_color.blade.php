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
       .row .col-lg-6{
                margin-left: 50px;
        }
    }
    </style>
    
    @else
    
    @endif

<div class="content-area">
              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading">{{ __('Vendor Store Default Background') }}</h4>
                    <ul class="links">
                      <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ __('Vendors') }}</a>
                      </li>
                      <li>
                        <a href="{{ route('admin-gs-contents') }}">{{ __('Vendor Store Default Background') }}</a>
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
                        <form action="{{ route('admin-gs-update') }}" id="geniusform" method="POST" enctype="multipart/form-data">
                          @csrf

                        @include('alerts.admin.form-both')  


                        <div class="row justify-content-center">
                          <div class="col-lg-3">
                            <div class="left-area">
                                <h3 class="heading">{{ __('Set Background') }} *</h3>
                                <small>{{__('(This background will be displayed if vendor dose not set his / her store background)')}}</small>
                            </div>
                          </div>
                          {{-- moustaf --}}
                          <div class="col-lg-6">
                            <div class="form-group"> 
                                <div class="input-group colorpicker-component cp">
                                    <input type="text" class="input-field color-field form-control cp" name="colors" value="{{ $gs->colors }}" />
                                    <span class="input-group-addon"><i></i></span>
                                </div>
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
            <script src="path/to/colorpicker.js"></script>



          
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/3.2.0/js/bootstrap-colorpicker.min.js"></script>

<script>
    $(function() {
        $('.colorpicker-component').colorpicker();
    });
</script>

@endsection
