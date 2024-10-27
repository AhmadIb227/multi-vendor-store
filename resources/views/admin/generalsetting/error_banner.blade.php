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
     @media (max-width: 767px) {
    .img-upload #image-preview {
    width: 240px;
    height: 240px;
    border: 1px dashed #000;
    color: #ecf0f1;
    position: relative;
    background-repeat: no-repeat !important;
    background-position: center !important;

           margin-right: -50px;

    }
}
.add-product-content1 .product-description .body-area .addProductSubmit-btn {
       margin-right: -21px;
}
   @media (max-width: 767px) {
    .img-upload #image-preview input, .img-upload #image-preview label, .img-upload #image-preview input {
        top: 100%;
        margin-top: -40px;
        margin-left: 110px;
        /* margin-right: 50px; */
    }
}
    .addProductSubmit-btn {
        margin-right: 50px;

}
    </style>
    
    @else
    
    @endif
            <div class="content-area">
              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading">{{ __('Error Page Banner') }} </h4>
                      <ul class="links">
                        <li>
                          <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                          <a href="javascript:;">{{ __('Home Page Settings') }} </a>
                        </li>
                        <li>
                          <a href="javascript:;">{{ __('Error Page Banner') }} </a>
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
                      <form id="geniusform" action="{{ route('admin-gs-update') }}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}

                        @include('alerts.admin.form-both')  

                                    <div class="row">
                                      <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading"> {{ __('Banner Image 404') }} *</h4>
                                            <small>{{ __('(Preferred Size: 600 X 600 Pixel)') }}</small>
                                        </div>
                                      </div>
                                      <div class="col-lg-7">
                                        <div class="img-upload">
                                            <div id="image-preview" class="img-preview" style="background: url({{ $gs->error_banner_404 ? asset('assets/images/'.$gs->error_banner_404):asset('assets/images/noimage.png') }});">
                                                <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __('Upload Image') }}</label>
                                                <input type="file" name="error_banner_404" class="img-upload" id="image-upload">
                                              </div>

                                        </div>
                                      </div>
                                    </div>


                                    <div class="row">
                                      <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading"> {{ __('Banner Image 500') }} *</h4>
                                            <small>{{ __('(Preferred Size: 600 X 600 Pixel)') }}</small>
                                        </div>
                                      </div>
                                      <div class="col-lg-7">
                                        <div class="img-upload">
                                            <div id="image-preview" class="img-preview" style="background: url({{ $gs->error_banner_500 ? asset('assets/images/'.$gs->error_banner_500):asset('assets/images/noimage.png') }});">
                                                <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __('Upload Image') }}</label>
                                                <input type="file" name="error_banner_500" class="img-upload" id="image-upload">
                                              </div>

                                        </div>
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