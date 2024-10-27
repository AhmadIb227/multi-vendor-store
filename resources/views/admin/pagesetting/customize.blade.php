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
.control-label {
    font-size: 10px;
    font-family: sans-serif;
    color: #333;
}
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
  background-color: #2d3274; /* اللون المطلوب */
}

input:checked + .slider:before {
  transform: translateX(26px);
}

input:checked:hover + .slider {
  background-color: #262b5f; /* تأثير hover */
}

/* تصميم الزر submit */
.submit-btn {
  background-color: #2d3274;
  color: #fff;
  padding: 10px 30px;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.submit-btn:hover {
  background-color: #262b5f;
}
</style>
<div class="content-area">
  <div class="mr-breadcrumb">
    <div class="row">
      <div class="col-lg-12">
        <h4 class="heading">{{ __('Home Page Customization') }}</h4>
        <ul class="links">
          <li>
            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
          </li>
          <li>
            <a href="javascript:;">{{ __('Home Page Settings') }}</a>
          </li>
          <li>
            <a href="{{ route('admin-ps-customize') }}">{{ __('Home Page Customization') }}</a>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <div class="add-product-content1">
    <div class="row">
      <div class="col-lg-12">
        <div class="product-description">
          <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->admin_loader) }}) no-repeat center center rgba(45, 45, 45, 0.5);"></div>

          <form id="geniusform" action="{{ route('admin-ps-homeupdate') }}" method="POST" enctype="multipart/form-data">
            @csrf
            @include('alerts.admin.form-both')

            <div class="form-section p-4 bg-white shadow-sm rounded">
              <!-- Switches Row 1 -->
              <div class="row justify-content-center mb-4">
                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="slider">{{ __('Slider') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="slider" value="1" {{ $data->slider == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>

                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="arrival_section">{{ __('Arrival Section') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="arrival_section" value="1" {{ $data->arrival_section == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>
              </div>

              <!-- Switches Row 2 -->
              <div class="row justify-content-center mb-4">
                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="category">{{ __('Featured Products') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="category" value="1" {{ $data->category == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>

                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="deal_of_the_day">{{ __('Deal Of The Day') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="deal_of_the_day" value="1" {{ $data->deal_of_the_day == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>
              </div>

              <!-- Switches Row 3 -->
              <div class="row justify-content-center mb-4">
                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="top_big_trending">{{ __('Top Rated, Big Save & Trending') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="top_big_trending" value="1" {{ $data->top_big_trending == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>

                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="partner">{{ __('Partner') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="partner" value="1" {{ $data->partner == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>
              </div>

              <!-- Switches Row 4 -->
              <div class="row justify-content-center mb-4">
                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="best_sellers">{{ __('Best Selling Product') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="best_sellers" value="1" {{ $data->best_sellers == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>

                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="blog">{{ __('Blogs') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="blog" value="1" {{ $data->blog == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>
              </div>

              <!-- Switches Row 5 -->
              <div class="row justify-content-center mb-4">
                <div class="col-lg-5 d-flex justify-content-between align-items-center">
                  <label class="control-label" for="third_left_banner">{{ __('Newsletter') }} *</label>
                  <label class="switch">
                    <input type="checkbox" name="third_left_banner" value="1" {{ $data->third_left_banner == 1 ? "checked" : "" }}>
                    <span class="slider round"></span>
                  </label>
                </div>
              </div>

              <!-- Submit Button -->
              <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                  <button type="submit" class="submit-btn btn btn-primary px-5">{{ __('Submit') }}</button>
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
