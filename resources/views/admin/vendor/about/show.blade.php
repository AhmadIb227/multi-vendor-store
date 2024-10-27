@extends('layouts.front')
@section('content')
@php
$vendor_id_visit = Session::has('shop_id') ? Session::get('shop_id') : null;
$vendor = App\Models\User::find($vendor_id_visit);
@endphp

@php
    $backgroundColor = optional(auth()->user())->background_color;
@endphp

<div class="bg-zinc-100 min-h-screen" style="background-color: {{ $backgroundColor }};">
    <div class="bg-white shadow  d-flex ">
        <div class="container mx-auto px-4 flex items-center space-x-4 responsive">
                @php
    $vendor = Auth::user();
@endphp

@if(Auth::check())
<img src="{{ asset("assets/images/users/" . $vendor->photo) }}" class="w-10 h-10 rounded-full">
@else
    <img src="{{ asset("assets/images/users/default.png") }}" class="w-10 h-10 rounded-full">
@endif
            <div>
                {{-- <h2 class="text-2xl font-bold">{{ $vendor->shop_name }}</h2> --}}
                <div class="flex space-x-4 mt-2">

                    {{-- <div class="text-zinc-600">4.2 Average Product Score</div>
  <div class="text-zinc-600">2248 Product Reviews</div>
  <div class="text-zinc-600">96.0K Followers</div>
  <button class="bg-orange-500 text-white px-4 py-2 rounded-lg">Follow</button> --}}
                </div>

            </div>
            <div class="container mx-auto px-1 py-2 flex space-x-4 res-nav-lg">
                <a href="#" class="text-zinc-800 hover:text-orange-500 ms-2"
                    onclick="openTab(event, 'tab1')">{{ __('Home') }}</a>
                <a href="#" class="text-zinc-800 hover:text-orange-500"
                    onclick="openTab(event, 'tab1')">{{ __('All Products') }}</a>
                <a href="{{ route('front.contact') }}" class="text-zinc-800 hover:text-orange-500"
                    onclick="openTab(event, 'tab2')">{{ __('Contact Us') }}</a>
                <a href="{{ route('aboutus.show') }}" class="text-zinc-800 hover:text-orange-500"
                    onclick="openTab(event, 'tab3')">{{ __('About Us') }}</a>
            </div>

            {{-- <div class="container mx-auto px-4 py-2 flex space-x-4 res-nav">
            <div class="dropdown">
                <a class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">

                    <p>Menu</p>
                    <div class="my-toggl-icon"></div>
                </a>
                <div class="dropdown-menu bg-white" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#"
                        onclick="openTab(event, 'tab1')">{{ __('Home') }}</a>
                    <a class="dropdown-item" href="#"
                        onclick="openTab(event, 'tab1')">{{ __('All Products') }}</a>
                    <a class="dropdown-item" href="#"
                        onclick="openTab(event, 'tab2')">{{ __('Contact Us') }}</a>
                    <a class="dropdown-item" href="#"
                        onclick="openTab(event, 'tab3')">{{ __('About Us') }}</a>
                </div>
            </div>
        </div> --}}
        </div>
        <div class="container mx-auto px-2 py-6 flex items-center space-x-4">
            <div class="margin-right-1 d-flex align-items-center justify-content-end h-100 w-100"
                style="margin-left: auto;">
                <div class="product-search-one flex-grow-1 global-search touch-screen-view">
                    <form id="searchForm" class="search-form form-inline search-pill-shape"
                        action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}"
                        method="GET">
                        {{-- <input type="hidden" name="vendor_id" value="{{ $vendor->id }}"> --}}

                        @if (!empty(request()->input('sort')))
                            <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                        @endif
                        @if (!empty(request()->input('minprice')))
                            <input type="hidden" name="minprice" value="{{ request()->input('minprice') }}">
                        @endif
                        @if (!empty(request()->input('maxprice')))
                            <input type="hidden" name="maxprice" value="{{ request()->input('maxprice') }}">
                        @endif
                        <input type="text" id="prod_name" class="col form-control search-field " name="search"
                            placeholder="Search Product In This Shop" value="{{ request()->input('search') }}">
                        <div class=" categori-container select-appearance-none " id="catSelectForm">
                            <select name="category" class="form-control categoris select2-js-search-init">
                                <option selected="">{{ __('All Categories') }}</option>
                                {{-- @foreach ($categories->where('status', 1) as $data)
                                <option value="{{ $data->slug }}"
                                    {{ Request::route('category') == $data->slug ? 'selected' : '' }}>
                                    {{ $data->name }}
                                </option>
                            @endforeach --}}
                            </select>
                        </div>
                        <button type="submit" name="submit" class="search-submit"><i
                                class="flaticon-search flat-mini text-white"></i></button>

                    </form>
                </div>
                    <div class="autocomplete">
                        <div id="myInputautocomplete-list" class="autocomplete-items"></div>
                    </div>

                    <div class="search-view d-xxl-none">
                        <a href="#"
                            class="search-pop top-quantity d-flex align-items-center text-decoration-none">
                            <i class="flaticon-search flat-mini text-dark mx-auto"></i>
                        </a>
                    </div>
                    {{-- <div class="header-cart-1">
                      @if (Auth::guard('web')->check())
                         <a href="{{ route('user-wishlists') }}" class="cart " title="View Wishlist">
            <div class="cart-icon"><i class="flaticon-like flat-mini mx-auto text-dark"></i> <span
                    class="header-cart-count " id="wishlist-count">{{
                    Auth::guard('web')->user()->wishlistCount()
                    }}</span></div>
        </a>
                          @else
                       <a href="{{ route('user.login') }}" class="cart " title="View Wishlist">
            <div class="cart-icon"><i class="flaticon-like flat-mini mx-auto text-dark"></i> <span
                    class="header-cart-count" id="wishlist-count">{{ 0 }}</span></div>
        </a>
        @endif
    </div>

    <div class="header-cart-1">
        <a href="{{ route('product.compare') }}" class="cart " title="Compare">
            <div class="cart-icon"><i class="flaticon-shuffle flat-mini mx-auto text-dark"></i>
                <span class="header-cart-count " id="compare-count">{{ Session::has('compare') ?
                    count(Session::get('compare')->items) : '0' }}</span>
            </div>
        </a>
    </div> --}}

                    <div class="header-cart-1">
                        <a href="{{ route('front.cart') }}" class="cart has-cart-data" title="View Cart">
                            <div class="cart-icon"><i class="flaticon-shopping-cart flat-mini"></i> <span
                                    class="header-cart-count"
                                    id="cart-count1">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
                            </div>
                            <div class="cart-wrap">
                                <div class="cart-text">@lang('Cart')</div>
                                <span
                                    class="header-cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
                            </div>
                        </a>
                        @include('load.cart')
                    </div>

                    <ul class="top-links d-flex align-items-center">
                        <li class="my-account-dropdown">
                            @php
                                $languges = App\Models\Language::all();
                            @endphp
                            <div class="topbar-text dropdown disable-autohide __language-bar text-capitalize">
                                <a class="topbar-link dropdown-toggle px-2" href="#" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false" style="display: flex;">
                                    @php
                                        $curr_lang = Session::has('language')
                                            ? App\Models\Language::find(Session::get('language'))
                                            : App\Models\Language::first();
                                    @endphp
                                    <!--<img class="mr-2" width="35" src="{{ asset('assets/flags/' . $curr_lang->language . '.png') }}" alt="{{ $curr_lang->language }}">-->
                                    {{ $curr_lang->language }}
                                </a>


                                <div class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenuButton">
                                    @foreach ($languges as $language)
                                        <a class="dropdown-item pb-1 change-language"
                                            href="{{ route('front.language', $language->id) }}"
                                            data-language-code="{{ $language->language }}"
                                            style="display: flex;">
                                            <img class="mr-2" width="35"
                                                src="{{ asset('assets/flags/' . $language->language . '.png') }}"
                                                alt="{{ $language->language }}">
                                            <span class="text-capitalize">{{ $language->language }}</span>
                                        </a>
                                    @endforeach
                                </div>
                            </div>
                        </li>
                        <li class="my-account-dropdown ar-list">
                            <a href="my-account.html" class="has-dropdown"><i
                                    class="flaticon-user-3 flat-mini me-1"></i> <span
                                    class="responsive-text">{{ auth()->user() ? 'Welcome,' . auth()->user()->name : __('My Account') }}</span>
                            </a>
                            <ul class="my-account-popup">
                                @if (Auth::guard('web')->check())
                                    <li><a href="{{ route('user-dashboard') }}"><span
                                                class="menu-item-text">{{ __('User Panel') }}</span></a></li>

                                    <li><a href="{{ route('user-profile') }}"><span
                                                class="menu-item-text">{{ __('Edit Profile') }}</span></a></li>
                                    <li><a href="{{ route('user-logout') }}"><span
                                                class="menu-item-text">{{ __('Logout') }}</span></a></li>
                                @else
                                    <li><a href="{{ route('user.login') }}"><span
                                                class="menu-item-text sign-in">{{ __('User Login') }}</span></a>
                                    </li>
                                    <li><a href="{{ route('user.register') }}"><span
                                                class="menu-item-text join">{{ __('Register') }}</span></a></li>
                                @endif
                            </ul>
                        </li>
                    </ul>
                

            </div>
        </div>
    </div>
<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
   <div class="container">
      <div class="row text-center text-white">
         <div class="col-12">
            <h3 class="mb-2 text-white">{{ __('About us') }}</h3>
         </div>
         <div class="col-12">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="direction: ltr !important;">
                  <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ __('About us') }}</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>
<!-- breadcrumb -->

<!--==================== About Section Start ====================-->
<div class="container my-5">
   <div class="row">
    @if(!$latestAbout)
    <div class="col-12">
        <p>{{ __('No About Us information available.') }}</p>
    </div>
@else
          {{-- @foreach($aboutUs as $data) --}}
              <div class="col-lg-6 mb-4">
                  <div class="card shadow-sm">
                      <div class="card-body">
                        @switch(app()->getLocale())
                        @case('en')
                            <h5 class="card-title" style="font-size: 24px; font-weight: bold;">{{ $latestAbout->title_en }}</h5>
                            <p class="card-text">{!! nl2br(e($latestAbout->description_en)) !!}</p>
                            @break
                        @case('ar')
                            <h5 class="card-title" style="font-size: 24px; font-weight: bold;">{{ $latestAbout->title_ar }}</h5>
                            <p class="card-text">{!! nl2br(e($latestAbout->description_ar)) !!}</p>
                            @break
                        @case('kr')
                            <h5 class="card-title" style="font-size: 24px; font-weight: bold;">{{ $latestAbout->title_kr }}</h5>
                            <p class="card-text">{!! nl2br(e($latestAbout->description_kr)) !!}</p>
                            @break
                        @default
                            <h5 class="card-title" style="font-size: 24px; font-weight: bold;">{{ $latestAbout->title_en }}</h5>
                            <p class="card-text">{!! nl2br(e($latestAbout->description_en)) !!}</p>
                    @endswitch
                      </div>
                  </div>
              </div>
          {{-- @endforeach --}}
      @endif
   </div>
</div>
<!--==================== About Section End ====================-->

@includeIf('partials.global.common-footer')
@endsection

@section('script')
<!-- Include any additional scripts needed for the page here -->
@endsection