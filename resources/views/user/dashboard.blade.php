@extends('layouts.front')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/front/css/datatables.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <head>
    <script src="" defer></script>
</head>
    <style>
      .mr-2{
          margin-left: 10px;
      }
       
        .copy-button {
            background-color: transparent;
            border: none;
            cursor: pointer;
            margin-top: 10px;
            color: #C0C0C0;
            font-size: 1.2em;
        }

        .copy-button:focus {
            outline: none;
        }

        .copy-button:hover {
            color: #000000;
            transform: scale(1.1);
        }

        .copy-button:active {
            transform: scale(1);
        }

    </style>
@endsection
@section('content')
<script>
     document.addEventListener('DOMContentLoaded', function() {
        var messageDiv = document.createElement('div');
        messageDiv.style.position = 'fixed';
        messageDiv.style.top = '0';
        messageDiv.style.left = '4';
        messageDiv.style.width = '100%';
        messageDiv.style.backgroundColor = 'rgba(0, 0, 10, 0.8)';
        messageDiv.style.color = 'white'; /* تغيير اللون إلى أبيض */
        messageDiv.style.textAlign = 'center';
        messageDiv.style.padding = '10px';
        messageDiv.style.zIndex = '10000';
        messageDiv.innerHTML = 'تهانينا، أنت حصلت على باقة مجانية ';

        document.body.insertBefore(messageDiv, document.body.firstChild);

        setTimeout(function() {
            messageDiv.style.display = 'none';
        }, 5000);
    });
</script>
{{-- @include('partials.global.common-header') --}}
@php
    $vendor_id_visit = Session::has('shop_id') ? Session::get('shop_id') : null;
@endphp
<!--==================== Header Section Start ====================-->
@if ((Session::has('in_azrar') && Session::get('in_azrar') == 1) || !Session::has('in_azrar'))
    <style>
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
                border-radius: 3px;   
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
                                            <div class="tab-content" id="menu-and-categoryContent">
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
                                                                            width="5" style="margin-right: 10px;"
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
                                                                                <img class="mr-22" width="5"     style="margin-right: 10px;"
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

<!-- breadcrumb -->
 <div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
   <div class="container">
   <div class="row text-center text-white">
           <div class="col-12">
            <h3 class="mb-2 text-white">{{ __('Dashboard') }}</h3>
         </div>
      </div>
   </div>
</div>
<!-- breadcrumb -->
<!--==================== Blog Section Start ====================-->


<!--==================== Pricing Plans Section Start ====================-->

{{-- -------------------------------------- --}}


{{-- -------------------------------------- --}}
 {{-- Pakeges --}}
 
       <br>
      <div class="row">
         <div class="col-xl-4">
            @include('partials.user.dashboard-sidebar')
         </div>
         <div class="col-xl-8">
            @if (Session::has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
               <strong>{{__('Success')}}</strong> {{Session::get('success')}}
            </div>
            @endif

            <div class="container " >
               <div class="mb-4 d-xl-none">
                   <button class="dashboard-sidebar-btn btn bg-primary rounded">
                       <i class="fas fa-bars"></i>
                   </button>
               </div>
              {{-- pakegse --}}

              <div class="row">

               <div class="col-12">
                   <div class="user-profile-details">


                     <div class="pricing-wrapper d-flex flex-nowrap overflow-auto">
                           @php
                            try {
                           @endphp
                           @foreach($subs as $sub)
                           <div class="pricing-item flex-grow-1 mx-2" style="min-width: 200px; flex-basis: 200px;">
                               <div class="elegant-pricing-tables style-2 text-center">
                                   <div class="pricing-head">
                                       <h3>{{ $sub->title }}</h3>
                                       @if($sub->price == 0)
                                       <span class="price" style="display: inline-flex; background-color: #143250; padding: 10px 20px; border-radius: 10px; width: 180px; height: 110px; text-align: center; align-items: center; justify-content: center;">
                                           <span class="price-digit" style="font-size: 22px;">{{ __('Free') }}</span>
                                       </span>
                                       @else
                                       <span class="price" style="display: inline-flex; flex-direction: column; background-color: #143250; padding: 10px 20px; border-radius: 10px; width: 180px; height: 110px; align-items: center; justify-content: center;">
                                           <span class="price-digit" style="font-size:    22px;">
                                            {{ round($sub->price * $curr->value, 2) }}
                                            </span>
                                            <br>
                                            <span class="price-currency" style="font-size: 15px;">
                                                {{ $curr->sign }}
                                            </span>
                                       </span>
                                       <p class="price-month">
                                        {{ $sub->days }} {{ __('Day(s)') }}
                                        </p>
                                       @endif
                                   </div>
                                   <div class="pricing-detail">
                                       <ul class="list-unstyled text-center">
                                           @foreach($sub->features as $feature)
                                           <li class="d-flex align-items-center justify-content-start mb-2">
                                               @if($feature->has_icon)
                                               <i class="fas fa-check text-success mr-2" style="margin-left: 15px;"></i>
                                               @else
                                               <i class="fas fa-times text-danger mr-2" style="margin-left: 15px;"></i>
                                               @endif
                                               <span>{{ $feature->name_en }}</span>
                                               <!--<span>{{ $feature->name_ar }}</span>-->
                                               <!--<span>{{ $feature->name_kr }}</span>-->
                                           </li>
                                           @endforeach
                                       </ul>
                                   </div>
                                   @if(!empty($package))
                                   @if($package->subscription_id == $sub->id)
                                   <a href="javascript:;" class="btn btn-default" style="background-color: #143250; color: #ffffff">{{ __('Current Plan') }}</a>
                                   <br>
                                   @if(Carbon\Carbon::now()->format('Y-m-d') > $user->date)
                                   <small class="hover-white">{{ __('Expired on:') }} {{ date('d/m/Y', strtotime($user->date)) }}</small>
                                   @else
                                   <small class="hover-white">{{ __('Ends on:') }} {{ date('d/m/Y', strtotime($user->date)) }}</small>
                                   @endif
                                   <a href="{{ route('user-vendor-request', $sub->id) }}" class="hover-white"><u>{{ __('Renew') }}</u></a>
                                   @else
                                   <a href="{{ route('user-vendor-request', $sub->id) }}" class="btn btn-default" style="background-color: #143250; color: #ffffff">{{ __('Get Started') }}</a>
                                   <br><small>&nbsp;</small>
                                   @endif
                                   @else
                                   <a href="{{ route('user-vendor-request', $sub->id) }}" class="btn btn-default">{{ __('Get Started') }}</a>
                                   <br><small>&nbsp;</small>
                                   @endif
                               </div>
                           </div>
                           @endforeach
                           @php
                           } catch (\Exception $e) {
                               echo '<div class="alert alert-success">حدث خطأ أثناء عرض الباقات. يرجى المحاولة لاحقاً.<br>تفاصيل الخطأ: ' . $e->getMessage() . '</div>';
                           }
                           @endphp

                       </div>
                     </div>
               </div>
           </div>



              </div>
              <br>
         {{--  End  Pakeges --}}
            <div class="container">




               <div class="row">
                  <!-- Account Information Section -->
                  <div class="col-lg-6 mb-3">
                     <div class="widget border-0 p-3 bg-light account-info">
                        <h4 class="widget-title mb-3">{{ __('Account Information') }}</h4>
                        <div class="user-info">
                             <span class="user-title">{{ __('Name') }} :</span>
                                <span class="info-value">{{ $user->name }}</span>
                           <div class="info-item">
                              <span class="user-title">{{ __('Email') }} :</span>
                              <span class="info-value">{{ $user->email }}</span>
                           </div>
                           {{-- <button class="copy-button" onclick="copyToClipboard()"><i class="fa fa-copy"></i></button> --}}
                           <div class="info-item">
                              <span class="user-title"> {{ __('Referral Link') }} :    <button class="copy-button" onclick="copyToClipboard()"><i class="fa fa-copy"></i></button> </span>

                              {{-- <span class="info-value" id="referralLink">{{ $user->referral_link }}</span> --}}

                           </div>
                           <div class="info-item">

                              <span class="info-value" id="referralLink">{{ $user->referral_link }}</span>

                           </div>
                           <div class="info-item">
                              <span class="user-title">{{ __('Phone') }} :</span>
                              <span class="info-value">{{ $user->phone }}</span>
                           </div>
                            @if($user->address != null)
                           <div class="info-item">
                              <span class="user-title">{{ __('Address') }} :</span>
                              <span class="info-value">{{ $user->address }}</span>
                           </div>
                           @endif
                           <div class="info-item">
                              <span class="user-title">{{ __('points user') }} :</span>
                              <span class="info-value">{{ $user->points_user }}</span>
                           </div>
                           @if($user->phone != null)
                           <div class="info-item">
                              <span class="user-title">{{ __('points vendor') }} :</span>
                              <span class="info-value">{{ $user->points_vendor }}</span>
                           </div>
                           @endif
                           @if($user->fax != null)
                           <div class="info-item">
                              <span class="user-title">{{ __('Phone Number2') }} :</span>
                              <span class="info-value">{{ $user->fax }}</span>
                           </div>
                           @endif
                           @if($user->city != null)
                           <div class="info-item">
                              <span class="user-title">{{ __('City') }} :</span>
                              <span class="info-value">{{ $user->city }}</span>
                           </div>
                           @endif
                          
                        </div>
                     </div>
                  </div>

                  <!-- Join as Vendor Section -->
                  @if ($user->is_vendor != 1)
                  <div class="col-lg-6 mb-3">
                     <div class="widget border-0 p-3 bg-light account-info">
                        <h4 class="widget-title mb-3">{{ __('Join as Vendor') }}</h4>
                        <div class="user-info1">
                        <br><br><br>
                           <h5 class="title"> {{ __('Welcome') }} :    {{ $user->name }}</h5>
                           <br>
                           <div class="col-lg-8 d-flex">
                              <ul class="top-links d-flex ms-auto align-items-center">
                                 @if (Auth::guard('web')->check() && Auth::guard('web')->user()->is_vendor == 2)
                                 <li><a class="border px-3 py-1" href="{{route('vendor.dashboard')}}">{{__('Join to your store')}}</a></li>
                                 @else
                                 <li><a class="border px-3 py-1" href="{{route('vendor.register')}}">{{__('Create your store')}}</a></li>
                                 @endif
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>

                  @else
                  <div class="col-lg-6 mb-3">
                     <div class="widget border-0 p-3 bg-light account-info">
                        <h3 class="widget-title mb-3"></h4>
                        <div class="user-info">
                        <br><br><br>
                           <h5 class="title" style="color:green"> {{ __('WELCOME TO AZRAR PLATFORM ')  }}</h5>
                           <h5 class="title"  style="color:green" > {{ __('YOUR STORE WILL BE ACTIVE IN 24 HOURS')}}</h5>
                           <br>
                           <div class="col-lg-8 d-flex">
                              <ul class="top-links d-flex ms-auto align-items-center">


                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  @endif

               </div>
            </div>

            <style>
               .widget {
                  background-color: #f8f9fa;
                  border-radius: .25rem;
                  min-height: 400px;
               }

               .widget-title {
                  font-size: 1.25rem;
                  font-weight: 500;

               }
                @media (max-width: 768px) {
               .user-info1 {
                   margin-top: -50;
                   width: 250px;
                
               }}

               .user-info {
                   
                  margin-top: .5rem;
               }

               .info-item {
                  display: flex;
                  justify-content: space-between;
                  padding: .5rem 0;
                  border-bottom: 1px solid #e9ecef;
               }

               .info-value {
                  flex: 1;
                  text-align: right;
               }


               .copy-button {
                  background-color: transparent;
                  border: none;
                  cursor: pointer;
                  color: #C0C0C0;
                  font-size: 1.2em;
               }

               .copy-button:focus {
                  outline: none;
               }

               .copy-button:hover {
                  color: #A9A9A9;
                  transform: scale(1.1);
               }

               .copy-button:active {
                  transform: scale(1);
               }

               @media (max-width: 768px) {
                  .col-lg-6 {
                     flex: 0 0 100%;
                     max-width: 100%;
                  }
                  
                  .widget {
                  background-color: #f8f9fa;
                  border-radius: .25rem;
                  min-height: 200px;
               }
               }
            </style>

            {{-- Statistic section --}}
            <div class="row mt-3">
               <div class="col-lg-6">
                  <div class="widget border-0 p-30 widget_categories bg-light account-info card c-info-box-area">
                     <div class="c-info-box box2">
                        <p>{{ Auth::user()->orders()->count() }}</p>
                     </div>
                     <div class="c-info-box-content">
                        <h6 class="title">{{ __('Total Orders') }}</h6>
                        <p class="text">{{ __('All Time') }}</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="widget border-0 p-30 widget_categories bg-light account-info card c-info-box-area">
                     <div class="c-info-box box1">
                        <p>{{ Auth::user()->orders()->where('status','pending')->count() }}</p>
                     </div>
                     <div class="c-info-box-content">
                        <h6 class="title">{{ __('Pending Orders') }}</h6>
                        <p class="text">{{ __('All Time') }}</p>
                     </div>
                  </div>
               </div>
            </div>
            {{-- Statistic section End--}}
            <div class="row table-responsive-lg mt-3">
               <div class="col-lg-12">
                  <div class="widget border-0 p-30 widget_categories bg-light account-info">
                     <h4 class="widget-title down-line mb-30">{{ __('Recent Orders') }}</h4>
                     <div class="table-responsive">
                        <table class="table order-table" cellspacing="0" width="100%">
                           <thead>
                              <tr>
                                 <th>{{ __('#Order') }}</th>
                                 <th>{{ __('Date') }}</th>
                                 <th>{{ __('Order Total') }}</th>
                                 <th>{{ __('Order Status') }}</th>
                                 <th>{{ __('View') }}</th>
                              </tr>
                           </thead>
                           <tbody>
                              @foreach(Auth::user()->orders()->latest()->take(5)->get() as $order)
                              <tr>
                                 <td data-label="{{ __('#Order') }}">
                                    <div>
                                       {{$order->order_number}}
                                    </div>
                                 </td>
                                 <td data-label="{{ __('Date') }}">
                                    <div>
                                       {{date('d M Y',strtotime($order->created_at))}}
                                    </div>
                                 </td>
                                 <td data-label="{{ __('Order Total') }}">
                                    <div>
                                       {{ \PriceHelper::showAdminCurrencyPrice(($order->pay_amount  * $order->currency_value),$order->currency_sign) }}
                                    </div>
                                 </td>
                                 <td data-label="{{ __('Order Status') }}">
                                    <div class="order-status {{ $order->status }}">
                                       {{ucwords($order->status)}}
                                    </div>
                                 </td>
                                 <td data-label="{{ __('View') }}">
                                    <div>
                                       <a class="mybtn1 sm1" href="{{route('user-order',$order->id)}}">
                                          {{ __('View Order') }}
                                       </a>
                                    </div>
                                 </td>
                              </tr>
                              @endforeach
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   function copyToClipboard() {

       var copyText = document.getElementById("referralLink").innerText;


       var tempInput = document.createElement("input");
       tempInput.style.position = "absolute";
       tempInput.style.left = "-9999px";
       tempInput.value = copyText;
       document.body.appendChild(tempInput);


       tempInput.select();
       tempInput.setSelectionRange(0, 99999);


       document.execCommand("copy");


       document.body.removeChild(tempInput);


       alert("Copied to clipboard: " + copyText);
   }
</script>
<!--==================== Blog Section End ====================-->
@includeIf('partials.global.common-footer')
@endsection

@section('script')

<script type="text/javascript">
  $('.pricing-detail font').removeAttr('color');

  // Add animation on hover
  $('.elegant-pricing-tables').hover(
    function() {
      $(this).addClass('animated pulse');
    },
    function() {
      $(this).removeClass('animated pulse');
    }
  );

</script>

<style>
.pricing-wrapper::-webkit-scrollbar {
    width: 8px;
    height: 8px;
}

.pricing-wrapper::-webkit-scrollbar-track {
    background: #f1f1f1;
}

.pricing-wrapper::-webkit-scrollbar-thumb {
    background: #cecccc;
    border-radius: 4px;
    border: 2px solid #f1f1f1;
}

.pricing-wrapper::-webkit-scrollbar-thumb:hover {
    background: #a15454;
}

.pricing-wrapper {
    scrollbar-width: thin;
    scrollbar-color: #cecccc #f1f1f1;
}
.elegant-pricing-tables{
    width: 200px;
    height: 2200px;
}
</style>
