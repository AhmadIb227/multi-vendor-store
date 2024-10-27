@extends('layouts.front')
@section('content')
@include('partials.global.common-header')
<script src="https://cdn.tailwindcss.com"></script>

<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
   <div class="container">
      <div class="row text-center text-white">
         <div class="col-12">
            <h3 class="mb-2 text-white">{{ __('About us') }}</h3>
         </div>
         <div class="col-12">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                  <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ __('About us') }}</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>
<!-- breadcrumb -->
<!--==================== Contact Section Start ====================-->
@php
    $vendor_id_visit = Session::has('shop_id') ? Session::get('shop_id') : null;
    $vendor = App\Models\User::find($vendor_id_visit);
    $logo = is_null($vendor_id_visit) ? asset('assets/images/'.$gs->logo) :  ($vendor->photo ? asset("assets/images/users/".$vendor->photo):asset('assets/images/'.$gs->user_image));

@endphp
<!--======================== Contact Section End ==========================-->
<div class="flex flex-col lg:flex-row justify-between items-start lg:items-center  p-8 rounded-lg">
   <div class="about-section" style="text-align: center;margin:auto !important;">
      
    

    </div>
</div>






@include('partials.global.common-footer')
@endsection
@section('script')
@endsection
