@extends('layouts.front')
@section('content')
    
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

@if($curr_lang->rtl != 1)
<style>

 @media (max-width 400px) {
     
    .form-container{
        
        margin-top: -10px
    
    }
 }
</style>

@endif
    <div class="bg-white shadow  d-flex ">
     <div class="container mx-auto px-4 flex items-center space-x-4 responsive">
    @php
    $vendor = Auth::user();
@endphp

@if(Auth::check())
<img src="{{ asset("assets/images/users/" . $vendor->photo) }}" class="w-10 h-10 rounded-full">
@else
    <img src="{{ asset("assets/images/1720711542JPG-02jpg.jpg") }}" class="w-11 h-11 rounded-full">
@endif

      <div>
       
        <div class="flex space-x-4 mt-2">

          {{-- <div class="text-zinc-600">4.2 Average Product Score</div>
          <div class="text-zinc-600">2248 Product Reviews</div>
          <div class="text-zinc-600">96.0K Followers</div>
          <button class="bg-orange-500 text-white px-4 py-2 rounded-lg">Follow</button> --}}
        </div>

      </div>
     <div class="container mx-auto px-1 py-2 flex space-x-4 res-nav-lg">
    <a href="https://ealanatek.site/" class="text-zinc-800 hover:text-orange-500 ms-2" onclick="openTab(event, 'tab1')">{{__('Home')}}</a>
    <a href="#" class="text-zinc-800 hover:text-orange-500" onclick="openTab(event, 'tab1')">{{__('All Products')}}</a>
    <a href="{{ route('front.contact') }}" class="text-zinc-800 hover:text-orange-500" onclick="openTab(event, 'tab2')">{{__('Contact Us')}}</a>
    <a href="{{ route('aboutus.show') }}" class="text-zinc-800 hover:text-orange-500" onclick="openTab(event, 'tab3')">{{__('About Us')}}</a>
</div>

      <div class="container mx-auto px-4 py-2 flex space-x-4 res-nav menu-mobile">
          <style>
          @media screen and (max-width: 991.98px) {
    .dropdown-toggle::after {
        right: 40px;
        top: 40%;
        position: absolute;
    }
}
        @media (max-width: 767px) {
            .dropdown-menu {
                padding: 0;  
                margin: 0; 
                border: none; 
                box-shadow: none; 
                width: auto; 
                min-width: auto; 
                margin-left: -15px;
            }

            .dropdown-item {
                padding: 8px 10px;  
                font-size: 14px; 
                white-space: nowrap; 
                line-height: 1;
            }

            .dropdown-toggle {
                
                display: flex;
                align-items: center;
                justify-content: space-between;
                width: 100%;
            }

            .my-toggl-icon {
                margin-left: auto;
            }
        }

        @media (min-width: 768px) {
            .menu-mobile {
                display: none;
            }
        }
        
    </style>
    
     <div class="dropdown">
       
        <a class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <p>{{__('Menu')}}</p>
            <div class="my-toggl-icon"></div>
        </a>
        <div class="dropdown-menu bg-white" style="top: 10px; right: 100px;" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="https://ealanatek.site/" onclick="openTab(event, 'tab1')">{{__('Home')}}</a>
            <a class="dropdown-item" href="#" onclick="openTab(event, 'tab1')">{{__('All Products')}}</a>
            <a class="dropdown-item" href="{{ route('front.contact') }}" onclick="openTab(event, 'tab2')">{{__('Contact Us')}}</a>
            <a class="dropdown-item" href="{{ route('aboutus.show') }}" onclick="openTab(event, 'tab3')">{{__('About Us')}}</a>
        </div>
    </div>
</div>
    </div>
    <div class="container mx-auto px-2 py-6 flex items-center space-x-4">
        <div class="margin-right-1 d-flex align-items-center justify-content-end h-100 w-100" style="margin-left: auto;">
          <div class="product-search-one flex-grow-1 global-search touch-screen-view">
            <form id="searchForm" class="search-form form-inline search-pill-shape"
                action="{{ route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')]) }}"
                method="GET">
                <input type="hidden" name="vendor_id" value="">

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

                <button type="submit" name="submit" class="search-submit"><i
                        class="flaticon-search flat-mini text-white"></i></button>

            </form>
          </div>
              <div class="autocomplete">
                <div id="myInputautocomplete-list" class="autocomplete-items"></div>
            </div>


            <ul class="top-links d-flex align-items-center">
                
                
              <li class="my-account-dropdown">
                @php
                    $languges = App\Models\Language::all();
                @endphp
                <style>
                   a.topbar-link.dropdown-toggle.px-2::after {
    right: -1px;    
   }


                </style>
                
                <div class="topbar-text dropdown disable-autohide __language-bar text-capitalize">
                    <a class="topbar-link dropdown-toggle px-2" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=
                    "display: flex;">
                        @php
                            $curr_lang = Session::has('language') ? App\Models\Language::find(Session::get('language')):  App\Models\Language::first();
                        @endphp
                        <!--<img class="mr-2" width="35" src="{{asset('assets/flags/'.$curr_lang->language.'.png')  }}" alt="{{$curr_lang->language}}">-->
                        {{$curr_lang->language}}
                    </a>
                    <style>

.dropdown-menu .dropdown-item img {
    width: 25px; /* تقليل العرض */
    height: auto; /* الحفاظ على نسبة العرض إلى الارتفاع */
    margin-right: 5px; /* إضافة مسافة صغيرة بين العلم والنص */
}


/* إضافة خلفية للقائمة المنسدلة */
.dropdown-menu {
    background-color: #ffffff; 
    border: 1px solid #ddd; 
    padding: 10px; 
}
@media (max-width: 1366px) {
    .my-account-popup{
        margin-right: 370px;
}
}
@media (max-width: 400px) {
    .my-account-popup{
              margin-right: 0px;
}
.tabs{
        margin-top: 10px
    }
}


@media (max-width: 767px) {
    .has-dropdown{
         margin-left: 10px;
     }
    .dropdown-menu {
        padding: 8px; /* تعديل حجم الحشوة للعناصر */
    }
    
    .dropdown-item {
        padding: 8px 12px; /* تعديل حجم الحشوة للعناصر */
        font-size: 14px; /* تقليل حجم النص */
    }
}
</style>

<div class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenuButton">
    @foreach($languges as $language)
        <a class="dropdown-item pb-1 change-language" href="{{ route('front.language', $language->id) }}" data-language-code="{{ $language->language }}" style="display: flex;">
            <img class="mr-2" width="20" src="{{ asset('assets/flags/'.$language->language.'.png') }}" alt="{{ $language->language }}">
            <span style="padding:5px" class="text-capitalize">{{ $language->language }}</span>
        </a>
    @endforeach
</div>

                </div>
            </li>
                  <li class="my-account-dropdown ar-list" >
                    <a href="my-account.html" class="has-dropdown"><i
                            class="flaticon-user-3 flat-mini me-1"></i> <span class="responsive-text">{{auth()->user()?"Welcome,".auth()->user()->name :__('My Account')}}</span>  </a>
                    <ul class="my-account-popup">
                        @if (Auth::guard('web')->check())
                        <li><a href="{{ route('user-dashboard') }}"><span class="menu-item-text">{{ __('User Panel') }}</span></a></li>

                        <li><a href="{{ route('user-profile') }}"><span class="menu-item-text">{{ __('Edit Profile') }}</span></a></li>
                        <li><a href="{{ route('user-logout') }}"><span class="menu-item-text">{{ __('Logout') }}</span></a></li>

                        @else
                        <li><a href="{{ route('user.login') }}"><span class="menu-item-text sign-in">{{ __('User Login') }}</span></a></li>
                        <li><a href="{{ route('user.register') }}"><span class="menu-item-text join">{{ __('Register') }}</span></a></li>
                        @endif
                    </ul>
                </li>
            </ul>
           
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

            <div class="header-cart-1" style="margin-left: 2px;">
                <a href="{{ route('front.cart') }}" class="cart has-cart-data" title="View Cart">
                    <div class="cart-icon"><i class="flaticon-shopping-cart flat-mini"></i> <span
                            class="header-cart-count" id="cart-count1">{{ Session::has('cart') ?
                            count(Session::get('cart')->items) : '0' }}</span></div>
                    <div class="cart-wrap">
                        <div class="cart-text">@lang('Cart')</div>
                        <span class="header-cart-count">{{ Session::has('cart') ?
                            count(Session::get('cart')->items) : '0' }}</span>
                    </div>
                </a>
               
<style>
@if($curr_lang->rtl == 1)
     @media screen and (max-width: 400px) {
         .cart-popup{
                   margin-right: -120px;
         }
     }
     @else
      @media screen and (max-width: 400px) {
         .cart-popup{
                     margin-right: 10px;
         }
     }
     @endif
     
     
      @media screen and (min-width: 400) and (max-width: 1000px) {
         .cart-popup{
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
        <div class="title">{{ __('Total') }}: </div>
        <div class="price"><span
            class="cart-total">{{ Session::has('cart') ? App\Models\Product::convertPrice(Session::get('cart')->totalPrice) : '0.00' }}
        </span>
        </div>
    </div>

        <a href="{{ route('front.cart') }}" class="btn btn-primary rounded-0 view-cart">{{ __('View cart') }}</a>

        <a href="{{ route('front.checkout') }}" class="btn btn-secondary rounded-0 checkout">{{ __('Check out') }}</a>

</div>

            </div>
            <p></p>

             <div class="search-view d-xxl-none">
                <a href="#" class="search-pop top-quantity d-flex align-items-center text-decoration-none">
                    <i class="flaticon-search flat-mini text-dark mx-auto"></i>
                </a>
            </div>

       
      </div>
    </div>
    </div>
    <script src="https://cdn.tailwindcss.com"></script>

    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Zain:wght@200;300;400;700;800;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200..1000&family=Noto+Kufi+Arabic:wght@100..900&family=Tajawal:wght@200;300;400;500;700;800;900&family=Zain:wght@200;300;400;700;800;900&display=swap" rel="stylesheet">
    </head>
    <style>
    
    .tabs{
        margin-top: 55px
    }
    @media (max-width: 767px) {
    .responsive-text {
        display: none;
    }
}

    
  body{
             font-family: "Noto Kufi Arabic", sans-serif;
          font-optical-sizing: auto;
        }
      .form-container{
          
          margin: 0 auto;
      }
        @media only screen and (max-width: 768px) {
          
            .grid-container {
                grid-template-columns: 1fr;
                /* تكديس الأعمدة */
            }

            .form-container {
                transform: translateY(0);
                /* إزالة التحريك العمودي */
            }

            .tabs {
                flex-direction: column;
                padding: 10px ;
                
            }

            .tab-content {
                padding: 20px 10px;
                font-size: 18px;
                /* تقليل حجم الخط */
            }

            .custom-contact-info {
                width: 100%;
                margin: 10px auto;
            }

            .container {
                padding: 10px;
            }

            .faq-button {
                width: 100%;
                margin-bottom: 10px;
            }

            .res-nav-lg {
                display: none;
            }

            .res-nav {
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
            }
        }

        /* تحسينات للأجهزة الصغيرة جدًا */
        @media  screen and (min-width: 320px) and (max-width: 452px) {

            .tab-button,
            .tab-button-active {
                font-size: 14px;
                /* تقليل حجم النص */
                padding: 8px 15px;
            }

            .tab-content h2 {
                font-size: 24px;
                /* تقليل حجم عنوان التبويبات */
            }

            .custom-contact-info {
                   margin: 30rem auto 0.3rem auto;
                   padding: 15px;
            }
        }

        body {
            font-family: "Zain", sans-serif;

            background-color: #ffffff;
        }

        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            position: relative;
            overflow: visible;
        }

        .form-container {
            position: relative;
            z-index: 1;
            transform: translateY(7%);
        }

        .container {
            width: 100%;
            padding: 20px;
            overflow: visible;
        }

        .tabs {
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 15px;
            background-color: #ffffff3a;
            padding-top: -1000px;
            width: fit-content;
            margin: 0 auto;
        }

        .tab-button-active,
        .tab-button {
            border: none;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 20px;
            cursor: pointer;
            background-color: #203DE1;
            color: white;
            font-size: 16px;
        }

        .tab-button-active {
            background-color: #002A8C;
        }

        .tab-button:hover {
            background-color: #0056b3;
        }

        .tab-content {
            display: none;
            color: #ffffff;
            font-size: 24px;
        }

        .tab-content h2 {
            color: #ffffff;
            font-size: 30px;
            margin-bottom: 10px;
            font-family: "Zain", sans-serif;
        }

        .tab-content p {
            font-size: 21px;
            line-height: 1.5;
            margin-bottom: 20px;
            font-family: "Zain", sans-serif;
        }

        #bottom-section {
            margin-top: 20px;
            padding-top: 10px;
            text-align: center;
        }

        .faq-button {

            background-color: #ffffff;
            border: 2px solid #0056b3;
            border-radius: 25px;
            padding: 12px 30px;
            font-size: 16px;
            cursor: pointer;
            color: rgb(0, 0, 0);
            position: relative;
            transition: background-color 0.3s ease, transform 0.3s ease;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transform: translateY(-2px);
        }

        .faq-button:hover {
            background-color: #dce7ff;
            transform: translateY(-2px);
        }

        .faq-button::before {
            position: absolute;
            left: 15px;
            font-size: 18px;
            top: 50%;
            transform: translateY(-50%);
            color: white;
        }

        .bg-blue-500 {
            background-color: rgb(92 123 175) !important;
        }

        .custom-contact-info {
            background-color: #fff;
            padding: 20px;
            width: 400px;
            text-align: center;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 10px ;
            
            margin-right: 150px;
        }

        .custom-contact-info h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .custom-info-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 15px 0;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .custom-info-item:last-child {
            border-bottom: none;
        }

        .custom-info-item i {
            color: #203DE1;
            font-size: 20px;
            margin-left: 10px;
        }

        .custom-info-item img {
            color: #203DE1;

        }

        .custom-info-item span {
            flex-grow: 1;
            text-align: right;
        }

       
        //mobile2
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            position: relative;
            overflow: visible;
        }
         @if($curr_lang->rtl == 1)
          @media (max-width: 640px) {
               .form-container{
                  width: 90%;
                  margin: auto
                  padding:3rem;
               
                
            } 
          }
         @else
         @media (max-width: 640px) {
               .form-container{
                  width: 90%;
                  margin: auto
                  padding:3rem;
                  margin-top: -60px;
                
            } 
          }
         @endif

        /* Mobile styles */
        @media (max-width: 640px) {
            .grid-container {
                display: block;
            }

            .container
             {
                width: 100%;
                padding: 0;
                
            }
            
            .form-container{
                  width: 90%;
                  margin: auto
                  padding:3rem;
                 
                
            } 
            .tabs {
                flex-direction: column;
                padding-right: 10px;
                padding-left: 10px;
            }

            .tab-button,
            .tab-button-active {
                width: 100%;
                margin: 5px 0;
            }

            .custom-contact-info {
                  width: 90%;
                  margin: auto
                  padding:1rem;
            }
        }

        //contact us
        .custom-contact-info {
            max-width: 600px;
            padding: 20px;
        }

        .custom-info-item {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .custom-info-item img {
            max-width: 30px;
            /* Adjust icon size */
            height: auto;
        }

        .custom-info-item span {
            font-size: 18px;
            padding-left: 15px;
        }

        @media screen and (max-width: 600px) {
            .custom-contact-info {
                margin-top: 1000px;
            }

            .custom-contact-info h2 {
                font-size: 24px;
            }

            .custom-info-item span {
                font-size: 16px;
            }

            .custom-info-item img {
                max-width: 25px;
            }
        }
            @media screen and (min-width: 993px) and (max-width: 1092px) {
              .body{
        
                      height:1500px ;
                   }
                   .custom-contact-info{
                       margin:auto;
                       margin-top:200px;
                   }
          }
                      @media  screen and (min-width: 320px) and (max-width: 992px) {
                          
                               .body{
                               height:1520px;
                        }
                          .custom-contact-info{
                                   margin-top:500px;
                              
                          }
            
                          
                      }
             @media  screen and (min-width: 452px) and (max-width: 992px) {
            .main-container
             {
                 width:95%;
                 MARGIN :auto;
             display:flex;
             flex-wrap:wrap;
            }
            .body{
                height:1700px;
            }
            
            
            .form-container{
                margin:5rem auto 1rem auto;
            }
            
            .custom-contact-info{
                margin:10rem auto 0 auto;
          
            }
               .custom-contact-info{
                       margin:auto;
                       margin-top:700px;
                       
                   }
                   
            }
             @media  screen and (min-width: 452px) and (max-width:768px)
             {
                      .body{
                height:1800px;
                
            }
               .custom-contact-info{
                       margin:auto;
                       margin-top:800px;
                       
                   }
                 
                 
             }
   
           @media  screen and (min-width: 320px) and (max-width: 452px){
                       .custom-contact-info{
                       margin:auto;
                       margin-top:580px;
                       
                   }
        
        
    }
    </style>
   

    <!-- breadcrumb -->
    <!--==================== Contact Section Start ====================-->
    @php
        $vendor_id_visit = Session::has('shop_id') ? Session::get('shop_id') : null;
        $vendor = App\Models\User::find($vendor_id_visit);
    @endphp

    <body>
        
    <div class="body bg-zinc-100 min-h-screen">
            <div class="bg-white shadow  d-flex ">
                <!-- Nav -->
            </div>
            <div class="main-container grid-container grid grid-cols-1 md:grid-cols-2 gap-4 "
                style="background-color: #203DE1; max-height: 520px;border-bottom-right-radius: 55px;border-bottom-left-radius: 55px">
                <div class="container" style="grid-column: 1 / span 1;">
                    <div class="tabs">
                        <button class="tab-button-active" onclick="showTabContent(1)">
                            {{ __('Contact the technical team') }}</button>
                        {{-- <button class="tab-button" onclick="showTabContent(2)">تواصل مع الدعم الفني</button> --}}
                    </div>
                    <div id="tab-content-1" class="tab-content" style="padding-top: 20px">
                        <h2>{{ __('Find out how we can support your business and achieve your goals') }}</h2>
                        <p style="padding-top: 20px">
                            {{ __('We are here to support your business vision and achieve your goals. Contact us to start your journey of success Your') }}

                            <br>
                            {{ __('We are your success partners, and our success is to help you become a tangible reality. We are happy to achieve innovation and excellence in your work. go ahead With us on the journey of success where your ambitions have no limits.') }}
                        </p>
                    </div>

                </div>
                <div class="form-container p-6 bg-zinc-800 text-white"
                    style="background-color: #27272A; grid-column: 2 / span 1; max-width: 100%; width:500px;  border-radius: 25px">
                       @php
                          $email = request()->get('email');
                       @endphp
                    <h2 class="text-2xl font-bold mb-4 text-white">{{ __('Contact the seller') }}</h2>
                    <form class="contactform space-y-4" id="contact-form" action="{{route('front.contactvenderemail')}}" method="POST">
                        @csrf
                        <input type="hidden" name="vender_email" value="{{ request()->get('email') }}">
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-1" for="name">{{ __('Name') }} *</label>
                            <input class="w-full px-3 py-2 bg-zinc-700 text-white rounded-md" type="text"
                                name="name" placeholder="{{ __('Name') }}">
                        </div>
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-1" for="email">{{ __('Email Address') }}
                                *</label>
                            <input class="w-full px-3 py-2 bg-zinc-700 text-white rounded-md" type="text" name="email"
                                placeholder="{{ __('Email Address') }}">
                        </div>
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-1" for="phone">{{ __('Phone Number') }}
                                *</label>
                            <input type="text" placeholder="{{ __('Phone Number') }}" name="phone"
                                class="w-full px-3 py-2 bg-zinc-700 text-white rounded-md">
                        </div>
                        <div class="mb-4">
                            <label class="block text-sm font-medium mb-1" for="message">{{ __('Your Message') }}
                                *</label>
                            <textarea class="w-full px-3 py-2 bg-zinc-700 text-white rounded-md" name="text" rows="4"
                                placeholder="{{ __('Your Message') }} "></textarea>
                        </div>
                       
                        <button class="w-full bg-blue-600 hover:bg-blue-500 text-white py-2 rounded-md">
                            {{ __('Send Message') }}
                        </button>
                    </form>
                </div>
            </div>


            <div class="custom-contact-info"
                style="text-align: center;@media only screen and (max-width: 480px){margin-top:100%}">
                <h2 style="font-size: 30px">{{ __('Always stay in touch with us') }}</h2>
                <div class="custom-info-item">
                    <img
                        src="data:image/png;base64,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">
                    <span style="padding-right: 40px;padding-left: 150px">support@azrar.com</span>

                </div>
                <div class="custom-info-item">
                    <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEnklEQVR4nO1ZS6gcVRCtdFU/iWiMouJCVNz4N+L0vT15RrPQjX/8PL8rQUVIokLcShYaQZHoRnElxg/qRnQViLgN7ozxl8QXiTtFzfOD8dN1X0l135vpN06n572ZtgecA72Z++l7uqrOraoBmGKKKUbGxSAzNuJ7Lbl3LfK8IT5qyUkTj9G9kectuXfSiO/Rd4/OAAAsZnca5G+aOnjtg3wowez2FROYA0GL7vnShp9Y4k3JjFzQBVkNDaELsrozIxda4s0Gee8xS6F7DkCiZW8YSBjiP0zMD65ok5EhURrzw5b4zx6ZZSDF7I5AwpJcDS3DkFzTI5PdNnxgIx/KF8X8EEwIDPEj3sXnhxKAJOK7C+a8tx13qoJEBnmfJzMHdTDk3vZuteV481KQ8wy6Fy3y54b4iCE+bImfAJBV0BBS4sd88L9VO9kiH9DJ6YxcVDXHRHxX9V3Cj4+bQICJ5RJvkf1QB0P8m07eCHLSoPGUZIMhzgqrude7sVy5AeRUE/F9nsjvyQlyPjSAWZCTvbf8Wjs5fNnKceQ9XgpfGLD2Db/+w6ZczNacb8iJEhXWYNcBObF/tANyuiX+QdePdBv/F0S8+7iq9cUFFqwysURAY+gXHV8HsnbgOMhZ3o+/G/HMDRPxWp6QmEHj3Vgu8/fQ1zDZRNyr3r02D1wfEk10L4945maJpDE/4Ofs6h/rgJxiiRd0XGUZJplIF+Q0S/yXqtcVIGeUxxLMrvdu9fGYzt0cEYUh94EP6CfLvycks97tvh1bZdckEb3dPZEj6k4DE7uKGJooIgq9J/wN/yyUkGJ2iyeysB7kXJh0IoYk0TgxxGxJun17vOdjZV/VfTMxRBQG3XafjR4opyyaRGp6H8iM0zK2CSIa0Ab5U58Jv68Ni2P7gJwdyFjin7VxEQRApdmge0W7M4b4e0PuoyI3k1WtEFFoV8US/zjoEswt490sqJlKc1Xrx5DbXVcCNEYkJ0My2yu0eFv/uApAsFwQAs0AtFDS3Mx3SvKsWesZrQSrrNMoEYV2N4rAzy3zUtnNCkiUkqQpZjdYkDX96/Vytb16RqV9aytESmSOhpgZVLPU7hHx/Z7I4daI9G73EDNa/y+V5jp08nwtJ/JTq0SCAPTUjFkvzaUZwHHWkhj/ET5rnUhPmt320KgosmLeth7kzJr3v+kzhh0TQWRpBuB2l4JYie3Svpl+fZVonafxZNDtCMrVATlnpPNpq0UnautlXGTyg5JcpQKgJUDVPWI9Ue12DiQBsmb4dpBv0KnGQwNQC2hxppWmxlHoAeSWQt6jmXXV2iSWS338fFX7ouCjTXYMVwpDvNVL+87aydogDqrx70utPcyBoEH+Qs+mf3vULuiAxAb5oLfKJpgQGOJHS5l2PNQii9mtlngxr80xuxZaRoLZdYVI8KLB7KZlLTbonvFW0UbDljbcbCMIFX8l8N8+h3t6Bdto/a2Fk1omL5C+1P8/0lguH3fVV8Y6kLX6Dn1X8c78Yy5adE+N1BhPMLs5SHIrD/J+i9mNY/lKhQBoZut2FspRNOGaeXjBq9Nr+k51r7GQmGKK/zn+ARxsoa0oQYpAAAAAAElFTkSuQmCC">
                    <span style="padding-right: 50px"> 965 75 900 010 002 </span>
                </div>
                <div class="custom-info-item">
                    <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEnklEQVR4nO1ZS6gcVRCtdFU/iWiMouJCVNz4N+L0vT15RrPQjX/8PL8rQUVIokLcShYaQZHoRnElxg/qRnQViLgN7ozxl8QXiTtFzfOD8dN1X0l135vpN06n572ZtgecA72Z++l7uqrOraoBmGKKKUbGxSAzNuJ7Lbl3LfK8IT5qyUkTj9G9kectuXfSiO/Rd4/OAAAsZnca5G+aOnjtg3wowez2FROYA0GL7vnShp9Y4k3JjFzQBVkNDaELsrozIxda4s0Gee8xS6F7DkCiZW8YSBjiP0zMD65ok5EhURrzw5b4zx6ZZSDF7I5AwpJcDS3DkFzTI5PdNnxgIx/KF8X8EEwIDPEj3sXnhxKAJOK7C+a8tx13qoJEBnmfJzMHdTDk3vZuteV481KQ8wy6Fy3y54b4iCE+bImfAJBV0BBS4sd88L9VO9kiH9DJ6YxcVDXHRHxX9V3Cj4+bQICJ5RJvkf1QB0P8m07eCHLSoPGUZIMhzgqrude7sVy5AeRUE/F9nsjvyQlyPjSAWZCTvbf8Wjs5fNnKceQ9XgpfGLD2Db/+w6ZczNacb8iJEhXWYNcBObF/tANyuiX+QdePdBv/F0S8+7iq9cUFFqwysURAY+gXHV8HsnbgOMhZ3o+/G/HMDRPxWp6QmEHj3Vgu8/fQ1zDZRNyr3r02D1wfEk10L4945maJpDE/4Ofs6h/rgJxiiRd0XGUZJplIF+Q0S/yXqtcVIGeUxxLMrvdu9fGYzt0cEYUh94EP6CfLvycks97tvh1bZdckEb3dPZEj6k4DE7uKGJooIgq9J/wN/yyUkGJ2iyeysB7kXJh0IoYk0TgxxGxJun17vOdjZV/VfTMxRBQG3XafjR4opyyaRGp6H8iM0zK2CSIa0Ab5U58Jv68Ni2P7gJwdyFjin7VxEQRApdmge0W7M4b4e0PuoyI3k1WtEFFoV8US/zjoEswt490sqJlKc1Xrx5DbXVcCNEYkJ0My2yu0eFv/uApAsFwQAs0AtFDS3Mx3SvKsWesZrQSrrNMoEYV2N4rAzy3zUtnNCkiUkqQpZjdYkDX96/Vytb16RqV9aytESmSOhpgZVLPU7hHx/Z7I4daI9G73EDNa/y+V5jp08nwtJ/JTq0SCAPTUjFkvzaUZwHHWkhj/ET5rnUhPmt320KgosmLeth7kzJr3v+kzhh0TQWRpBuB2l4JYie3Svpl+fZVonafxZNDtCMrVATlnpPNpq0UnautlXGTyg5JcpQKgJUDVPWI9Ue12DiQBsmb4dpBv0KnGQwNQC2hxppWmxlHoAeSWQt6jmXXV2iSWS338fFX7ouCjTXYMVwpDvNVL+87aydogDqrx70utPcyBoEH+Qs+mf3vULuiAxAb5oLfKJpgQGOJHS5l2PNQii9mtlngxr80xuxZaRoLZdYVI8KLB7KZlLTbonvFW0UbDljbcbCMIFX8l8N8+h3t6Bdto/a2Fk1omL5C+1P8/0lguH3fVV8Y6kLX6Dn1X8c78Yy5adE+N1BhPMLs5SHIrD/J+i9mNY/lKhQBoZut2FspRNOGaeXjBq9Nr+k51r7GQmGKK/zn+ARxsoa0oQYpAAAAAAElFTkSuQmCC">
                    <span style="padding-right: 50px">965 75 900 010 002</span>
                </div>
                <div class="custom-info-item">
                    <img
                        src="data:image/png;base64,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">
                    <span style="padding-right: 50px;padding-left: 150px ">
                        {{ __('Türkiye the conqueror') }}</span>

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
                        button.style.backgroundColor = '#007bff';
                        button.style.color = 'white';
                    });

                    var activeButton = document.querySelector('.tab-button-active');
                    activeButton.style.backgroundColor = '#ffffff';
                    activeButton.style.color = '#000000';
                }
                document.addEventListener('DOMContentLoaded', function() {
                    showTabContent(1);
                });
            </script>
        </div>


        <!--======================== Contact Section End ==========================-->

    </body>





        @include('partials.global.common-footer')
    @endsection
    @section('script')
    @endsection

