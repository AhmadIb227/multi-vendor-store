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
<style>
    /* تصميم عام */
.content-area {
  background-color: #f8f9fa;
  padding: 20px;
}



.heading {
  font-size: 24px;
  font-weight: 600;
  color: #333;
}

.links {
  list-style: none;
  padding: 0;
  margin: 15px 0;
}

.links li {
  display: inline;
  margin-right: 15px;
}

.links a {
  color: #007bff;
  text-decoration: none;
  font-weight: 500;
}

.add-product-content1 {
  margin-top: 30px;
}

.form-section {
  background-color: #fff;
  padding: 30px;
  border-radius: 8px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.switch-group {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.control-label {
  font-size: 18px;
  color: #333;
}

/* تصميم زر التبديل Switch */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  transition: 0.4s;
  border-radius: 34px;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  transition: 0.4s;
  border-radius: 50%;
}

input:checked + .slider {
  background-color: #2d3274;
}

input:checked + .slider:before {
  transform: translateX(26px);
}

/* تصميم الزر عند hover */
input:checked:hover + .slider {
  background-color: #1e88e5;
}

/* تصميم الزر submit */
.submit-btn {
  background-color: #007bff;
  color: #fff;
  padding: 10px 30px;
  border-radius: 30px;
  border: none;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.submit-btn:hover {
  background-color: #0056b3;
}

</style>
<div class="content-area">
  <div class="mr-breadcrumb">
    <div class="row">
      <div class="col-lg-12">
        <h4 class="heading">{{ __('Customize Menu Links') }}</h4>
        <ul class="links">
          <li>
            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
          </li>
          <li>
            <a href="javascript:;">{{ __('Menu Page Settings') }}</a>
          </li>
          <li>
            <a href="{{ route('admin-ps-menu-links') }}">{{ __('Customize Menu Links') }}</a>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <div class="add-product-content1">
    <div class="row">
      <div class="col-lg-12">
        <div class="product-description">
          <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat center center rgba(45, 45, 45, 0.5);"></div>
          
          <div class="form-section p-4 bg-white shadow-sm rounded">
            <form id="geniusform" action="{{ route('admin-ps-menuupdate') }}" method="POST" enctype="multipart/form-data">
              @csrf

              @include('alerts.admin.form-both')

              <div class="row justify-content-center">
                <div class="col-lg-5 mb-4">
                  <div class="switch-group d-flex justify-content-between align-items-center">
                    <label class="control-label" for="home">{{ __('Product') }} *</label>
                    <label class="switch">
                      <input type="checkbox" name="home" value="1" {{$data->home==1?"checked":""}}>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="col-lg-5 mb-4">
                  <div class="switch-group d-flex justify-content-between align-items-center">
                    <label class="control-label" for="blog">{{ __('Blog') }} *</label>
                    <label class="switch">
                      <input type="checkbox" name="blog" value="1" {{$data->blog==1?"checked":""}}>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>
              </div>

              <div class="row justify-content-center">
                <div class="col-lg-5 mb-4">
                  <div class="switch-group d-flex justify-content-between align-items-center">
                    <label class="control-label" for="faq">{{ __('Faq') }} *</label>
                    <label class="switch">
                      <input type="checkbox" name="faq" value="1" {{$data->faq==1?"checked":""}}>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>

                <div class="col-lg-5 mb-4">
                  <div class="switch-group d-flex justify-content-between align-items-center">
                    <label class="control-label" for="contact">{{ __('Contact Us') }} *</label>
                    <label class="switch">
                      <input type="checkbox" name="contact" value="1" {{$data->contact==1?"checked":""}}>
                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>
              </div>

              <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                  <button type="submit" style="background-color: #2d3274;" class="submit-btn btn   mt-4 px-5">{{ __('Submit') }}</button>
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
