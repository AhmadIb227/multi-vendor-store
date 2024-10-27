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
<style>
    @media screen and (max-width: 767px) {
      .nic-edit-p{
        width: 200px;
        height: 200px;
  }
    }
  .nic-edit-p{
    width: 500px;
    height: 300px;
  
  }
</style>
 @if($curr_lang->rtl == 1)
<style>
    @media screen and (max-width: 767px) {
        .content-area {
    margin-right: 35px;
            
        }
    
    .add-product-content1 .product-description .body-area .addProductSubmit-btn {
    float: right;
    margin-right: 65px;
}
.add-product-content1 .product-description .body-area .input-field {
    margin-bottom: 0px !important;
    text-align: end;
}.add-product-content1 .product-description .body-area {
    padding: 30px 10px 30px 30px;
}
.img-upload #image-preview {
        margin-right: 30px;
}}
@media (max-width: 767px) {
    .img-upload #image-preview input, .img-upload #image-preview label, .img-upload #image-preview input {
        top: 100%;
        margin-left: 120px;
        left: 0px;
        margin-top: -40px;
    }
}
    </style>
    
    @else
    
    @endif
            <div class="content-area">


              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading">{{ __('Edit Page') }} <a class="add-btn" href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i> {{ __("Back") }}</a></h4>
                      <ul class="links">
                        <li>
                          <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                          <a href="javascript:;">{{ __('Menu Page Settings') }} </a>
                        </li>
                        <li>
                          <a href="{{ route('admin-page-index') }}">{{ __('Pages') }}</a>
                        </li>
                        <li>
                          <a href="{{ route('admin-page-edit',$data->id) }}">{{ __('Edit') }}</a>
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

                      @include('alerts.admin.form-both')


                      <form id="geniusform" action="{{route('admin-page-update',$data->id)}}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Title') }} *</h4>
                                <p class="sub-heading">{{ __('(In English)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="title" placeholder="{{ __('Title') }}" value="{{$data->title}}" required="">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Title') }} *</h4>
                                <p class="sub-heading">{{ __('(In Arabic)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="title_ar" placeholder="{{ __('Title') }}" value="{{$data->title_ar}}" required="">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Title') }} *</h4>
                                <p class="sub-heading">{{ __('(In Kurdish)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="title_ku" placeholder="{{ __('Title') }}" value="{{$data->title_ku}}" required="">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Slug') }} *</h4>
                                <p class="sub-heading">{{ __('(In Any Language)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="slug" placeholder="{{ __('Slug') }}" value="{{$data->slug}}" required="">
                          </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                              <div class="left-area">
                                  <h4 class="heading">{{ __('Current Featured Image') }} *</h4>
                              </div>
                            </div>
                            <div class="col-lg-7">
                              <div class="img-upload">
                                  <div id="image-preview" class="img-preview" style="background: url({{ $data->photo ? asset('assets/images/pages/'.$data->photo):asset('assets/images/noimage.png') }});">
                                      <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __('Upload Image') }}</label>
                                      <input type="file" name="photo" class="img-upload" id="image-upload">
                                    </div>
                              </div>

                            </div>
                          </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              <h4 class="heading">
                                   {{ __('Description') }} *
                              </h4>
                              <p class="sub-heading">{{ __('(In English)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <textarea class="nic-edit-p" name="details" placeholder="{{ __('Description') }}">{{ $data->details }}</textarea>
                              <div class="checkbox-wrapper">
                                <input type="checkbox" name="secheck" class="checkclick" id="allowProductSEO">
                                <label for="allowProductSEO">{{ __('Allow Page SEO') }}</label>
                              </div>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              <h4 class="heading">
                                   {{ __('Description') }} *
                              </h4>
                              <p class="sub-heading">{{ __('(In Arabic)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <textarea class="nic-edit-p" name="details_ar" placeholder="{{ __('Description') }}">{{ $data->details_ar }}</textarea>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              <h4 class="heading">
                                   {{ __('Description') }} *
                              </h4>
                              <p class="sub-heading">{{ __('(In Kurdish)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <textarea class="nic-edit-p" name="details_ku" placeholder="{{ __('Description') }}">{{ $data->details_ku }}</textarea>
                          </div>
                        </div>



                        <div class="{{ ($data->meta_tag == null && strip_tags($data->meta_description) == null) ? "showbox":"" }}">
                          <div class="row">
                            <div class="col-lg-4">
                              <div class="left-area">
                                  <h4 class="heading">{{ __('Meta Tags') }} *</h4>
                              </div>
                            </div>
                            <div class="col-lg-7">
                              <ul id="metatags" class="myTags">
                                @foreach (explode(',',$data->meta_tag) as $element)
                                  <li>{{  $element }}</li>
                                @endforeach
                              </ul>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-lg-4">
                              <div class="left-area">
                                <h4 class="heading">
                                    {{ __('Meta Description') }} *
                                </h4>
                              </div>
                            </div>
                            <div class="col-lg-7">
                              <div class="text-editor">
                                <textarea name="meta_description" class="input-field" placeholder="{{ __('Meta Description') }}">{{ $data->meta_description }}</textarea>
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

@section('scripts')
<script type="text/javascript">

(function($) {
		"use strict";

          $("#metatags").tagit({
          fieldName: "meta_tag[]",
          allowSpaces: true
          });

})(jQuery);

</script>
@endsection
