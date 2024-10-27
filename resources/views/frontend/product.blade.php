@extends('layouts.front')

@section('content')
<head>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200..1000&family=Noto+Kufi+Arabic:wght@100..900&family=Tajawal:wght@200;300;400;500;700;800;900&family=Zain:wght@200;300;400;700;800;900&display=swap" rel="stylesheet">
    <script src="" defer></script>
</head>
@php
    $vendor_id_visit = Session::has('shop_id') ? Session::get('shop_id') : null;
@endphp
@if ((Session::has('in_azrar') && Session::get('in_azrar') == 1) || !Session::has('in_azrar'))
    <style>
    @media (max-width: 767px) {
    #menu-and-categoryContent {
        display: block !important;
    }
}

        body{
             font-family: "Noto Kufi Arabic", sans-serif;
          font-optical-sizing: auto;
        }
        .responsve-select .select2-dropdown,
        .responsve-select .select2-container {
            width: 200px !important;
        }

        .coins-style .select2-container {
            width: 80px !important;
        }

        @media screen and (min-width: 992px) and (max-width: 1365px) {
            .responsive-header .responsive-header-col .nav-item {
                padding: 0px 5px !important;
            }
        }

      .mr-2{
          margin-left: 10px;
      }
        @media screen and (max-width: 991.98px) {
            img {
                width: 5%;
            }
            .dropdown-toggle{
                margin-top: 5px;
            }
            .mr-22{
                margin-left: 5px;
            }
            
             .dropdown-arrwo1::after {
                   margin-left: 2rem;
                   top: 45%;
                          
        margin-top: 10px;
                   position: relative;
               }
                .dropdown-arrwo::after {
                   margin-left: 2rem;
                   top: 45%;
                          
        margin-top: 10px;
                   position: relative;
               }
        }

        @media (min-width: 1000px) {
            .responsive-header .responsive-header-col {
                padding: 0px !important;
            }
        }

@media (max-width: 768px) {
    .wishlist-view,
    .refresh-view {
        display: flex !important;
        justify-content: center;
        align-items: center;
    }
}

        @media (max-width: 768px) {

            .wishlist-view,
            .refresh-view {
                display: none;
            }

            img {
                width: 8%;
            }

            .banner-wrapper-item {
                padding: 0 !important;
                min-height: 350px !important;
            }

            .menu-and-category .nav-pills li {
                width: 100% !important;
            }

        }

        @media screen and (max-width: 400px) {
            .navbar-brand {
                display: block !important;
                width: 50px !important;
            }

            .responsive-header .navbar-brand img.nav-logo {
                min-width: 90px !important;
                width: 90px !important;
            }

            .responseive-nav {
                height: 60px !important;
            }

            img {
                width: 8%;
            }
        }
            @media screen and (max-width: 753px) {
                .con-list ul {
                    
                position: absolute;
                 z-index: 999;
                 background-color:red;
                 box-shadow: 0 5px 5px 0 rgba(50, 50, 50, 0.2);
                 width: 400px;
               
                 top: calc(100% + 10px);
                 border-radius: 0;
                 padding: 15px;
                 opacity: 0;
                 visibility: hidden;
                    right:140px;
             
                }
                
            }
            @media (max-width: 768px) {
    .has-dropdown.d-flex.align-items-center.text-dark.text-decoration-none {
        left: 15px;
    }
    
}
@media (max-width: 768px) {
    .my-account-dropdown:hover .con-list, .my-account-dropdown:focus-within .con-list {
        padding-left: 11px;
        display: block;
        padding: 4px;
        padding-right: 21px;
        margin-left: 2px;
        margin: -68px;
        margin-top: 14px;
    }
}
    </style>
    @if (!(app()->getLocale() === '1605519199OsGO7B86'))
        <style>
            .ar-list .my-account-popup {
                right: auto;
                left: 10px;
            }
               </style>
    @endif
<body>
    <header class="ecommerce-header px-lg-1 responsve-select" style="margin-top: 10;">
        <div class="top-header d-none d-lg-block py-2 border-0 font-400">
       
            <div class="container-fluid">
                <div class="row align-items-center">
                    {{-- @if (is_null($vendor_id_visit))
                    <div class="col-lg-4 sm-mx-none">
                        <a href="javascript:;" class="text-general"><span>{{('Contact & Support')}} :
                                {{$ps->phone}}</span></a>
                    </div>
                @endif --}}
                    <div class="col-lg-12 d-flex">
                        <ul class="top-links d-flex ms-auto align-items-center">
                            @if ((Session::has('in_azrar') && Session::get('in_azrar') == 1) || !Session::has('in_azrar'))
                                @if (Auth::guard('web')->check() && Auth::guard('web')->user()->is_vendor == 2)
                                    <li><a class="border px-3 py-1"
                                            href="{{ route('vendor.dashboard') }}">{{ __('Vendor Panel') }}</a></li>
                                @else
                                    <li><a class="border px-3 py-1"
                                            href="{{ route('vendor.register') }}">{{ __('Create your store') }}</a></li>
                                @endif
                            @endif
                            <li class="my-account-dropdown">
                                @php
                                    $languges = App\Models\Language::all();
                                @endphp
                                <div class="topbar-text dropdown disable-autohide __language-bar text-capitalize">
                                    <a class="topbar-link dropdown-toggle" href="#" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false" style="display: flex;">
                                        <!--@php-->
                                        <!--    $curr_lang = Session::has('language')-->
                                        <!--        ? App\Models\Language::find(Session::get('language'))-->
                                        <!--        : App\Models\Language::first();-->
                                        <!--@endphp-->
                                       @php
                                        $curr_lang = Session::has('language')
                                            ? App\Models\Language::find(Session::get('language'))
                                            : App\Models\Language::where('language', 'العربية')->first();
                                    
                                        if (!$curr_lang) {
                                            $curr_lang = App\Models\Language::where('language', 'العربية')->first();
                                        }
                                    @endphp                               
                                        <!--<img class="mr-2" width="35" -->
                                        <!--    src="{{ asset('assets/flags/' . $curr_lang->language . '.png') }}"-->
                                        <!--    alt="{{ $curr_lang->language }}" style"">-->
                                        <!--{{ $curr_lang->language }}-->
                                        <img class="mr-2" width="35"  style="border-radius: 3px;"
                                             src="{{ asset('assets/flags/' . $curr_lang->language . '.png') }}" 
                                             alt="{{ $curr_lang->language }}" 
                                             style="margin-left: 15px;">
                                        <span >{{ $curr_lang->language }}</span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenuButton" >
                                        @foreach ($languges as $language)
                                            <a class="dropdown-item pb-1 change-language"
                                                href="{{ route('front.language', $language->id) }}"
                                                data-language-code="{{ $language->language }}" style="display: flex;">
                                                <img class="mr-2" width="35" style="border-radius: 3px;"
                                                    src="{{ asset('assets/flags/' . $language->language . '.png') }}"
                                                    alt="{{ $language->language }}">
                                                <span class="text-capitalize">{{ $language->language }}</span>
                                            </a>
                                        @endforeach
                                    </div>
                                </div>
                            </li>
                            @php
                                $currencies = App\Models\Currency::all();
                            @endphp
                            <li class="my-account-dropdown coins-style">
                                <div class="currency-selector nice-select">
                                    <span class="text-dark" style="margin-top: 10px;">
                                            {{ Session::has('currency')
                                                ? $currencies->where('id', '=', Session::get('currency'))->first()->sign
                                                : DB::table('currencies')->where('is_default', '=', 1)->first()->sign }}
                                        </span>
                                    <select name="currency" class="currency selectors nice select2-js-init">
                                        @foreach ($currencies as $currency)
                                            <option value="{{ route('front.currency', $currency->id) }}"
                                                {{ Session::has('currency')
                                                    ? (Session::get('currency') == $currency->id
                                                        ? 'selected'
                                                        : '')
                                                    : ($currencies->where('is_default', '=', 1)->first()->id == $currency->id
                                                        ? 'selected'
                                                        : '') }}>
                                                {{ $currency->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </li>

                            <li class="my-account-dropdown ar-list" >
                                <a href="my-account.html" class="has-dropdown"><i
                                        class="flaticon-user-3 flat-mini me-1"></i>{{ auth()->user() ? 'Welcome,' . auth()->user()->name : __('My Account') }}
                                </a>
                                <ul class="con-list my-account-popup">
                                    @if (Auth::guard('web')->check())
                                        <li><a href="{{ route('user-dashboard') }}"><span
                                                    class="menu-item-text">{{ __('User Panel') }}</span></a></li>
                                        @if (Auth::guard('web')->user()->IsVendor())
                                            <li><a href="{{ route('vendor.dashboard') }}"><span
                                                        class="menu-item-text">{{ __('Vendor Panel') }}</span></a></li>
                                        @endif
                                        <li><a href="{{ route('user-profile') }}"><span
                                                    class="menu-item-text">{{ __('Edit Profile') }}</span></a></li>
                                        <li><a href="{{ route('user-logout') }}"><span
                                                    class="menu-item-text">{{ __('Logout') }}</span></a></li>
                                    @else
                                        <li><a href="{{ route('user.login') }}"><span
                                                    class="menu-item-text sign-in">{{ __('User Login') }}</span></a>
                                        </li>
                                        <li><a href="{{ route('user.register') }}" ><span class="menu-item-text join">
                                                    {{ __('Register') }}</span></a></li>
                                    @endif
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        @php
            // if(is_null($vendor_id_visit))
            $categories = App\Models\Category::with('subs')->where('status', 1)->get();
            // else
            //     $categories = App\Models\Product::with('category','category')->where('user_id', $vendor_id_visit)->get();
            $vendor = App\Models\User::find($vendor_id_visit);
            // $logo = is_null($vendor_id_visit) ? asset('assets/images/'.$gs->logo) :  ($vendor->photo ? asset("assets/images/users/".$vendor->photo):asset('assets/images/'.$gs->user_image));
            $logo = asset('assets/images/' . $gs->logo);

            $pages = App\Models\Page::get();
        @endphp
        <div class="main-nav d-none d-lg-block" style="
    margin-top: -22px;">
            <div class="container-fluid">
                <div class="row responsive-header">
                    @if (is_null($vendor_id_visit))
                        <div class="col-xl-5 col-lg-7 responsive-header-col">
                        @else
                            <div class="col-xl-5 col-lg-7 responsive-header-col">
                    @endif
                    <nav class="navbar navbar-expand-lg nav-dark nav-primary-hover nav-line-active">
                        <a class="navbar-brand" href="{{ route('front.index') }}"><img width="125" class="nav-logo "
                                src="{{ $logo }}" alt="Image not found !"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <i class="flaticon-menu-2 flat-small text-primary"></i>
                        </button>
                        <div class="" id="navbarSupportedContent">
                            {{-- <div class="collapse navbar-collapse" id="navbarSupportedContent"> --}}
                            <ul class="navbar-nav ms-md-3"
                                style="
                                text-align: justify;

                                font-weight: 600;
                            ">
                                @if (is_null($vendor_id_visit) || true)
                                    <li class="nav-item dropdown {{ request()->path() == '/' ? 'active' : '' }}">
                                        <a class="nav-link dropdown-toggle"
                                            href="{{ route('front.index') }}">{{ __('Home') }}</a>
                                    </li>
                                    @if ($ps->home == 1)
                                        <li class="nav-item dropdown mega-dropdown">
                                            <a class="nav-link dropdown-toggle" href="#">{{ __('Products') }}</a>
                                            <ul class="dropdown-menu mega-dropdown-menu">
                                                <li class="mega-container">
                                                    <div class="row row-cols-lg-4 row-cols-sm-2 row-cols-1">
                                                        @foreach ($categories as $category)
                                                            <div class="col">
                                                                <span
                                                                    class="d-inline-block px-3 font-600 text-uppercase text-secondary pb-2">{{ $category->name }}</span>
                                                                <ul>
                                                                    @if ($category->subs->count() > 0)
                                                                        @foreach ($category->subs as $subcategory)
                                                                            <li><a class="dropdown-item"
                                                                                    href="{{ route('front.category', [$category->slug, $subcategory->slug]) }}{{ !empty(request()->input('search')) ? '?search=' . request()->input('search') : '' }}">{{ $subcategory->name }}</a>
                                                                            </li>
                                                                        @endforeach
                                                                    @endif
                                                                </ul>
                                                            </div>
                                                        @endforeach

                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    @endif

                                    {{-- <li class="nav-item dropdown ">
                                            <a class="nav-link dropdown-toggle" href="#">{{ __('Pages') }}</a>
                                            <ul class="dropdown-menu">
                                                @foreach ($pages->where('header', '=', 1) as $data)
                                                <li><a class="dropdown-item" href="{{ route('front.vendor',$data->slug) }}">{{
                                                        $data->title }}</a></li>
                                                @endforeach

                                            </ul>
                                            </li> --}}
                                    <li class="nav-item dropdown {{ request()->path() == 'blog' ? 'active' : '' }}">
                                        <a class="nav-link dropdown-toggle" href="/about">{{ __('About Us') }}</a>
                                    </li>
                                    {{-- @if ($ps->blog == 1)
                                            <li class="nav-item dropdown {{ request()->path()=='blog' ? 'active' : '' }}">
                                                <a class="nav-link dropdown-toggle" href="{{ route('front.blog') }}">{{ __('Blog')
                                                    }}</a>
                                            </li>
                                        @endif --}}

                                    {{-- @if ($ps->contact == 1)
                                            <li class="nav-item {{ request()->path()=='contact' ? 'active' : '' }}"><a
                                                    class="nav-link" href="{{ route('user-packages') }}">{{ __('selling Packages') }}</a>
                                            </li>
                                        @endif --}}
                                    @if ($ps->contact == 1)
                                        <li class="nav-item {{ request()->path() == 'contact' ? 'active' : '' }}">
                                                <a
                                                class="nav-link"
                                                href="{{ route('front.contact') }}" style="white-space: nowrap;">{{ __('Contact Us') }}</a>
                                        </li>
                                    @endif
                                    @if ($ps->faq == 1)
                                        <li class="nav-item dropdown {{ request()->path() == 'faq' ? 'active' : '' }}">
                                            <a class="nav-link dropdown-toggle"
                                                href="{{ route('front.faq') }}">{{ __('FAQ') }}</a>
                                        </li>
                                    @endif
                                @else
                                    <li><a class="nav-item "
                                            href="{{ route('front.vendor', str_replace(' ', '-', $vendor->shop_name)) }}">{{ __('Home Page') }}</a>
                                    </li>
                                    <li><a class="nav-item " href="#ajaxContent">{{ __('All Products') }}</a></li>
                                    {{-- <li><a class="nav-item " href="{{route('about-us')}}">{{ __('About Us') }}</a></li> --}}
                                    <li><a class="nav-item "
                                            href="{{ route('front.contact') }}">{{ __('Contact Us') }}</a></li>
                                @endif


                            </ul>
                        </div>
                    </nav>
                </div>
                @if (is_null($vendor_id_visit))
                    <div class="col-xl-7 col-lg-5">
                    @else
                        <div class="col-xl-7 col-lg-5">
                @endif
    <style>
        .product-search-one .select-appearance-none::before {
    left: 0;
    display:none;
}
.main-nav .form-inline input.search-field {
    margin-left: 20px;
    padding-left: -0px;
    padding-right: 5px;
    font-size: 15px !important;
}
.select-appearance-none {
    position: relative;
    min-width: 140px;
    width: 100px;
}
    </style>
               <div class="margin-right-1 d-flex align-items-center justify-content-end h-100">
                    <div class="product-search-one">
                        <form id="searchForm" class="search-form form-inline search-pill-shape"
                        action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}"
                        method="GET">

                        @if (!empty(request()->input('sort')))
                            <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                        @endif
                        @if (!empty(request()->input('minprice')))
                            <input type="hidden" name="minprice"
                                value="{{ request()->input('minprice') }}">
                        @endif
                        @if (!empty(request()->input('maxprice')))
                            <input type="hidden" name="maxprice"
                                value="{{ request()->input('maxprice') }}">
                        @endif
                        <input type="text" id="prod_name" class="col form-control search-field "
                            name="search" placeholder="{{ __('Search Product In Azrar') }}"
                            value="{{ request()->input('search') }}">
                        <div class=" categori-container select-appearance-none " id="catSelectForm">
                            <select name="category" class="form-control categoris select2-js-search-init">
                                <option selected="">{{ __('All Categories') }}</option>
                                @foreach ($categories->where('status', 1) as $data)
                                    <option value="{{ $data->slug }}"
                                        {{ Request::route('category') == $data->slug ? 'selected' : '' }}>
                                        {{ $data->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <button type="submit" name="submit" class="search-submit"><i
                                class="flaticon-search flat-mini text-white">
                            </i></button>

                    </form>
                    </div>
                    <div class="autocomplete">
                        <div id="myInputautocomplete-list" class="autocomplete-items"></div>
                    </div>
  @if (Auth::guard('web')->check())
                    <div class="search-view d-xxl-none">
                        <a href="#"
                            class="search-pop top-quantity d-flex align-items-center text-decoration-none">
                            <i class="flaticon-search flat-mini text-dark mx-auto"></i>
                        </a>
                    </div>
                     @endif
                    <div class="header-cart-1">
                        @if (Auth::guard('web')->check())
                            <a href="{{ route('user-wishlists') }}" class="cart " title="View Wishlist">
                                <div class="cart-icon"><i class="flaticon-like flat-mini mx-auto text-dark"></i> <span
                                        class="header-cart-count "
                                        id="wishlist-count">{{ Auth::guard('web')->user()->wishlistCount() }}</span>
                                </div>
                            </a>
                        @else
                            <a href="{{ route('user.login') }}" class="cart " title="View Wishlist">
                                <div class="cart-icon"><i class="flaticon-like flat-mini mx-auto text-dark"></i> <span
                                        class="header-cart-count" id="wishlist-count">{{ 0 }}</span>
                                </div>
                            </a>
                        @endif
                    </div>

                    <div class="header-cart-1">
                        <a href="{{ route('product.compare') }}" class="cart " title="Compare">
                            <div class="cart-icon"><i class="flaticon-shuffle flat-mini mx-auto text-dark"></i>
                                <span class="header-cart-count "
                                    id="compare-count">{{ Session::has('compare') ? count(Session::get('compare')->items) : '0' }}</span>
                            </div>
                        </a>
                    </div>

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
                    <style>
                       @media screen and (max-width: 400px) {
         .cart-popup{
                 right: 230px;
         }
     }
                   
                    </style>
<div class="cart-popup">
    <ul class="cart_list product_list_widget ">
        @if (Session::has('cart'))
        @foreach(Session::get('cart')->items as $product)
        <li class="mini-cart-item">
            <div class="cart-remove remove" data-class="cremove{{ $product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values']) }}"
            data-href="{{ route('product.cart.remove',$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])) }}" title="Remove this item"><i class="fas fa-times"></i></div>

            <a href="{{ route('front.product', $product['item']['slug']) }}" class="product-image"><img  src="{{ $product['item']['photo'] ? filter_var($product['item']['photo'], FILTER_VALIDATE_URL) ?$product['item']['photo']:asset('assets/images/products/'.$product['item']['photo']):asset('assets/images/noimage.png') }}" class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="Cart product"></a>

            <a href="{{ route('front.product',$product['item']['slug']) }}" class="product-name">{{ mb_strlen($product['item']['name'],'UTF-8') > 45 ? mb_substr($product['item']['name'],0,45,'UTF-8').'...' : $product['item']['name'] }}</a>


            <div class="cart-item-quantity">
                <span class="cart-product-qty"
                id="cqt{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">{{$product['qty']}}</span><span>{{ $product['item']['measure'] }}</span>
            x <span
                id="prct{{$product['item']['id'].$product['size'].$product['color'].str_replace(str_split(' ,'),'',$product['values'])}}">{{ App\Models\Product::convertPrice($product['item_price']) }} {{ $product['discount'] == 0 ? '' : '('.$product['discount'].'% '.__('Off').')' }}
            </span>
            </div>
        </li>
        @endforeach
        @else
        <div class="card">
            <div class="card-body">
                <h4 class="text-center">{{ __('Cart is Empty!! Add some products in your Cart') }}</h4>
            </div>
        </div>
        @endif

    </ul>
    <div class="total-cart">
        <div class="title">Total: </div>
        <div class="price"><span
            class="cart-total">{{ Session::has('cart') ? App\Models\Product::convertPrice(Session::get('cart')->totalPrice) : '0.00' }}
        </span>
        </div>
    </div>

        <a href="{{ route('front.cart') }}" class="btn btn-primary rounded-0 view-cart">{{ __('View cart') }}</a>

        <a href="{{ route('front.checkout') }}" class="btn btn-secondary rounded-0 checkout">{{ __('Check out') }}</a>

</div>

                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
        <style>
            
        </style>
        <div class="header-sticky bg-white sm-pb-10 md-py-10">
            <div class="container responsive-header">
                <div class="row align-items-center">
                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-6 order-lg-1 responseive-nav">
                        <div class="d-flex align-items-center h-100  sm-py-0  md-py-10">
                            <div class="nav-leftpush-overlay">
                                <nav class="navbar navbar-expand-lg nav-general nav-primary-hover">
                                    <button type="button" class="push-nav-toggle d-lg-none border-0">
                                        <i class="flaticon-menu-2 flat-small text-primary"></i>
                                    </button>
                                    <div class="navbar-slide-push transation-this">
                                        {{-- <div
                                            class="login-signup bg-secondary d-flex justify-content-between py-10 px-20 align-items-center">
                                            <a href="{{route('user.login')}}" class="d-flex align-items-center text-white">
                                                <i class="flaticon-user flat-small me-1"></i>
                                                <span>Login/Signup</span>
                                            </a>
                                            <span class="slide-nav-close"><i
                                                    class="flaticon-cancel flat-mini text-white"></i></span>
                                        </div> --}}
                                        <div
                                            class="login-signup bg-secondary d-flex justify-content-between py-10 px-20 align-items-center">
                                            @auth
                                                <a href="{{ route('user.login') }}"
                                                    class="d-flex align-items-center text-white">
                                                    <i class="flaticon-user flat-small me-1"></i>
                                                    <span>{{ __('Dashboard') }}</span>
                                                </a>
                                            @else
                                                <a href="{{ route('user.login') }}"
                                                    class="d-flex align-items-center text-white">
                                                    <i class="flaticon-user flat-small me-1"></i>
                                                    <span> {{ __('Login/Signup') }}</span>
                                                </a>
                                            @endauth
                                            <span class="slide-nav-close"><i
                                                    class="flaticon-cancel flat-mini text-white"></i></span>
                                        </div>

                                        <div class="menu-and-category">
                                            <ul class="nav nav-pills wc-tabs" id="menu-and-category" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link active" id="pills-push-menu-tab"
                                                        data-bs-toggle="pill" href="#pills-push-menu" role="tab"
                                                        aria-controls="pills-push-menu" aria-selected="true">{{ __('Menu') }}</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content" id="menu-and-categoryContent" >
                                                <div class="tab-pane fade show active woocommerce-Tabs-panel woocommerce-Tabs-panel--description"
                                                    id="pills-push-menu" role="tabpanel"
                                                    aria-labelledby="pills-push-menu-tab">
                                                    <div class="push-navbar">
                                                        <ul class="navbar-nav">
                                                            <li class="nav-item">
                                                                <a class="nav-link"
                                                                    href="{{ route('front.index') }}">{{ __('Home') }}</a>
                                                            </li>
                                                            <li class="nav-item ">
                                                                <a class="nav-link"
                                                                    href="{{ route('front.category') }}">{{ __('Products') }}</a>
                                                            </li>
                                                            <li class="nav-item dropdown">
                                                                <a class="dropdown-arrwo nav-link dropdown-toggle "
                                                                     href="#">{{ __('Pages') }}</a>
                                                                <ul class="dropdown-menu dropdown-menu-left">
                                                                    
                                                                     <li>
                                                                          @if (app()->getLocale() === '17173493681JWu2JXL')
                                                                <a class="dropdown-item" style="text-align: right;"
                                                                    href="/about">{{ __('About Us') }}</a>
                                                                     @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                                                      <a class="dropdown-item"
                                                                    href="/about">{{ __('About Us') }}</a>
                                                                      @endif
                                                                        <li>
                                                                             @if (app()->getLocale() === '17173493681JWu2JXL')
                                                                <a class="dropdown-item" style="text-align: right;"
                                                                    href="/سياسة%20الخصوصية">{{ __('Terms & Conditions') }}</a>
                                                                     @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                                                      <a class="dropdown-item" 
                                                                    href="/سياسة%20الخصوصية">{{ __('Terms & Conditions') }}</a>
                                                                      @endif
                                                                        <li>
                                                                              @if (app()->getLocale() === '17173493681JWu2JXL')
                                                                <a class="dropdown-item" style="text-align: right;"
                                                                    href="/privacy">{{ __('Privacy & Policy') }}</a>
                                                                     @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                                                   <a class="dropdown-item" 
                                                                    href="/privacy">{{ __('Privacy & Policy') }}</a>
                                                                      @endif
                                                                    
                                                            </li>
                                                                    <!--@foreach ($pages->where('header', '=', 1) as $data)-->
                                                                    <!--    <li><a class="dropdown-item"-->
                                                                    <!--            href="{{ route('front.vendor', $data->slug) }}">{{ $data->title }}</a>-->
                                                                    <!--    </li>-->
                                                                    <!--@endforeach-->
                                                                </ul>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link"
                                                                    href="{{ route('front.blog') }}">{{ __('Blog') }}</a>
                                                            </li>

                                                            <li class="nav-item">
                                                                <a class="nav-link"
                                                                    href="{{ route('front.faq') }}">{{ __('FAQ') }}</a>
                                                            </li>
                                                            <li class="my-account-dropdown">
                                                                @php
                                                                    $languges = App\Models\Language::all();
                                                                @endphp
                                                                <div
                                                                    class="topbar-text dropdown disable-autohide __language-bar text-capitalize">
                                                                    <a class="dropdown-arrwo1  topbar-link dropdown-toggle"
                                                                        href="#" data-toggle="dropdown"
                                                                        aria-haspopup="true" aria-expanded="false"
                                                                        style="display: flex;">
                                                                        @php
                                                                            $curr_lang = Session::has('language')
                                                                                ? App\Models\Language::find(
                                                                                    Session::get('language'),
                                                                                )
                                                                                : App\Models\Language::first();
                                                                        @endphp
                                                                        <img class="mr-22 responsve-image"
                                                                            width="5"
                                                                            src="{{ asset('assets/flags/' . $curr_lang->language . '.png') }}"
                                                                            alt="{{ $curr_lang->language }}"> 
                                                                            
                                                                        {{ $curr_lang->language }}
                                                                    </a>
                                                                    <div class="dropdown-menu dropdown-menu-left"
                                                                        aria-labelledby="dropdownMenuButton">
                                                                        @foreach ($languges as $language)
                                                                            <a class="dropdown-item pb-1 change-language"
                                                                                href="{{ route('front.language', $language->id) }}"
                                                                                data-language-code="{{ $language->language }}"
                                                                                style="display: flex;">
                                                                                <img class="mr-22" width="5"
                                                                                    src="{{ asset('assets/flags/' . $language->language . '.png') }}"
                                                                                    alt="{{ $language->language }}">
                                                                                <span
                                                                                    class="text-capitalize">{{ $language->language }}</span>
                                                                            </a>
                                                                        @endforeach
                                                                    </div>
                                                                </div>
                                                                {{-- <div class="language-selector nice-select">
                                                                    <i class="fas fa-globe-americas text-dark"></i>
                                                                    <select name="language" class="language selectors nice select2-js-init">
                                                                        @foreach ($languges as $language)
                                                                            <option value="{{route('front.language',$language->id)}}" {{
                                                                                Session::has('language') ? ( Session::get('language')==$language->id ?
                                                                                'selected' : '' ) : ($languges->where('is_default','=',1)->first()->id ==
                                                                                $language->id ? 'selected' : '') }} >
                                                                                <img src="{{asset('assets/flags/'.$language->language.'.png')}}" width="50"> {{$language->language}}
                                                                            </option>
                                                                        @endforeach
                                                                    </select>
                                                                </div> --}}
                                                            </li>
                                                            <li class="nav-item"><a class="nav-link"
                                                                    href="{{ route('front.contact') }}">{{ __('Contacts') }}</a>
                                                            </li>
                                                        </ul>

                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="pills-push-categories" role="tabpanel"
                                                    aria-labelledby="pills-push-categories-tab">
                                                    <div class="categories-menu">
                                                        <ul class="menu">
                                                            @foreach ($categories as $category)
                                                                <li class="menu-item-has-children"><a
                                                                        href="{{ route('front.category', $category->slug) }}">{{ $category->name }}</a>
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                            <a class="navbar-brand" href="{{ route('front.index') }}"><img class="nav-logo"
                                    width="175" src="{{ $logo }}" alt="Image not found !"></a>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-3 col-6 order-lg-3">
                        <div class="margin-right-1 d-flex align-items-center justify-content-end h-100 md-py-10" style="margin-left:10px">
                            <div class="sign-in position-relative font-general my-account-dropdown">
                                <a href="my-account.html"
                                    class="has-dropdown d-flex align-items-center text-dark text-decoration-none"
                                    title="My Account">
                                    <i class="flaticon-user-3 flat-mini me-1 mx-auto"></i>
                                </a>
                             <div class:"dd" style="margin-left:60px"> 
                                <ul class="con-list my-account-popup" style="margin-left:100px" >
                                    @if (Auth::guard('web')->check())
                                        <li><a href="{{ route('user-dashboard') }}"><span
                                                    class="menu-item-text">{{ __('User Panel') }}</span></a>
                                        </li>
                                        @if (Auth::guard('web')->user()->IsVendor())
                                            <li><a href="{{ route('vendor.dashboard') }}"><span
                                                        class="menu-item-text">{{ __('Vendor Panel') }}</span></a>
                                            </li>
                                        @endif
                                        <li><a href="{{ route('user-profile') }}"><span
                                                    class="menu-item-text">{{ __('Edit Profile') }}</span></a>
                                        </li>
                                        <li><a href="{{ route('user-logout') }}"><span
                                                    class="menu-item-text">{{ __('Logout') }}</span></a></li>
                                    @elseif(Auth::guard('rider')->check())
                                        <li><a href="{{ route('rider-dashboard') }}"><span
                                                    class="menu-item-text">{{ 'User
                                                                                                                                                        Panel' }}</span></a>
                                        </li>
                                        <li><a href="{{ route('rider-profile') }}"><span
                                                    class="menu-item-text">{{ __('Edit
                                                                                                                                                        Profile') }}</span></a>
                                        </li>
                                        <li><a href="{{ route('rider-logout') }}"><span
                                                    class="menu-item-text">{{ __('Logout') }}</span></a></li>
                                    @else
                                        <li style="margin-left:40px"><a href="{{ route('user.login') }}"><span
                                                    class="menu-item-text sign-in">{{ __('User Login') }}</span></a>
                                        </li>
                                        <li style="margin-left:40px"><a href="{{ route('user.register') }}"><span
                                                    class="menu-item-text join">{{ __('Register') }}</span></a></li>
                                    @endif
                                </ul>
                              </div>
                            </div>


                            @if (Auth::check())
                                <div class="wishlist-view">
                                    <a href="{{ route('user-wishlists') }}"
                                        class="position-relative top-quantity d-flex align-items-center text-white text-decoration-none">
                                        <i class="flaticon-like flat-mini text-dark mx-auto"></i>
                                    </a>
                                </div>
                            @else
                                <div class="wishlist-view">
                                    <a href="{{ route('user.login') }}"
                                        class="position-relative top-quantity d-flex align-items-center text-white text-decoration-none">
                                        <i class="flaticon-like flat-mini text-dark mx-auto"></i>
                                    </a>
                                </div>
                            @endif

                            <div class="refresh-view">
                                <a href="{{ route('product.compare') }}"
                                    class="position-relative top-quantity d-flex align-items-center text-dark text-decoration-none">
                                    <i class="flaticon-shuffle flat-mini text-dark mx-auto"></i>
                                </a>
                            </div>
                            <div class="header-cart-1">
                                <a href="{{ route('front.cart') }}" class="cart has-cart-data" title="View Cart">
                                    <div class="cart-icon"><i class="flaticon-shopping-cart flat-mini"></i> <span
                                            class="header-cart-count"
                                            id="cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
                                    </div>
                                    <div class="cart-wrap">
                                        <div class="cart-text">Cart</div>
                                        <span
                                            class="header-cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
                                    </div>
                                </a>
                                @include('load.cart')
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-7 col-xl-6 col-lg-6 col-12 order-lg-2">
                        <div class="product-search-one">

                            <form id="searchForm" class="search-form form-inline search-pill-shape"
                                action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}"
                                method="GET">

                                @if (!empty(request()->input('sort')))
                                    <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                                @endif
                                @if (!empty(request()->input('minprice')))
                                    <input type="hidden" name="minprice"
                                        value="{{ request()->input('minprice') }}">
                                @endif
                                @if (!empty(request()->input('maxprice')))
                                    <input type="hidden" name="maxprice"
                                        value="{{ request()->input('maxprice') }}">
                                @endif
                                <input type="text" id="prod_name" class="col form-control search-field "
                                    name="search" placeholder="{{ __('Search Product In Azrar') }}"
                                    value="{{ request()->input('search') }}">
                                <div class=" categori-container select-appearance-none " id="catSelectForm">
                                    <select name="category" class="form-control categoris select2-js-search-init">
                                        <option selected="">{{ __('All Categories') }}</option>
                                        @foreach ($categories->where('status', 1) as $data)
                                            <option value="{{ $data->slug }}"
                                                {{ Request::route('category') == $data->slug ? 'selected' : '' }}>
                                                {{ $data->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <button type="submit" name="submit" class="search-submit"><i
                                        class="flaticon-search flat-mini text-white"></i></button>

                            </form>



                        </div>
                    </div>
                </div>
            </div>
        </div>

    </header>
    @endif
</body>

<!--==================== Header Section End ====================-->

<script src="https://cdn.tailwindcss.com"></script>
<style>
    .owl-prev, .owl-next {
}
.product-color .color-list li {
    display: none;
    margin-right: 50;
    padding-left: 5px;
    padding-right: -7px;
}
</style>
<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3"
   style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
   <div class="container">
      <div class="row text-center text-white">  
         <div class="col-12">
            <h3 class="mb-2 text-white">{{ __('Product Details') }}</h3>
         </div>
         <div class="col-12">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                  <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ __('Product Details') }}</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>
<!-- breadcrumb -->
@include('partials.product-details.top')

<style>

   .visible-sec-mobile{
      display: none !important; 
   }
   @media screen and (max-width: 600px) {
       /* ******************* view tow card in mobile*/
       
        .response-saller .product-list .product-wrapper .product-image {
                width: 100% !important;
                height: auto !important;
            }
       /* ******************* view tow card in mobile end*/
      .visible-sec{
         display: none !important; 
      }
      .visible-sec-mobile{
         display: block !important; 
      }
      /* change font size  */
   .woocommerce-tabs .nav-pills .nav-link{
      font-size: 12px !important;
   }

   .visible-sec-mobile{
      display: flex !important;
      justify-content: space-between;
      font-size: 11px !important;
   }
   .visible-sec-mobile a{
      font-size: 8px !important;
   }
   .visible-sec-mobile .visible-mobile-size{
      width: 150px !important;
      display: flex;
      flex-direction: column;
      height: 225px !important;
      padding: 2px 13px 4px !important;
   }
   .pro-details-sidebar-item .btn--base {
      padding: 1px 5px ;
   }
   .pro-details-sidebar-item .sell-responseve a {
      padding: 5px 10px !important;
   }

   .price-summary .price-summary-content .price-summary-list {
    padding: 5px 10px 15px;
    height: 188px !important;
   }
   }
</style>
<!--==================== Product Description Section Start ====================-->
<div class="full-row">
   <div class="container">
    <div class="row justify-content-between" >
        <div class="col-lg-8">
            <div class="section-head border-bottom">
                <div class="woocommerce-tabs wc-tabs-wrapper ps-0">
                    <ul class="nav nav-pills wc-tabs" id="pills-tab-one" role="tablist">
                        <li class="nav-item pb-1" role="presentation">
                            <button class="nav-link tab-button tab-button-active" onclick="showTabContent(1)">
                                {{ __('Description') }}
                            </button>
                        </li>
                        <li class="nav-item pb-1" role="presentation">
                            <button class="nav-link tab-button" onclick="showTabContent(2)">
                                {{ __('Buy / Return Policy') }}
                            </button>
                        </li>
                        <li class="nav-item pb-1" role="presentation">
                            <button class="nav-link tab-button" onclick="showTabContent(3)">
                                {{ __('Reviews') }}
                            </button>
                        </li>
                        <li class="nav-item pb-1" role="presentation" style="margin-right: 20px;">
                            <button class="nav-link tab-button" onclick="showTabContent(4)">
                                {{ __('Comments') }}
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="woocommerce-tabs wc-tabs-wrapper ps-0 mt-0">
                <div class="tab-content" id="tab-content-1">
                    {!! clean($productt->details , array('Attr.EnableID' => true)) !!}
                </div>
                <div class="tab-content" id="tab-content-2">
                    <div class="row">
                        <div class="col-8">
                            {!! clean($productt->policy , array('Attr.EnableID' => true)) !!}
                        </div>
                    </div>
                </div>
                <div class="tab-content" id="tab-content-3">
                    @include('partials.product-details.reviews')
                </div>
                @if($gs->is_comment == 1)
                <div class="tab-content" id="tab-content-4">
                    @include('partials.product-details.comment-replies')
                </div>
                @endif
            </div>
        </div>
    </div>

    <script>
        function showTabContent(tabIndex) {
            var tabContents = document.querySelectorAll('.tab-content');
            tabContents.forEach(function(content) {
                content.style.display = 'none';
            });
            document.getElementById('tab-content-' + tabIndex).style.display = 'block';

            var tabButtons = document.querySelectorAll('.tab-button');
            tabButtons.forEach(function(button) {
                button.classList.remove('tab-button-active');
            });

            tabButtons[tabIndex - 1].classList.add('tab-button-active');
        }

        document.addEventListener('DOMContentLoaded', function() {
            showTabContent(1);
        });
    </script>
            {{-- -------------------------------------  Sold by responsive section start --}}

   <div class="visible-sec-mobile" >
      <div class="card pro-details-sidebar-item mb-4 visible-mobile-size ">
         <span>{{ __('Sold By') }}</span>
         <h5>@if( $productt->user_id  != 0)

           @if(isset($productt->user))
             {{ $productt->user->shop_name }}
           @endif
           @if($productt->user->checkStatus())
           <br>
           <a class="verify-link" href="javascript:;" data-toggle="tooltip" data-placement="top" title=""
             data-original-title="{{ __('Verified') }}">
             <i class="fas fa-check-circle"></i>
           </a>
           @endif
         @else
         {{ App\Models\Admin::find(1)->shop_name }}
         @endif</h5>
         @if( $productt->user_id  != 0)
         <h3>{{ App\Models\Product::where('user_id','=',$productt->user_id)->get()->count() }}</h3>
         @else
         <h3>{{ App\Models\Product::where('user_id','=',0)->get()->count() }}</h3>
         @endif
         <h6>{{ __('Total Items') }}</h6>

         @if( $productt->user_id  != 0)
       <li class="{{ $gs->is_contact_seller == 0 ? 'contact_seller' : '' }} cnt-sell sell-responseve">
         <a href="{{ route('front.vendor',str_replace(' ', '-', $productt->user->shop_name)).'?instore=1' }}" class="view-stor btn--base">
           <i class="icofont-ui-travel"></i>
           {{ __('Visit merchant page') }}
         </a>
     </li>

     @endif

     {{-- Visit Store Ends--}}

     @if($gs->is_contact_seller == 1)

       {{-- Contact Seller --}}
       @if(Auth::check())
         @if($productt->user_id != 0)
           <a class="view-stor btn--base" href="javascript:;" data-bs-toggle="modal" data-bs-target="#vendorform">
             <i class="icofont-ui-chat"></i>
             {{ __('Contact Seller') }}
           </a>
         @else
           <a class="view-stor btn--base" href="javascript:;" data-bs-toggle="modal" data-bs-target="#sendMessage">
             <i class="icofont-ui-chat"></i>
             {{ __('Contact Seller') }}
           </a>
         @endif
       @else
       <a class="view-stor btn--base" href="{{ route('user.login') }}" >
           <i class="icofont-ui-chat"></i>
           {{ __('Contact Seller') }}
         </a>
       @endif

     @endif

     <br>
     @if($productt->user_id != 0)
       @if(Auth::check())
           @if(Auth::user()->favorites()->where('vendor_id','=',$productt->user_id)->get()->count() > 0)

           <a class="fvrt btn--base" href="javascript:;">
               <i class="icofont-check"></i>
               {{ __('Favorite') }}
           </a>
           @else
           <a class="view-stor favorite-prod btn--base" href="javascript:;" data-href="{{ route('user-favorite',[Auth::user()->id,$productt->user_id]) }}">
               <i class="icofont-plus"></i>
               {{ __('Add To Favorite') }}
           </a>
           @endif

       @else

       <a class="view-stor btn--base" href="{{ route('user.login') }}" >
         <i class="icofont-plus"></i>
         {{ __('Add To Favorite') }}
       </a>

       @endif
     @endif

     {{-- Favorite Seller Ends--}}
      </div>
      @if(!empty($productt->whole_sell_qty))
      <div class="pro-summary mb-4 visible-mobile-size">
         <div class="price-summary">
            <div class="price-summary-content">
               <h5 class="text-center">{{ __('Wholesell') }}</h5>
               <ul class="price-summary-list">
                     <li class="regular-price"> <h6>{{ __('Quantity') }}</h6>
                        <span>
                           <span class="woocommerce-Price-amount amount"><h6>{{ __('Discount') }}</h6>
                        </span>
                        </span>
                     </li>
                     @foreach($productt->whole_sell_qty as $key => $data1)
                     <li class="selling-price"> <label>{{ $productt->whole_sell_qty[$key] }}+</label> <span><span class="woocommerce-Price-amount amount">{{ $productt->whole_sell_discount[$key] }}% {{ __('Off') }}
                        </span>
                        </span>
                     </li>
                     @endforeach
               </ul>
            </div>
         </div>
      </div>
      @endif



   </div>

{{-- -------------------------------------  Sold by responsive section end --}}
         </div>
      </div>

     
   </div>
</div>

</div>
<!--==================== Product Description Section End ====================- -->
@if($productt->user_id != 0 && $vendor_products->count() > 0)
<div class="full-row pt-0">
   <div class="container">
      <div class="row">
         <div class="col-12">
            <div class="section-head border-bottom d-flex justify-content-between align-items-end mb-2">
               <div class="d-flex section-head-side-title" style="margin-bottom: 30px">
                  <h4 class="font-600 text-dark mb-0">{{ __('Sellers Product') }}</h4>
               </div>
            </div>
         </div>
         <div class="col-12">
            <div
            
            class="product-style-2 owl-carousel owl-nav-hover-primary nav-top-right single-carousel dot-disable product-list e-bg-white">
               @foreach (App\Models\Product::where('type',$productt->type)->where('product_type',$productt->product_type)->withCount('ratings')
                 ->withAvg('ratings','rating')->take(12)->get() as $item)
               <div class="item">
                  <div class="product type-product">
                     <div class="product-wrapper1">
                        <div class="product-image" >
                          <a href="{{ route('front.product', $item->slug) }}"
                              class="woocommerce-LoopProduct-link">
                                 <img
                                   src="{{ $item->photo ? asset('assets/images/products/'.$item->photo):asset('assets/images/noimage.png')}}"
                                   alt="Product Image"></a>
                                   <!--<div class="on-sale">{{ round($item->offPercentage()),2}}%</div>-->
                                     <div class="hover-area">
                                         @if($item->product_type == "affiliate")
                                <div class="cart-button">
                                   <a href="javascript:;" data-href="{{ $item->affiliate_link }}"
                                      class="button add_to_cart_button affilate-btn" data-bs-toggle="tooltip"
                                      data-bs-placement="right" title=""
                                      data-bs-original-title="{{ __('Add To Cart') }}"
                                      aria-label="{{ __('Add To Cart') }}"></a>
                                </div>
                                @else
                                @if($item->emptyStock())
                                <div class="closed">
                                   <a class="cart-out-of-stock button add_to_cart_button" href="#"
                                      title="{{ __('Out Of Stock') }}"><i
                                         class="flaticon-cancel flat-mini mx-auto"></i></a>
                                </div>
                                @else
                                <div class="cart-button">
                                   <a href="javascript:;" data-href="{{ route('product.cart.add',$item->id) }}"
                                      class="add-cart button add_to_cart_button" data-bs-toggle="tooltip"
                                      data-bs-placement="right" title=""
                                      data-bs-original-title="{{ __('Add To Cart') }}"
                                      aria-label="{{ __('Add To Cart') }}"></a>
                                </div>
                                <!--  -->
                                @endif
                                @endif
                                   </div>
                        </div>
                        <div class="product-info">
                             <h3 class="product-title"><a href="{{ route('front.product', $item->slug) }}">
                                  <!--{{$item->showName()}}-->
                                 @if (app()->getLocale() === '17173493681JWu2JXL')
                                   {{ $item->name_ar }}
                                   @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                         @if (!empty($item->name_ku))
                                            {{ $item->name_ku }}
                                         @else
                                            {{ $item->name_ar }}
                                         @endif
                                   @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                         {{ $item->name }}
                                   @endif
                                   </a></h3>

                             <div class="product-price">
                                <div class="price">
                                   <ins>{{ $item->showPreviousPrice() }}</ins>
                                   <del>
                                   {{ $item->showPrice()}}</del>
                                </div>
                             </div>
                             <div class="shipping-feed-back">
                                <div class="star-rating">
                                   <div class="rating-wrap">
                                      <p><i class="fas fa-star"></i><span> {{
                                            number_format($item->ratings_avg_rating,1) }} ({{ $item->ratings_count }})</span></p>
                                   </div>
                                   <div class="rating-counts-wrap">
                                      <p></p>
                                   </div>
                                </div>
                             </div>
                          </div>

                     </div>
                  </div>
               </div>
               
               @endforeach
            </div>
         </div>
      </div>
   </div>
</div>
@endif


<style>
    .owl-prev, .owl-next {
        display: none !important;
    }
/* تحكم في عرض الكروت على الشاشات الكبيرة */
@media screen and (min-width: 1024px) {
    .product-style-2 .item {
      
        margin: 0px;
    }
   

 .product-wrapper1 {
        width: 120px; 
        height: 350px; 
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
   
     .product-image1 img {
        object-fit: cover;
        height: 150px; /* زيادة ارتفاع الصورة */
        width: 100px; 
    }
}x


/* تحكم في عرض الكروت على الشاشات الصغيرة (الجوال) */
@media screen and (max-width: 767px) {
     .header-cart-1, .search-view, .topbar-text.dropdown, .my-account-dropdown {
        display: flex !important; /* استمرار عرض الأيقونات بشكل طبيعي في الشاشات الصغيرة */
    }
    .product-wrapper1 {
         overflow: hidden;
        width: 100%;
        height: 100px; 
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
     .product-image1 img {
        object-fit: cover;
        height: 100px;
        width: 100%; 
    }
 
   
}

.product-wrapper {
    width: 100px; 
    height: 250px; /* قم بتعديل الارتفاع حسب الحاجة */
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.product-image img {
    object-fit: cover;
    height: 150px; /* تعديل الارتفاع لتناسب الارتفاع العام للـ div */
    width: 100px; 
}
.product.type-product{
    margin-right: 0;
}

.product type-product{
    margin: 0px;  
     width: 200px; 
     height: 250px; 
    
}
@media screen and (min-width: 1024px) {
    .owl-item {
        width: calc(100% / 7 - 10px); /* 7 عناصر بالسطر مع تقليل المسافة بين الكروت */
        margin-right: 0; /* تق
        ليل المسافات بين الكروت */
    }
}

@media screen and (max-width: 767px) {
    .product-wrapper {
        height: 150px; 
    }

    .product-image img {
        height: 150px;
    }
}

</style>







<!--==================== Related Products Section Start ====================-->
<div class="full-row pt-0">
   <div class="container">
      <div class="row">
         <div class="col-12">
            <div class="section-head border-bottom d-flex justify-content-between align-items-end mb-2">
               <div class="d-flex section-head-side-title" style="margin-bottom: 30px">
                  <h4 class="font-600 text-dark mb-0" >{{ __('Related Products') }}</h4>
               </div>
            </div>
         </div>
         
        
                  <div class="col-12">
            <div
            
            class="product-style-2 owl-carousel owl-nav-hover-primary nav-top-right single-carousel dot-disable product-list e-bg-white">
               @foreach (App\Models\Product::where('type',$productt->type)->where('product_type',$productt->product_type)->withCount('ratings')
                 ->withAvg('ratings','rating')->take(12)->get() as $item)
               <div class="item">
                  <div class="product type-product">
                     <div class="product-wrapper1">
                        <div class="product-image" >
                          <a href="{{ route('front.product', $item->slug) }}"
                              class="woocommerce-LoopProduct-link">
                                 <img
                                   src="{{ $item->photo ? asset('assets/images/products/'.$item->photo):asset('assets/images/noimage.png')}}"
                                   alt="Product Image"></a>
                                   <!--<div class="on-sale">{{ round($item->offPercentage()),2}}%</div>-->
                                     <div class="hover-area">
                                         @if($item->product_type == "affiliate")
                                <div class="cart-button">
                                   <a href="javascript:;" data-href="{{ $item->affiliate_link }}"
                                      class="button add_to_cart_button affilate-btn" data-bs-toggle="tooltip"
                                      data-bs-placement="right" title=""
                                      data-bs-original-title="{{ __('Add To Cart') }}"
                                      aria-label="{{ __('Add To Cart') }}"></a>
                                </div>
                                @else
                                @if($item->emptyStock())
                                <div class="closed">
                                   <a class="cart-out-of-stock button add_to_cart_button" href="#"
                                      title="{{ __('Out Of Stock') }}"><i
                                         class="flaticon-cancel flat-mini mx-auto"></i></a>
                                </div>
                                @else
                                <div class="cart-button">
                                   <a href="javascript:;" data-href="{{ route('product.cart.add',$item->id) }}"
                                      class="add-cart button add_to_cart_button" data-bs-toggle="tooltip"
                                      data-bs-placement="right" title=""
                                      data-bs-original-title="{{ __('Add To Cart') }}"
                                      aria-label="{{ __('Add To Cart') }}"></a>
                                </div>
                                <!--  -->
                                @endif
                                @endif
                                   </div>
                        </div>
                        <style>
                            .product-info{
                                margin-bottom: 100px;
                            }
                        </style>
                        <div class="product-info">
                             <h3 class="product-title"><a href="{{ route('front.product', $item->slug) }}">
                                  <!--{{$item->showName()}}-->
                                 @if (app()->getLocale() === '17173493681JWu2JXL')
                                   {{ $item->name_ar }}
                                   @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                         @if (!empty($item->name_ku))
                                            {{ $item->name_ku }}
                                         @else
                                            {{ $item->name_ar }}
                                         @endif
                                   @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                         {{ $item->name }}
                                   @endif
                                   </a></h3>

                             <div class="product-price">
                                <div class="price">
                                   <ins>{{ $item->showPreviousPrice() }}</ins>
                                   <del> {{ $item->showPrice()}}</del>
                                </div>
                             </div>
                             <div class="shipping-feed-back">
                                <div class="star-rating">
                                   <div class="rating-wrap">
                                      <p><i class="fas fa-star"></i><span> {{
                                            number_format($item->ratings_avg_rating,1) }}  ({{ $item->ratings_count }})</span>
                                             </p>
                                   </div>
                                   <div class="rating-counts-wrap">
                                     
                                   </div>
                                </div>
                             </div>
                          </div>

                     </div>
                  </div>
               </div>
               
               @endforeach
            </div>
         </div>
      </div>
   </div>
</div>
<!--==================== Related Products Section End ====================-->



@includeIf('partials.global.common-footer')


@if($gs->is_report)

@if(Auth::check())

{{-- REPORT MODAL SECTION --}}

<div class="modal fade report" id="report-modal" tabindex="-1" role="dialog" aria-labelledby="report-modal-Title"
   aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">

            <div class="gocover"
               style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);">
            </div>

            <div class="login-area">
               <div class="header-area forgot-passwor-area">
                  <h4 class="title text-center">{{ __(('REPORT PRODUCT'))}}</h4>
                  <p class="text">{{ __('Please give the following details')}}</p>
               </div>
               <div class="login-form">

                  <form id="reportform" action="{{ route('product.report') }}" method="POST">

                     @include('includes.admin.form-login')

                     {{ csrf_field() }}
                     <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                     <input type="hidden" name="product_id" value="{{ $productt->id }}">
                     <div class="form-input">
                        <input type="text" name="title" class="User Name form-control border"
                           placeholder="{{ __('Enter Report Title') }}" required="">

                     </div>
                     <br>

                     <div class="form-input">
                        <textarea name="note" class="User Name form-control border"
                           placeholder="{{ __('Enter Report Note') }}" required=""></textarea>
                     </div>

                     <button type="submit" class="submit-btn">{{ __('SUBMIT') }}</button>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

{{-- REPORT MODAL SECTION ENDS --}}

@endif

@endif
@endsection

@section('script')

<script src="{{ asset('assets/front/js/jquery.elevatezoom.js') }}"></script>
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Include Owl Carousel JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
    $(document).ready(function() {
        var owl = $('#related-products-carousel');
        owl.owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            dots: false,
            responsive: {
                0: {
                    items: 3
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 5
                }
            }
        });
    });
    </script>
<!-- Initializing the slider -->


{{-- <script type="text/javascript">
   (function($) {
		"use strict";

         //initiate the plugin and pass the id of the div containing gallery images
      $("#single-image-zoom").elevateZoom({
         gallery: 'gallery_09',
         zoomType: "inner",
         cursor: "crosshair",
         galleryActiveClass: 'active',
         imageCrossfade: true,
         loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif'
      });
      //pass the images to Fancybox
      $("#single-image-zoom").bind("click", function(e) {
         var ez = $('#single-image-zoom').data('elevateZoom');
         $.fancybox(ez.getGalleryList());
         return false;
      });

          $(document).on("submit", "#emailreply" , function(){
          var token = $(this).find('input[name=_token]').val();
          var subject = $(this).find('input[name=subject]').val();
          var message =  $(this).find('textarea[name=message]').val();
          var email = $(this).find('input[name=email]').val();
          var name = $(this).find('input[name=name]').val();
          var user_id = $(this).find('input[name=user_id]').val();
          $('#eml').prop('disabled', true);
          $('#subj').prop('disabled', true);
          $('#msg').prop('disabled', true);
          $('#emlsub').prop('disabled', true);
     $.ajax({
            type: 'post',
            url: "{{URL::to('/user/user/contact')}}",
            data: {
                '_token': token,
                'subject'   : subject,
                'message'  : message,
                'email'   : email,
                'name'  : name,
                'user_id'   : user_id
                  },
            success: function( data) {
          $('#eml').prop('disabled', false);
          $('#subj').prop('disabled', false);
          $('#msg').prop('disabled', false);
          $('#subj').val('');
          $('#msg').val('');
          $('#emlsub').prop('disabled', false);
        if(data == 0)
          toastr.error("Email Not Found");
        else
          toastr.success("Message Sent");
          $('#vendorform').modal('hide');
            }
        });
          return false;
        });

})(jQuery);

$('.add-to-affilate').on('click',function(){

  var value = $(this).data('href');
  var tempInput = document.createElement("input");
  tempInput.style = "position: absolute; left: -1000px; top: -1000px";
  tempInput.value = value;
  document.body.appendChild(tempInput);
  tempInput.select();
  document.execCommand("copy");
  document.body.removeChild(tempInput);
  toastr.success('Affiliate Link Copied');

  });

</script> --}}

<script>
    $(document).ready(function() {
        var owl1 = $('.product-style-2.owl-carousel');
        owl1.owlCarousel({
            loop: true,
            margin: 5, // تقليل المسافة بين الكروت
            nav: false,
            dots: false,
            responsive: {
                0: {
                    items: 3
                },
                600: {
                    items: 4
                },
                1000: {
                    items: 8 // عرض 7 عناصر على الشاشات الكبيرة
                }
            }
        });
    });
</script>

<script>
$(document).ready(function() {
    var owl = $('#related-products-carousel');
    owl.owlCarousel({
        loop: true,
        margin: 5, // تقليل المسافة بين الكروت
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 3 // عرض 3 كروت في الشاشات الصغيرة
            },
            600: {
                items: 3 // عرض 3 كروت في الشاشات المتوسطة
            },
            1000: {
                items: 7 // عرض 7 كروت في الشاشات الكبيرة
            }
        }
    });
});
</script>
@endsection
