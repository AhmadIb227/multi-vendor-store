@extends('layouts.vendor')

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
  @media screen and (max-width: 600px) {
       .left-area .heading1{
            margin-right: -160px;
    font-size: 20px;
    margin-left: px;
    width: 300px;
  }
  .content-area{
          margin-right: 35px;

  }
  }
 @media screen and (max-width: 400px) {
     .mr-breadcrumb .links li a::after {
    margin-left: -70px;}
  .content-area{
          margin-right: 35px;

  }
  .heading1{
          margin-left: 45px;
    font-size: 20px;
  }
 }
 </style>
 
 @endif
<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __('Vendor Store Background Color') }}</h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('vendor.dashboard') }}">{{ __('Dashboard') }}</a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('Settings') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('vendor.color.form') }}">{{ __('Background Color') }}</a>
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
                          @if(session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif
                        <form action="{{ route('vendor.background.update') }}" method="POST">
                            @csrf
                            @include('alerts.admin.form-both')
                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        @if($curr_lang->rtl == 1)
                                        <h3 class="heading1">{{ __('Set Background to your store')}}</h3>
                                        @else 
                                           <h3 class="heading">{{ __('Set Background to your store')}}</h3>
                                        @endif
                                    </div>
                                </div><br><br>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <div class="input-group colorpicker-component cp">
                                            <input type="text" class="input-field color-field form-control cp" name="background_color" value="{{ $vendor->background_color }}" />
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area"></div>
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

<style>
    @media (max-width: 767.98px) {
        .mr-breadcrumb .row,
        .add-product-content1 .row,
        .body-area .row {
            text-align: center;
        }

        .heading, .left-area h3, .addProductSubmit-btn {
            display: block;
            margin: 0 auto;
        }
     .col-lg-6{
             left: 40px;
     }
        .form-group {
            display: flex;
            justify-content: center;
        }

        .colorpicker-component {
            display: flex;
            justify-content: center;
        }

        .addProductSubmit-btn {
            width: 100%;
            max-width: 200px;
            text-align: center;
        }
    }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/3.2.0/js/bootstrap-colorpicker.min.js"></script>

<script>
    $(function() {
        $('.colorpicker-component').colorpicker();
    });
</script>
@endsection
