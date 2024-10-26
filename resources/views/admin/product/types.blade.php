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
    </style>
    
    @else
    
    @endif
<div class="content-area">
            <div class="mr-breadcrumb">
              <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __("Add Product") }}</h4>
                    <ul class="links">
                      <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }}</a>
                      </li>
                      <li>
                        <a href="javascript:;">{{ __("Products") }} </a>
                      </li>
                      <li>
                        <a href="{{ route('admin-prod-index') }}">{{ __("All Products") }}</a>
                      </li>
                      <li>
                        <a href="{{ route('admin-prod-types') }}">{{ __("Add Product") }}</a>
                      </li>
                    </ul>
                </div>
              </div>
            </div>
            <div class="add-product-content">
              <div class="row">
                <div class="col-lg-12">
                  <div class="product-description">
                    <div class="heading-area">
                      <h2 class="title">
                          {{ __("Product Types") }}
                      </h2>
                    </div>
                  </div>
                </div>
              </div>
              <div class="ap-product-categories">
                <div class="row">
                  <div class="col-lg-4">
                    <a href="{{ route('admin-prod-create','physical') }}">
                    <div class="cat-box box1">
                      <div class="icon">
                        <i class="fas fa-tshirt"></i>
                      </div>
                      <h5 class="title">{{ __("Physical") }} </h5>
                    </div>
                    </a>
                  </div>
                  {{-- <div class="col-lg-4">
                    <a href="{{ route('admin-prod-create','digital') }}">
                    <div class="cat-box box2">
                      <div class="icon">
                        <i class="fas fa-camera-retro"></i>
                      </div>
                      <h5 class="title">{{ __("Digital") }} </h5>
                    </div>
                    </a>
                  </div> --}}
                  {{-- <div class="col-lg-4">
                    <a href="{{ route('admin-prod-create','license') }}">
                    <div class="cat-box box3">
                      <div class="icon">
                        <i class="fas fa-award"></i>
                      </div>
                      <h5 class="title">{{ __("license") }} </h5>
                    </div>
                    </a>
                  </div> --}}
                </div>

                <div class="row my-4 d-flex justify-content-center">
                  {{-- <div class="col-lg-4">
                    <a href="{{ route('admin-prod-create','listing') }}">
                    <div class="cat-box box3">
                      <div class="icon">
                        <i class="fas fa-th-list"></i>
                      </div>
                      <h5 class="title">{{ __("Classified Listing") }} </h5>
                    </div>
                    </a>
                  </div> --}}
                </div>
              </div>
            </div>
          </div>

@endsection