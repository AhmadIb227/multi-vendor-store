<head>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200..1000&family=Noto+Kufi+Arabic:wght@100..900&family=Tajawal:wght@200;300;400;500;700;800;900&family=Zain:wght@200;300;400;700;800;900&display=swap" rel="stylesheet">
</head>
<style>

    

    body{
             font-family: "Noto Kufi Arabic", sans-serif;
          font-optical-sizing: auto;
        }
</style>


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
 
 
 @else
 <style>
    @media (max-width: 767px) {
 .text-capitalize{
         margin-left: 5px;
 }    }
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

<style>
    .full-row{
            padding-top: 10px;
                padding-bottom: 70px;
        }
</style>
<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
   <div class="container">
      <div class="row text-center text-white">
         <div class="col-12">
            <h3 class="mb-2 text-white">{{ __('Product') }}</h3>
         </div>
         <div class="col-12">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                  <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ __('Product') }}</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>
<!-- breadcrumb -->
{{-- There are two product page. you have to give condition here --}}
<div class="full-row">
   <div class="container">
      <div class="row">
         @includeIf('partials.catalog.catalog')
         @if (count($prods) > 0)
         <div class="col-xl-9">
             <div class="mb-4 d-xl-none">
            <button class="dashboard-sidebar-btn btn  rounded"  style="background-color:7367F0">
                <i class="fas fa-bars"></i>
            </button>
        </div>
            @includeIf('frontend.category')
            <div class="showing-products pt-30 pb-50 border-2 border-bottom border-light" id="ajaxContent">
               @includeIf('partials.product.product-different-view')
            </div>
            @include('frontend.pagination.product')
         </div>
         @else
         <div class="col-lg-9">
            <div class="card">
               <div class="card-body">
                  <div class="page-center">
                     <h4 class="text-center">{{ __('No Product Found.') }}</h4>
                  </div>
               </div>
            </div>
         </div>
         @endif
      </div>
   </div>
</div>
{{-- @includeIf('partials.product.grid') --}}
@includeIf('partials.global.common-footer')
@endsection
@section('script')
<script>

   let check_view = '';
   $(document).on('click','.check_view',function(){
       check_view = $(this).attr('data-shopview');
       filter();
       $('.check_view').removeClass('active');
       $(this).addClass('active');


   });


   // when dynamic attribute changes
   $(".attribute-input, #sortby, #pageby").on('change', function() {
     $(".ajax-loader").show();
     filter();
   });


   function filter() {
   let filterlink = '';

   if ($("#prod_name").val() != '') {
     if (filterlink == '') {
       filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?search='+$("#prod_name").val();
     } else {
       filterlink += '&search='+$("#prod_name").val();
     }
   }



   $(".attribute-input").each(function() {
     if ($(this).is(':checked')) {

       if (filterlink == '') {
         filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$(this).attr('name')+'='+$(this).val();
       } else {
         filterlink += '&'+encodeURI($(this).attr('name'))+'='+$(this).val();

       }
     }
   });

   if ($("#sortby").val() != '') {
     if (filterlink == '') {
       filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$("#sortby").attr('name')+'='+$("#sortby").val();
     } else {
       filterlink += '&'+$("#sortby").attr('name')+'='+$("#sortby").val();
     }
   }


   if ($("#min_price").val() != '') {
     if (filterlink == '') {
       filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$("#min_price").attr('name')+'='+$("#min_price").val();
     } else {
       filterlink += '&'+$("#min_price").attr('name')+'='+$("#min_price").val();
     }
   }

   if ($("#max_price").val() != '') {
     if (filterlink == '') {
       filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$("#max_price").attr('name')+'='+$("#max_price").val();
     } else {
       filterlink += '&'+$("#max_price").attr('name')+'='+$("#max_price").val();
     }
   }


   if ($("#pageby").val() != '') {
     if (filterlink == '') {
       filterlink += '{{route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')])}}' + '?'+$("#pageby").attr('name')+'='+$("#pageby").val();
     } else {
       filterlink += '&'+$("#pageby").attr('name')+'='+$("#pageby").val();
     }
   }

   if(check_view){

       filterlink+= '&view_check='+check_view;
   }
   $("#ajaxContent").load(encodeURI(filterlink), function(data) {
     // add query string to pagination
      addToPagination();
     $(".ajax-loader").fadeOut(1000);
   });
   }

   //   append parameters to pagination links
   function addToPagination() {


   // add to attributes in pagination links
   $('ul.pagination li a').each(function() {
     let url = $(this).attr('href');
     let queryString = '?' + url.split('?')[1]; // "?page=1234...."

     let urlParams = new URLSearchParams(queryString);
     let page = urlParams.get('page'); // value of 'page' parameter

     let fullUrl = '{{route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')])}}?page='+page+'&search='+'{{urlencode(request()->input('search'))}}';

     $(".attribute-input").each(function() {
       if ($(this).is(':checked')) {
         fullUrl += '&'+encodeURI($(this).attr('name'))+'='+encodeURI($(this).val());
       }
     });

     if ($("#sortby").val() != '') {
       fullUrl += '&sort='+encodeURI($("#sortby").val());
     }

     if ($("#min_price").val() != '') {
       fullUrl += '&min='+encodeURI($("#min_price").val());
     }

     if ($("#max_price").val() != '') {
       fullUrl += '&max='+encodeURI($("#max_price").val());
     }

     if ($("#pageby").val() != '') {
       fullUrl += '&pageby='+encodeURI($("#pageby").val());
     }


     $(this).attr('href', fullUrl);
   });
   }

</script>
<script type="text/javascript">
   (function($) {
   		"use strict";

     $(function () {
       $("#slider-range").slider({
       range: true,
       orientation: "horizontal",
       min: {{ $gs->min_price }},
       max: {{ $gs->max_price }},
       values: [{{ isset($_GET['min']) ? $_GET['min'] : $gs->min_price }}, {{ isset($_GET['max']) ? $_GET['max'] : $gs->max_price }}],
       step: 1,

       slide: function (event, ui) {
         if (ui.values[0] == ui.values[1]) {
           return false;
         }

         $("#min_price").val(ui.values[0]);
         $("#max_price").val(ui.values[1]);
       }
       });

       $("#min_price").val($("#slider-range").slider("values", 0));
       $("#max_price").val($("#slider-range").slider("values", 1));

     });

   })(jQuery);

</script>
@endsection
