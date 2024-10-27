@extends('layouts.front')

@section('content')
@include('partials.global.common-header')

 <!-- breadcrumb -->
 <div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
    <div class="container">
        <div class="row text-center text-white">
            <div class="col-12">
                <h3 class="mb-2 text-white">{{ __('Messages') }}</h3>
            </div>
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                        <li class="breadcrumb-item"><a href="{{ route('user-dashboard') }}">{{ __('Dashboard') }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ __('Messages') }}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb -->


<!--==================== Blog Section Start ====================-->
<div class="full-row">
    <div class="container">
        <div class="mb-4 d-xl-none">
            <button class="dashboard-sidebar-btn btn bg-primary rounded">
                <i class="fas fa-bars"></i>
            </button>
        </div>
        <div class="row">
            <div class="col-xl-4">
                @include('partials.user.dashboard-sidebar')
            </div>
            <div class="col-xl-8">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="widget border-0 p-40 widget_categories bg-light account-info">

                            <div class="header-area">


								<h4 class="title">
									{{ __('Conversation with') }} @if($user->id == $conv->sent->id)
                                    {{$conv->recieved->name}}
                                    @else
                                    {{$conv->sent->name}}
                                    @endif <a  class="mybtn1" href="{{ url()->previous() }}"> <i class="fas fa-arrow-left"></i> {{ __('Back') }}</a>
								</h4>
							</div>
                            <div class="support-ticket-wrapper ">
                                <div class="panel-primary">
                                      <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                                    <div class="panel-body mt-4" id="messages">
                                      @foreach($conv->messages as $message)
                                        @if($message->sent_user != null)
                                        <div class="single-reply-area user">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="reply-area">
                                                        <div class="left">
                                                            <p>{{$message->message}}</p>
                                                        </div>
                                                        <div class="right">
                                                            @if($message->conversation->sent->is_provider == 1 )
                                            <img class="img-circle" src="{{ $message->conversation->sent->photo != null ? $message->conversation->sent->photo : asset('assets/images/noimage.png') }}" alt="">
                                            @else
                                            <img class="img-circle" src="{{ $message->conversation->sent->photo != null ? asset('assets/images/users/'.$message->conversation->sent->photo) : asset('assets/images/noimage.png') }}" alt="">
                                            @endif
                                            <p class="ticket-date">{{ $message->conversation->sent->name }}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        @else
                                        <div class="single-reply-area admin">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="reply-area">
                                                        <div class="left">
                                                            <img class="img-circle" src="{{ asset('assets/images/admin.jpg')}}" alt="">
                                                            <p class="ticket-date">{{ __('Admin') }}</p>
                                                        </div>
                                                        <div class="right">
                                                            <p>{{$message->message}}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        @endif
                                        @endforeach

                                    </div>
                                    <form id="messageform" data-href="{{ route('user-vendor-message-load',$conv->id) }}" action="{{route('user-message-post')}}" method="POST">
                                    <div class="panel-footer">
                                            {{csrf_field()}}
                                            <div class="form-group">
                                                <input type="hidden" name="conversation_id" value="{{$conv->id}}">
                                                @if($user->id == $conv->sent_user)
                                                <input type="hidden" name="sent_user" value="{{$conv->sent->id}}">
                                                <input type="hidden" name="reciever" value="{{$conv->recieved->id}}">
                                              @else
                                                <input type="hidden" name="reciever" value="{{$conv->sent->id}}">
                                                <input type="hidden" name="recieved_user" value="{{$conv->recieved->id}}">
                                            @endif


                                                <textarea class="form-control" name="message" id="wrong-invoice" rows="5" style="resize: vertical;" required="" placeholder="{{ __('Message') }}"></textarea>
                                            </div>
                                    </div>
                                    <div class="form-group mt-3">
                                        <button class="mybtn1">
                                            {{ __('Add Reply') }}
                                        </button>
                                    </div>
                                </form>
                                </div>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
</div>
    </div>
</div>
<!--==================== Blog Section End ====================-->

{{-- MESSAGE MODAL --}}
<div class="message-modal">
    <div class="modal" id="vendorform" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="vendorformLabel">{{ __('Add Dispute') }}</h5>
              <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
          </div>
        <div class="modal-body">
          <div class="container-fluid p-0">
            <div class="row">
              <div class="col-md-12">
                <div class="contact-form">
                  <form id="emailreply1">
                    {{csrf_field()}}
                    <ul>
                      <li>
                        <input type="text" class="input-field form-control border mb-4" id="order" name="order_numkber" placeholder="{{ __('Order Number *') }}" required="">
                      </li>

                      <li>
                        <input type="text" class="input-field form-control border mb-4" id="subj1" name="subject" placeholder="{{ __('Subject *') }}" required="">
                      </li>
                      <li>
                        <textarea class="input-field textarea form-control border mb-4" name="message" id="msg1" placeholder="{{ __('Your Message *') }}" required=""></textarea>
                      </li>
                    </ul>
                      <input type="hidden"  name="type" value="Dispute">

                    <button class="submit-btn" id="emlsub1" type="submit">{{ __('Send') }}</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

  {{-- MESSAGE MODAL ENDS --}}

  <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">

      <div class="modal-header d-block text-center">
          <h4 class="modal-title d-inline-block">{{ __('Confirm Delete ?') }}</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
      </div>

                  <div class="modal-body">
              <p class="text-center">{{ __('You are about to delete this Dispute.') }}</p>
              <p class="text-center">{{ __('Do you want to proceed?') }}</p>
                  </div>
                  <div class="modal-footer justify-content-center">
                      <button type="button" class="btn btn-default" data-dismiss="modal">{{ __('Cancel') }}</button>
                      <a class="btn btn-danger btn-ok">{{ __('Delete') }}</a>
                  </div>
              </div>
          </div>
      </div>

@includeIf('partials.global.common-footer')

@endsection
@section('script')
<script type="text/javascript">

    (function($) {
		"use strict";

          $(document).on("submit", "#emailreply1" , function(){
          var token = $(this).find('input[name=_token]').val();
          var subject = $(this).find('input[name=subject]').val();
          var message =  $(this).find('textarea[name=message]').val();
          var $type  = $(this).find('input[name=type]').val();
          var order = $('#order').val();
          $('#subj1').prop('disabled', true);
          $('#msg1').prop('disabled', true);
          $('#emlsub1').prop('disabled', true);
          $.ajax({
            type: 'post',
            url: "{{URL::to('/user/admin/user/send/message')}}",
            data: {
                '_token': token,
                'subject'   : subject,
                'message'  : message,
                'type'   : $type,
                'order'  : order
                  },
            success: function( data) {
            $('#subj1').prop('disabled', false);
            $('#msg1').prop('disabled', false);
            $('#subj1').val('');
            $('#msg1').val('');
            $('#emlsub1').prop('disabled', false);
            if(data == 0)
              toastr.error("Oops Something Went Wrong !");
            else
              toastr.success("Message Sent");
              $('#vendorform').modal('hide');
            }
        });
          return false;
        });

        })(jQuery);

</script>


<script type="text/javascript">

(function($) {
		"use strict";

      $('#confirm-delete').on('show.bs.modal', function(e) {
          $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
      });

})(jQuery);

</script>
@endsection

---------------------------


@extends('layouts.front')

@section('content')

@includeIf('partials.global.common-header')
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
    .cart-popup{
                     margin-right: 250px;
                      
                  }
   @media (max-width: 767px) {
     
                 
                      .header-cart-1 .cart .cart-icon, .header-cart-6 .cart .cart-icon {
                       left: 194px;   
                      }
   }
 @media (max-width: 400px) {
     .margin-right-1{
                  margin-right: 30px;

     }
 }
   @media screen and (max-width: 400px) {
         .cart-popup{
                 margin-right: -350px;
         }
     }
 </style>
 @else
  <style>
  
     @media (max-width: 767px) {
         .flat-mini::before {
    position: relative;
    left: 15px;
    top: 3px;
}
         .ar-list .my-account-popup{
           margin-right:54px;
        }
                  .cart-popup{
                    margin-left: -150px;
                      
                  }
                      .header-cart-1 .cart .cart-icon, .header-cart-6 .cart .cart-icon {
                       left: -130px;   
                      }
   }
 @media (max-width: 400px) {
    
     .search-pop{
                    margin-left: 10px;

     }
 }
 </style>
 
 @endif
<style>

  .tab-content {
    display: none;
  }
  .tab-content.active {
    display: block;
  }
  .bg-blue-500 {
     background-color: rgb(92 123 175) !important;
  }
   .res-nav{
       display: none !important;
   }
  /* ****************** slider category btn start */
.prevBtn-slider, .nextBtn-slider {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    /* background-color: #fff; */
    border: none !important;
    padding: 0px 10px;
    cursor: pointer;
    z-index: 98;
    font-size: 40px;
}
.nextBtn-slider:active{
    border: none;
}

.prevBtn-slider {
    left: -35px; /* تعديل المسافة من اليسار حسب الحاجة */
}

.nextBtn-slider {
    right: -40px; /* تعديل المسافة من اليمين حسب الحاجة */
}

/* ********* Header Style */
.form-inline input.search-field {
  padding: 0px 10px !important;
}

/* ********* Header Style */
@media screen and (max-width: 600px) {
   
    .products.product-style-1 .row-cols-3 {
        grid-template-columns: repeat(3, 1fr); 
    }

   
    .products.product-style-1 .product-wrapper {
       display: flex;
                flex-direction: column;
                justify-content: space-between;
                height: auto;
    }

 
  .products.product-style-1 .product-image img {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                    height: 150px;
            }
   
   
    .products.product-style-1 .product-image {
       width: 100%;
           height: 150px;
                padding-top: 100%;
                /* نسبة عرض إلى ارتفاع 1:1 لجعل الصورة مربعة */
                position: relative;
    }

    .products.product-style-1 .product-title,
    .products.product-style-1 .product-price {
        font-size: 0.9rem; 
    }
}
  @media (max-width: 767px) {
                .products.product-style-1 .product-image {
                    padding-top: 100%;
                    /* نفس النسبة للمحافظة على الشكل المربع في الأجهزة المحمولة */
                }
            }

@media screen and (min-width: 768px) and (max-width: 1115px) {
   .col .responsive-cards-product-col {
        width: 200px;
   }
}



    .showing-products .col-lg-12 {
        flex: 0 0 calc(50% - 10px); 
        margin-bottom: 10px; 
    }

    
    .showing-products .product {
        height: auto; 
        padding: 10px; 
    }

    
    .showing-products .product-image img {
        width: 100%;
        height: auto; 
        max-height: 150px; 
        object-fit: cover; 
        }


    .showing-products .product-info {
        padding: 5px; 
    }

    .showing-products .product-title {
        font-size: 0.9rem; 
        }

    .showing-products .product-price {
        font-size: 0.8rem; 
        }

    @media screen and (min-width: 1200px) and (max-width: 1400px)  {
        /*response slider*/
        .home-carousel .product-image img {
            height: 210px !important;
        }
    }
    @media screen and (min-width: 1100px) and (max-width: 1200px)  {
        /*response slider*/
        .home-carousel .product-image img {
            height: 250px !important;
            /*width: 280px !important; */
        }
    }
    @media screen and (min-width: 1000px) and (max-width: 1100px)  {
        /*response slider*/
        .home-carousel .product-image img {
            height: 200px !important;
            /*width: 280px !important; */
        }
    }
    @media screen and (min-width: 800px) and (max-width: 1000px)  {
        /*response slider*/
        .home-carousel .product-image img {
            height: 250px !important;
            /*width: 280px !important; */
        }
    }
    @media screen and (min-width: 766px) and (max-width: 800px)  {
        /*response slider*/
        .home-carousel .product-image img {
            height: 230px !important;
            /*width: 280px !important; */
        }
    }
    @media screen and (min-width: 600px) and (max-width: 765px)  {
        /*response slider*/
        .home-carousel .product-image img {
            height: 300px !important;
            /*width: 280px !important; */
        }
    }

   @media screen and (max-width: 1200px) {
         .res-nav{
       display: block !important;
   }
   .res-nav-lg{
       display: none !important;

   }

   }
/* ****************** slider category btn end */
   @media screen and (max-width: 600px) {
       .vendor-responsive-mobile .owl-item {
      width: 50vw !important;
    }
    @media (max-width: 768px) {
    .prevBtn-slider,
    .nextBtn-slider {
        display: none;
    }
}


    .res-nav .dropdown-toggle {
      font-size: 13px !important;
    }
    .responsive h2 {
        font-size: 12px !important;
    }

    .my-account-dropdown img{
        max-width : 25% !important;
    }

    a .responsive-text {
        display: none !important;
    }

    .dropdown-item {
    color: #333;
    padding: 10px 20px;
    font-size: 10px !important;
    text-decoration: none;
    display: flex;
    align-items: center;
    transition: background-color 0.3s ease, color 0.3s ease;
    background-color: #f8f9fa;
    width : 100px;

    }



    /* ******************  slider category btn start */
    .prevBtn-slider {
            left: 100px;
        }
        .nextBtn-slider {
            right: 100px;
        }
        .prevBtn-slider, .nextBtn-slider {
            top: 230%;
            cursor: pointer;
            font-size: 25px;
        }

    .full-responseve{
        display: none;
    }
    /* *****
</style>

@if (!(app()->getLocale() === '1605519199OsGO7B86'))
    <style>
        .ar-list .my-account-popup{
            right: auto;
            left: 10px;
        }
         @media screen and (max-width: 400px) {
                     .ar-list .my-account-popup{
            right: auto;
            left: 50px;
        }
         }
    </style>
@endif

@php
    $backgroundColor = optional(auth()->user())->background_color;
@endphp


<div class="bg-zinc-100 min-h-screen" style="background-color: {{ $backgroundColor }};">
  <div class="bg-white shadow  d-flex ">
    <div class="container mx-auto px-4 flex items-center space-x-4 responsive">
      <img src="{{asset("assets/images/users/".$vendor->photo)}}"  class="w-10 h-10 rounded-full">
       <!--<h2 class="text-2xl font-bold">{{$vendor->shop_name}}</h2>-->
         
     @php
    $is_verified = optional(auth()->user())->is_verified;
@endphp




   
      @if($is_verified)
    <img src="{{ asset('assets/images/users/verify.png') }}" class="verify-icon w-5 h-5 rounded-full " style="    margin-right: 5px;" />
@endif     
       
      <div>
       
       
        <!--<div class="flex space-x-4 mt-2">-->

        <!--  {{-- <div class="text-zinc-600">4.2 Average Product Score</div>-->
        <!--  <div class="text-zinc-600">2248 Product Reviews</div>-->
        <!--  <div class="text-zinc-600">96.0K Followers</div>-->
        <!--  <button class="bg-orange-500 text-white px-4 py-2 rounded-lg">Follow</button> --}}-->
        <!--</div>-->

      </div>
         @php
              $email = request()->get('email');
             if (!$email && $vendor->shop_name) {
            $vendorByName = App\Models\User::where('shop_name', $vendor->shop_name)->first();
            if ($vendorByName) {
                $email = $vendorByName->email;
            }
          }
        @endphp
      <div class="container mx-auto px-1 py-2 flex space-x-4 res-nav-lg" style="    left: 35px;">
         
          <!--{{$email}}-->
        <a href="https://ealanatek.site/" class="text-zinc-800 hover:text-orange-500 ms-2" onclick="openTab(event, 'tab1')">{{__('Home')}}</a>
        <a href="https://ealanatek.site/category" class="text-zinc-800 hover:text-orange-500" onclick="openTab(event, 'tab1')">{{__('All Products')}}</a>
         <a href="{{ route('front.contactvender', ['email' => $email] ) }}" class="text-zinc-800 hover:text-orange-500" onclick="openTab(event, 'tab2')">{{__('Contact Us')}}</a>
        <a href="{{ route('aboutus.show') }}" class="text-zinc-800 hover:text-orange-500" onclick="openTab(event, 'tab3')">{{__('About Us')}}</a>
      </div>

      <div class="container mx-auto px-4 py-2 flex space-x-4 res-nav">
          <style>
          
              @media (max-width: 767px) {
                 .top-links{
                     right:250px;
                 }
                 
                     
                      .search-pop{
                              margin-right: 20px;
                      }
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
        margin-left: auto; /* تحريك الأيقونة إلى أقصى اليمين */
    }
}

          </style>
    <div class="dropdown">
      
        <a class=dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

            <p >{{__('Menu')}}</p>
            <div class="my-toggl-icon"></div>
        </a>
        <div class="dropdown-menu bg-white" style="    top: 10px; right: 100px;" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="https://ealanatek.site/" onclick="openTab(event, 'tab1')">{{__('Home')}}</a>
            <a class="dropdown-item" href="https://ealanatek.site/category" onclick="openTab(event, 'tab1')">{{__('All Products')}}</a>
            <a class="dropdown-item" href="{{ route('front.contact') }}" onclick="openTab(event, 'tab2')">{{__('Contact Us')}}</a>
            <a class="dropdown-item" href="{{ route('aboutus.show') }}" onclick="openTab(event, 'tab3')">{{__('About Us')}}</a>
        </div>
    </div>
</div>
    </div>
    <div class="container mx-auto px-2 py-6 flex items-center space-x-4">
        <div class="margin-right-1 d-flex align-items-center justify-content-end h-100 w-100" style="margin-left: auto;">
        
         <div class="product-search-one d-none d-md-block" >
            <form id="searchForm" class="search-form form-inline search-pill-shape"
                action="{{ route('front.category', [Request::route('category'), Request::route('subcategory'), Request::route('childcategory')]) }}"
                method="GET">

                @if (!empty(request()->input('sort')))
                <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                @endif
                @if (!empty(request()->input('minprice')))
                <input type="hidden" name="minprice" value="{{ request()->input('minprice') }}">
                @endif
                @if (!empty(request()->input('maxprice')))
                <input type="hidden" name="maxprice" value="{{ request()->input('maxprice') }}">
                @endif
                <input type="text" id="prod_name" class="col form-control search-field"
                    name="search" placeholder="{{ __('Search Product In Azrar') }}"
                    value="{{ request()->input('search') }}">
                <div class="categori-container select-appearance-none" id="catSelectForm">
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
        <style>
            /* إخفاء الأيقونة على الشاشات الكبيرة وعرضها فقط على الشاشات الصغيرة */
@media (min-width: 768px) {
    .search-view {
        display: none;
    }
}

@media (max-width: 767.98px) {
    .search-view {
        display: block;
    }
}

        </style>
      <div class="search-view d-xxl-none">
                <a href="#" class="search-pop top-quantity d-flex align-items-center text-decoration-none">
                    <i class="flaticon-search flat-mini text-dark mx-auto"></i>
                </a>
            </div>

                @if (Session::has('in_azrar') && Session::get('in_azrar')  == 0)
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
                    <div class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenuButton">
                        @foreach($languges as $language)
                            <a class="dropdown-item pb-1 change-language" href="{{ route('front.language', $language->id) }}"  data-language-code="{{ $language->language }}" style="display: flex;">
                                <img  class="mr-2" width="35" src="{{ asset('assets/flags/'.$language->language.'.png') }}" alt="{{ $language->language }}">
                                <span style="padding:5px" class="text-capitalize">{{ $language->language }}</span>
                            </a>
                        @endforeach
                    </div>
                </div>
            </li>
                  <li class="my-account-dropdown ar-list" >
                    <a href="my-account.html" class="has-dropdown"><i
                            class="flaticon-user-3 flat-mini me-1"></i> <span class="responsive-text">{{auth()->user()?"".auth()->user()->name :__('My Account')}}</span>  </a>
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
                    <div class="cart-icon">
                        <i class="flaticon-shopping-cart flat-mini"></i> 
                        <span
                            class="header-cart-count" id="cart-count1">{{ Session::has('cart') ?
                            count(Session::get('cart')->items) : '0' }}</span>
                            </div>
                    <div class="cart-wrap">
                        <div class="cart-text">@lang('Cart')</div>
                        <span class="header-cart-count">{{ Session::has('cart') ?
                            count(Session::get('cart')->items) : '0' }}</span>
                    </div>
                </a>
                  
<style>
   
      @media screen and (min-width: 400) and (max-width: 1000px) {
         .cart-popup{
                 margin-right: -180px;
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

            <!-- <div class="search-view d-xxl-none">-->
            <!--    <a href="#" class="search-pop top-quantity d-flex align-items-center text-decoration-none">-->
            <!--        <i class="flaticon-search flat-mini text-dark mx-auto"></i>-->
            <!--    </a>-->
            <!--</div>-->

          @endif

      </div>
    </div>
  </div>


  <!--<nav class="bg-white shadow mt-0">-->
  <!--  <div class="container mx-auto px-4 py-2 flex space-x-4">-->
  <!--    @foreach ($categories as $fc)-->
  <!--      <a href="{{route('front.category',$fc->slug)}}" class="text-zinc-800 hover:text-orange-500">{{$fc->name}}</a>-->
  <!--    @endforeach-->
  <!--  </div>-->

  <!--</nav>-->
  <div id="tab1" class="tab-content active">
    @if (Session::has('in_azrar') && Session::get('in_azrar')  == 0)
    <div class="row">
      <div class="col-12">
        {{-- <h1>banner1</h1> --}}
        @php

                  $isStoreOwner = auth()->check() && auth()->user()->isStoreOwner();
                  $link = $isStoreOwner ? route('vendor-banner') : route('front.category', $fc->slug);


                  $imageUrl = $vendor->shop_image ? url('/assets/images/vendorbanner/' . $vendor->shop_image) : 'https://ealanatek.site/assets/images/vendorbanner/1721829471m2jpg.jpg';
              @endphp

              <a href="{{ $link }}">
                  <div class="banner" style="
                      background-image: url('{{ $imageUrl }}');
                      background-position: center center;
                      background-size: cover;
                      height: 300px;
                       border-radius: 20px;
                      display: flex;
                      align-items: center;
                      justify-content: center;
                      color: rgb(216, 11, 11);
                      text-align: center;
                  ">
                      <!--@if (!$vendor->shop_image)-->
                      <!--    <img src="https://ealanatek.site/assets/images/vendorbanner/1721829471m2jpg.jpg" alt="Default Image" style="max-width: 100%; height: auto;"/>-->
                      <!--@endif-->
                  </div>
              </a>
          </div>




     </div>

    </div>

<br>

   {{-- تقسيم المتغير الى جزئين --}}
@php
$half = ceil(count($categories) / 2);
$first_half = array_slice($categories->toArray(), 0, $half);
$second_half = array_slice($categories->toArray(), $half);
@endphp
{{-- تقسيم المتغير الى جزئين --}}
<!--==================== Category Section Start 1 ====================-->
<style>

.full-row.vendor-responsive-mobile {
    margin-top: -45px; 
}
.full-row {
    margin-top: -60px; 
}


.product-item {
    flex: 0 0 auto; /* Fix width and avoid automatic stretching */
    width: 200px; /* Set a fixed width */
    box-sizing: border-box;
    margin: 0 5px;
   
}

.product-image img {
    width: 100%;
    height: 200px;
    object-fit: cover; 
   border-radius: 25px; /* إزالة الزوايا المستديرة بالكامل */
}

.product-title {
    text-align: center;
    margin-top: 10px;
    font-size: 1rem;
}
.coustom-categories-banner-1 {
    display: flex;
    flex-wrap: nowrap;
  
}

@media (max-width: 400px) {
    .coustom-categories-banner-1 {
        display: flex;
        flex-wrap: nowrap;
       
    }
}


@media (max-width: 768px) {
   .coustom-categories-banner-1 {
        flex-wrap: wrap;
        justify-content: center;
    }

    .product-item {
        width: calc(50% - 10px); /* Adjust width for mobile view */
        margin: 5px;
    }
}

</style>

<div class="full-row pt-0 my-2 px-sm-5 pb-0 full-responseve home-carousel">
<div class="container-fluid ">
    <span class="prevBtn-slider"><i class="fa-solid fa-circle-arrow-left"></i></span>

    <div class="coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom" style="margin: 0 px">
       @foreach ($subcategories as $subcategory)
            @if ($subcategory->products->isNotEmpty())
                <div class="product-item">
                    <div class="product type-product">
                        <div class="product-image">
                           <a href="{{ route('front.category', ['category' => $subcategory->category->slug, 'subcategory' => $subcategory->slug]) }}">

                                <img width="300" height="300"
                                    src="{{ asset('photos/' . $subcategory->photo) }}"
                                    alt="Product image">
                            </a>
                        </div>
                        <h6 class="product-title">{{ $subcategory->name }}</h6>
                    </div>
                </div>
            @endif
        @endforeach
    </div>

    <span class="nextBtn-slider"><i class="fa-solid fa-circle-arrow-right"></i></span>
</div>
</div>
<!--==================== Category Section end 1 ====================-->
<!--==================== Category Section Start 2 ====================-->
<div class="full-row pt-0 my-2 px-sm-5 pb-0 part-row home-carousel">
  <div class="container-fluid">
    <span class="prevBtn-slider"><i class="fa-solid fa-circle-arrow-left"></i></span>
      <div

          class="coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom">

          @foreach ($subcategories as $subcategory)
           @if ($subcategory->products->isNotEmpty())   
          <div class="col p-2">
            <div class="product type-product">
                <div style="border-radius: 16px;">
                    <div class="product-image">
                        <style>
                            @media screen and (max-width: 600px) {
    
}
                        </style>
                       <a href="{{ route('front.category', ['category' => $subcategory->category->slug, 'subcategory' => $subcategory->slug]) }}">

                                <img width="300" height="300"
                                    src="{{ asset('photos/' . $subcategory->photo) }}"
                                    alt="Product image">
                            </a>
                          <h6 class="product-title">{{ $subcategory->name }}</h6>
                    </div>
                </div>
            </div>
        </div>
           @endif
          @endforeach
      </div>
      <span class="nextBtn-slider"><i class="fa-solid fa-circle-arrow-right"></i></span>
  </div>
</div>
<!--==================== Category Section end 2 ====================-->
<!--==================== Category Section Start 3 ====================-->
<div class="full-row pt-0 mt-5 px-sm-5 pb-0  part-row  home-carousel">
  <div class="container-fluid">
      <div
          class="coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom">

                   @foreach ($subcategories as $subcategory)
           @if ($subcategory->products->isNotEmpty())
          <div class="col p-2">
            <div class="product type-product">
                <div style="border-radius: 16px;">
                    <div class="product-image">
                        <a href="{{ route('front.category', ['category' => $subcategory->category->slug, 'subcategory' => $subcategory->slug]) }}">

                                <img width="300" height="300"
                                    src="{{ asset('photos/' . $subcategory->photo) }}"
                                    alt="Product image">
                            </a>
                          <h6 class="product-title">{{ $subcategory->name }}</h6>
                    </div>
                </div>
            </div>
        </div>
           @endif
          @endforeach
      </div>
  </div>
</div>

<!--==================== Category Section end 3 ====================-->
        <!-- two banners side by side -->
        <div class="full-row vendor-responsive-mobile">
          <div class="container">
              <div class="row">
                {{-- banner2 --}}

                <div class="col-12 col-md-6 p-1" >
                  @php

                      $isStoreOwner = auth()->check() && auth()->user()->isStoreOwner();

                      $link = $isStoreOwner ? route('vendor-banner') : route('front.category', $fc->slug);


                      $imageUrl = $vendor->shop_image_left ? url('/assets/images/vendorbanner/' . $vendor->shop_image_left) : 'https://ealanatek.site/assets/images/vendorbanner/1721829471m2jpg.jpg';
                  @endphp

                  <a href="{{ $link }}">
                      <div class="banner" style="
                          background-image: url('{{ $imageUrl }}');
                          background-position: center center;
                          background-size: cover;
                          height: 300px;
                          display: flex;
                          border-radius: 20px;
                          align-items: center;
                          justify-content: center;
                          color: rgb(250, 0, 0);
                          text-align: center;
                      ">
                          {{-- @if (!$vendor->shop_image_left)
                              <img src="https://ealanatek.site/assets/images/vendorbanner/17217358911446-01-17065525d3e5d77fjpg.jpg" alt="Default Image" style="max-width: 100%; height: auto;"/>
                          @endif --}}
                      </div>
                  </a>
              </div>

{{-- baner3 --}}
              <div class="col-12 col-md-6 p-1">
              @php

                  $isStoreOwner = auth()->check() && auth()->user()->isStoreOwner();
                  $link = $isStoreOwner ? route('vendor-banner') : route('front.category', $fc->slug);


                  $imageUrl = $vendor->shop_image_right ? url('/assets/images/vendorbanner/' . $vendor->shop_image_right) : 'https://ealanatek.site/assets/images/vendorbanner/1721829471m2jpg.jpg';
              @endphp

              <a href="{{ $link }}">
                  <div class="banner" style="
                      background-image: url('{{ $imageUrl }}');
                      background-position: center center;
                      background-size: cover;
                      height: 300px;
                      display: flex;
                       border-radius: 20px;
                      align-items: center;
                      justify-content: center;
                      color: rgb(204, 17, 17);
                      text-align: center;
                  ">
                      {{-- @if (!$vendor->shop_image_right)
                          <img src="https://ealanatek.site/assets/images/vendorbanner/17217358911446-01-17065525d3e5d77fjpg.jpg" alt="Default Image" style="max-width: 100%; height: auto;"/>
                      @endif --}}
                    </div>
                  </a>
                </div>

              </div>
           </div>
         </div>
        <!-- two banners side by side -->

        {{-- There are two product page. you have to give condition here --}}

      
      @endif
   

    {{------------------------------------------------------------------------------------- --}}



               {{-- </div> --}}
                  


                
      </div>
 
      <div class="full-row"  style="background-color: {{ $backgroundColor }};">
    <div class="container responsive-cards-product">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <span class="text-secondary pb-2 d-table tagline mx-auto text-uppercase text-center"  
                style=" font-weight: bold;
                background-color: #f0f0f0; 
                padding:10px ;
                border-radius: 15px;
                
                " 
                >{{ __('Most requested') }}</span><br>
                <!--<h2 class="main-title mb-4 text-center text-secondary">{{ __('Our Featured Products') }}</h2>-->
               
            </div>
            
        </div>
       <style>
    .product1{
    height: 320px;
    width: 140px;
  }
 
  @media (max-width: 400px) {
      .product1{
    height: 284px;
    width: 115px;
}
  }
.products.product-style-2 .product-image1 img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease-in-out;
}

.products.product-style-2 .product-wrapper1 {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: auto;
    position: relative;
    overflow: hidden;
}

.product1:hover .product-image1 img {
    transform: scale(1.1);
}

.hover-area1 {
    position: absolute;
    bottom: 10px;
     left: 32px; 
    /*left: 50%;*/
    transform: translateX(-50%);
    display: flex;
    flex-direction: column;
    align-items: left;
    gap: 8px;
    opacity: 0;
    transition: opacity 0.3s ease-in-out;
}

.product1:hover .hover-area1 {
    opacity: 1;
}

.on-sale1 {
    position: absolute;
    top: 10px;
    left: 10px;
    background: red;
    color: white;
    padding: 5px;
    border-radius: 5px;
}

.cart-button1,
.wishlist-button1,
.compare-button1 {
 
    padding: 8px;
    justify-content: center;
    align-items: center;
    text-align: center;
    border-radius: 50%;
    width: 40px;
    height: 40px;
   
}

.cart-button1 a,
.wishlist-button1 a,
.compare-button1 a {
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 24px;
    height: 24px;
}

.cart-button1:hover,
.wishlist-button1:hover,
.compare-button1:hover {
  color: white;   
}

.product-info1 {
     text-align: center;
                color: #080808;
                position: relative;
                z-index: 1;
                
                
}

.product-title1 a {
    color: inherit;
    text-decoration: none;
    transition: transform 0.3s ease-in-out, color 0.3s ease-in-out;
}

.product-title1 a:hover {
    transform: scale(1.05);
    color: #fff;
   
    padding: 0 5px;
    border-radius: 5px;
}

.product-price1 {
    margin-top: 5px;
    
    text-align: center;
}

.product-price1 .price {
    text-align: center;
      
}

.product-price1 ins,
.product-price1 del {
   
    margin: 0 5px;
}

.row-cols-xl-7 > * {
 flex: 0 0 auto;
    width: 12.5%;  /* ضبط العرض ليصبح 20% لعرض 5 كروت في كل سطر */
    padding-right: 8px; /* تقليل المسافات بين الكروت */
   padding-left: 8px;
}


            
            /**/
           
 .products.product-style-1 .product-info {
                    top: -15px;
            }

   .product1{
       border-radius: 5px;
    border: 2px solid #edeaea6b;
   }
            .products.product-style-1 .product-image img {
               
                height: 180px;
            }
             .products.product-style-1 .product-image {
                height: 180px;
                
            }

            .products.product-style-2 .product-info1 {
                flex-grow: 1;
                padding-top: 10px;
            }
    
           @media (max-width: 767px) {
                .products.product-style-1 .product-image img {
               
                height: 150px;
            }
             .products.product-style-1 .product-image {
                height: 150px;
                
            }
    .products.product-style-2 .product-wrapper1 {
        height: auto; 
    }
    
.hover-area1 {
    position: absolute;
    bottom: 10px;
     left: 40px; 
    /*left: 50%;*/
    transform: translateX(-50%);
    display: flex;
    flex-direction: column;
    align-items: left;
    gap: 8px;
    opacity: 0;
    transition: opacity 0.3s ease-in-out;
}

    .products.product-style-2 .product-image1 {
        padding-top: 50%; 
        text-align: center; 
    }

    .products.product-style-2 .product-image1 img {
        object-fit: cover;
        width: 100%; 
        height: 100%;
    }
@media (max-width: 400px) {
    .products.product-style-1 .product-image img {
               
                height: 150px;
                            border-radius: inherit;
            }
             .products.product-style-1 .product-image {
                height: 150px;
                
            }
    
    .products.product-style-2 .product-image1 img {
        object-fit: cover;
        width: 80%; 
        height: 100%;
    }
}
    .row-cols-sm-3 > * {
        flex: 0 0 auto;
        width: 33.3333%; 
        padding-right: 5px; 
        padding-left: 5px;  
    }

    
}
        </style>
<div class="products product-style-1">
    <div class="row g-4 row-cols-xl-7 row-cols-md-4 row-cols-sm-3 row-cols-3 e-title-general e-title-hover-primary e-image-bg-light e-hover-image-zoom e-info-center">
         @foreach($vprods as $prod)
                        <div class="col responsive-cards-product-col">
                           <div class="product1 type-product">
    <div class="product-wrapper">
       <div class="product-image">

          <a href="{{ route('front.product', $prod->slug) }}" class="woocommerce-LoopProduct-link">
               <img src="{{ $prod->photo ? asset('assets/images/products/' . $prod->photo) : asset('assets/images/noimage.png') }}"
                                            alt="Product Image">
             </a>
          @if(!empty($prod->features))
          <div class="product-variations">
             @foreach($prod->features as $key => $data1)
             <span class="active sale"><a href="#" style="background-color: {{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</a></span>
             @endforeach
          </div>
          @endif
          
          @if ($prod->offPercentage() && round($prod->offPercentage())>0)
          <div class="on-sale">- {{ round($prod->offPercentage() )}}%</div>
          @endif

          <div class="hover-area">
            @if($prod->product_type == "affiliate")
            <div class="cart-button">
               <a href="javascript:;" data-href="{{ $prod->affiliate_link }}" class="button add_to_cart_button affilate-btn" data-bs-toggle="tooltip" data-bs-placement="right" title="" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
            </div>
            @else
            @if($prod->emptyStock())
            <div class="closed">
               <a class="cart-out-of-stock button add_to_cart_button"  href="#" title="{{ __('Out Of Stock') }}" ><i class="flaticon-cancel flat-mini mx-auto"></i></a>
            </div>
            @else
            @if ($prod->type != "Listing")
          
               <div class="cart-button">
                 
                  <a href="javascript:;"
                  data-bs-toggle="modal"  {{$prod->cross_products ? 'data-bs-target=#exampleModal' : ''}}  data-href="{{ route('product.cart.add',$prod->id) }}" data-cross-href="{{route('front.show.cross.product',$prod->id)}}" class="add-cart button add_to_cart_button {{$prod->cross_products ? 'view_cross_product' : ''}}"  data-bs-placement="right"  title="Add To Cart" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
               </div>
               
       
            @endif
            @endif
            @endif
            @if(Auth::check())
            <div class="wishlist-button">
               <a class="add_to_wishlist  new button add_to_cart_button" id="add-to-wish" href="javascript:;" data-href="{{ route('user-wishlist-add',$prod->id) }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Add to Wishlist" title="{{ __('Wishlist') }}" aria-label="Add to Wishlist">{{ __('Wishlist') }}</a>
            </div>
            @else
            <div class="wishlist-button">
               <a class="add_to_wishlist button add_to_cart_button" href="{{ route('user.login') }}" data-bs-toggle="tooltip" data-bs-placement="right" title="{{ __('Wishlist') }}" data-bs-original-title="{{ __('Wishlist') }}" aria-label="{{ __('Wishlist') }}">{{ __('Wishlist') }}</a>
            </div>
            @endif

            @if ($prod->type != "Listing")
               <div class="compare-button">
                  <a class="compare button add_to_cart_button" data-href="{{ route('product.compare.add',$prod->id) }}" href="javascrit:;" data-bs-toggle="tooltip" data-bs-placement="right" title="{{__('Compare')}}" data-bs-original-title="{{__('Compare')}}" aria-label="{{__('Compare')}}">{{ __('Compare') }}</a>
               </div>
            @endif
         </div>
       </div>
       <div class="product-info">
          <h3 class="product-title">
              <a href="{{ route('front.product', $prod->slug) }}">
              <!--{{ $prod->showName() }}-->
                @if (app()->getLocale() === '17173493681JWu2JXL')
                {{ $prod->name_ar }}
            @elseif (app()->getLocale() === '17173493681JWu2KUR')
                @if (!empty($prod->name_ku))
                    {{ $prod->name_ku }}
                @else
                    {{ $prod->name_ar }}
                @endif
            @elseif (app()->getLocale() === '1605519199OsGO7B86')
                {{ $prod->name }}
            @endif 
              </a></h3>
          <div class="product-price">
             <div class="">
                  <!--<ins>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</ins>-->
                  <!-- <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</del>-->
                  @if($prod->showPrice())
                    <ins style="color:blue ;">({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</ins><br>
                    @endif
                        @if($prod->showPreviousPrice())
                   <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</del>
                       @endif
                <!--<ins>{{ $prod->showPrice() }} </ins>-->
                <!--<del>{{ $prod->showPreviousPrice() }}</del>-->
             </div>
          </div>
          <div class="shipping-feed-back">
             <div class="star-rating">
                <div class="rating-wrap">
                   <p><i class="fas fa-star"></i><span> {{ number_format($prod->ratings_avg_rating,1) }} {{ ($prod->ratings_count) }}</span></p>
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

  <div class="full-row vendor-responsive-mobile"   style="background-color: {{ $backgroundColor }};">
          <div class="container">
              <div class="row justify-content-center">
                  <div class="col-lg-5">
                      <span class="text-secondary pb-2 d-table tagline mx-auto text-uppercase text-center"  style=" font-weight: bold;background-color: #f0f0f0; padding:10px ;border-radius: 15px;" >{{ __('Recently added') }}</span><br>
                      <!--<h2 class="main-title mb-4 text-center text-secondary">{{ __('Best Selling Products') }}</h2>-->

                  </div>
              </div><div class="products product-style-1">
    <div class="row g-4 row-cols-xl-7 row-cols-md-4 row-cols-sm-3 row-cols-3 e-title-general e-title-hover-primary e-image-bg-light e-hover-image-zoom e-info-center">
         @foreach($vprods as $prod)
                        <div class="col responsive-cards-product-col">
                           <div class="product1 type-product">
    <div class="product-wrapper">
       <div class="product-image">

          <a href="{{ route('front.product', $prod->slug) }}" class="woocommerce-LoopProduct-link">
               <img src="{{ $prod->photo ? asset('assets/images/products/' . $prod->photo) : asset('assets/images/noimage.png') }}"
                                            alt="Product Image">
             </a>
          @if(!empty($prod->features))
          <div class="product-variations">
             @foreach($prod->features as $key => $data1)
             <span class="active sale"><a href="#" style="background-color: {{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</a></span>
             @endforeach
          </div>
          @endif
          
          @if ($prod->offPercentage() && round($prod->offPercentage())>0)
          <div class="on-sale">- {{ round($prod->offPercentage() )}}%</div>
          @endif

          <div class="hover-area">
            @if($prod->product_type == "affiliate")
            <div class="cart-button">
               <a href="javascript:;" data-href="{{ $prod->affiliate_link }}" class="button add_to_cart_button affilate-btn" data-bs-toggle="tooltip" data-bs-placement="right" title="" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
            </div>
            @else
            @if($prod->emptyStock())
            <div class="closed">
               <a class="cart-out-of-stock button add_to_cart_button"  href="#" title="{{ __('Out Of Stock') }}" ><i class="flaticon-cancel flat-mini mx-auto"></i></a>
            </div>
            @else
            @if ($prod->type != "Listing")
          
               <div class="cart-button">
                 
                  <a href="javascript:;"
                  data-bs-toggle="modal"  {{$prod->cross_products ? 'data-bs-target=#exampleModal' : ''}}  data-href="{{ route('product.cart.add',$prod->id) }}" data-cross-href="{{route('front.show.cross.product',$prod->id)}}" class="add-cart button add_to_cart_button {{$prod->cross_products ? 'view_cross_product' : ''}}"  data-bs-placement="right"  title="Add To Cart" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
               </div>
               
       
            @endif
            @endif
            @endif
            @if(Auth::check())
            <div class="wishlist-button">
               <a class="add_to_wishlist  new button add_to_cart_button" id="add-to-wish" href="javascript:;" data-href="{{ route('user-wishlist-add',$prod->id) }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Add to Wishlist" title="{{ __('Wishlist') }}" aria-label="Add to Wishlist">{{ __('Wishlist') }}</a>
            </div>
            @else
            <div class="wishlist-button">
               <a class="add_to_wishlist button add_to_cart_button" href="{{ route('user.login') }}" data-bs-toggle="tooltip" data-bs-placement="right" title="{{ __('Wishlist') }}" data-bs-original-title="{{ __('Wishlist') }}" aria-label="{{ __('Wishlist') }}">{{ __('Wishlist') }}</a>
            </div>
            @endif

            @if ($prod->type != "Listing")
               <div class="compare-button">
                  <a class="compare button add_to_cart_button" data-href="{{ route('product.compare.add',$prod->id) }}" href="javascrit:;" data-bs-toggle="tooltip" data-bs-placement="right" title="{{__('Compare')}}" data-bs-original-title="{{__('Compare')}}" aria-label="{{__('Compare')}}">{{ __('Compare') }}</a>
               </div>
            @endif
         </div>
       </div>
       <div class="product-info">
          <h3 class="product-title"><a href="{{ route('front.product', $prod->slug) }}">
              <!--{{ $prod->showName() }}-->
                @if (app()->getLocale() === '17173493681JWu2JXL')
                {{ $prod->name_ar }}
            @elseif (app()->getLocale() === '17173493681JWu2KUR')
                @if (!empty($prod->name_ku))
                    {{ $prod->name_ku }}
                @else
                    {{ $prod->name_ar }}
                @endif
            @elseif (app()->getLocale() === '1605519199OsGO7B86')
                {{ $prod->name }}
            @endif 
              </a></h3>
          <div class="product-price">
             <div class="">
                   <!--<ins>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</ins>-->
                  <!-- <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</del>-->
                  @if($prod->showPrice())
                    <ins style="color:blue ;">({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</ins><br>
                    @endif
                        @if($prod->showPreviousPrice())
                   <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</del>
                       @endif
                <!--<ins>{{ $prod->showPrice() }} </ins>-->
                <!--<del>{{ $prod->showPreviousPrice() }}</del>-->
             </div>
          </div>
          <div class="shipping-feed-back">
             <div class="star-rating">
                <div class="rating-wrap">
                   <p><i class="fas fa-star"></i><span> {{ number_format($prod->ratings_avg_rating,1) }} {{ ($prod->ratings_count) }}</span></p>
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

<div class="full-row vendor-responsive-mobile"   style="background-color: {{ $backgroundColor }};">
          <div class="container">
              <div class="row justify-content-center">
                  <div class="col-lg-5">
                      <span class="text-secondary pb-2 d-table tagline mx-auto text-uppercase text-center" 
                      style="background-color: #f0f0f0; padding:10px ;border-radius: 15px;  font-weight: bold;"  >{{ __('All Prodect') }}</span><br>
                      <!--<h2 class="main-title mb-4 text-center text-secondary">{{ __('Best Selling Products') }}</h2>-->

                  </div>
              </div>
              
              
              
              
    <div class="products product-style-1">
    <div class="row g-4 row-cols-xl-7 row-cols-md-4 row-cols-sm-3 row-cols-3 e-title-general e-title-hover-primary e-image-bg-light e-hover-image-zoom e-info-center">
         @foreach($vprods as $prod)
                        <div class="col responsive-cards-product-col">
                           <div class="product1 type-product">
    <div class="product-wrapper">
       <div class="product-image">

          <a href="{{ route('front.product', $prod->slug) }}" class="woocommerce-LoopProduct-link">
               <img src="{{ $prod->photo ? asset('assets/images/products/' . $prod->photo) : asset('assets/images/noimage.png') }}"
                                            alt="Product Image">
             </a>
          @if(!empty($prod->features))
          <div class="product-variations">
             @foreach($prod->features as $key => $data1)
             <span class="active sale"><a href="#" style="background-color: {{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</a></span>
             @endforeach
          </div>
          @endif
          
          @if ($prod->offPercentage() && round($prod->offPercentage())>0)
          <div class="on-sale">- {{ round($prod->offPercentage() )}}%</div>
          @endif

          <div class="hover-area">
            @if($prod->product_type == "affiliate")
            <div class="cart-button">
               <a href="javascript:;" data-href="{{ $prod->affiliate_link }}" class="button add_to_cart_button affilate-btn" data-bs-toggle="tooltip" data-bs-placement="right" title="" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
            </div>
            @else
            @if($prod->emptyStock())
            <div class="closed">
               <a class="cart-out-of-stock button add_to_cart_button"  href="#" title="{{ __('Out Of Stock') }}" ><i class="flaticon-cancel flat-mini mx-auto"></i></a>
            </div>
            @else
            @if ($prod->type != "Listing")
          
               <div class="cart-button">
                 
                  <a href="javascript:;"
                  data-bs-toggle="modal"  {{$prod->cross_products ? 'data-bs-target=#exampleModal' : ''}}  data-href="{{ route('product.cart.add',$prod->id) }}" data-cross-href="{{route('front.show.cross.product',$prod->id)}}" class="add-cart button add_to_cart_button {{$prod->cross_products ? 'view_cross_product' : ''}}"  data-bs-placement="right"  title="Add To Cart" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
               </div>
               
       
            @endif
            @endif
            @endif
            @if(Auth::check())
            <div class="wishlist-button">
               <a class="add_to_wishlist  new button add_to_cart_button" id="add-to-wish" href="javascript:;" data-href="{{ route('user-wishlist-add',$prod->id) }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Add to Wishlist" title="{{ __('Wishlist') }}" aria-label="Add to Wishlist">{{ __('Wishlist') }}</a>
            </div>
            @else
            <div class="wishlist-button">
               <a class="add_to_wishlist button add_to_cart_button" href="{{ route('user.login') }}" data-bs-toggle="tooltip" data-bs-placement="right" title="{{ __('Wishlist') }}" data-bs-original-title="{{ __('Wishlist') }}" aria-label="{{ __('Wishlist') }}">{{ __('Wishlist') }}</a>
            </div>
            @endif

            @if ($prod->type != "Listing")
               <div class="compare-button">
                  <a class="compare button add_to_cart_button" data-href="{{ route('product.compare.add',$prod->id) }}" href="javascrit:;" data-bs-toggle="tooltip" data-bs-placement="right" title="{{__('Compare')}}" data-bs-original-title="{{__('Compare')}}" aria-label="{{__('Compare')}}">{{ __('Compare') }}</a>
               </div>
            @endif
         </div>
       </div>
       <div class="product-info">
          <h3 class="product-title">
            
              <a style="color:black" href="{{ route('front.product', $prod->slug) }}">
              <!--{{ $prod->showName() }}-->
                @if (app()->getLocale() === '17173493681JWu2JXL')
                {{ $prod->name_ar }}
            @elseif (app()->getLocale() === '17173493681JWu2KUR')
                @if (!empty($prod->name_ku))
                    {{ $prod->name_ku }}
                @else
                    {{ $prod->name_ar }}
                @endif
            @elseif (app()->getLocale() === '1605519199OsGO7B86')
                {{ $prod->name }}
            @endif 
              </a></h3>
          <div class="product-price">
             <div class="">
                  <!--<ins>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</ins>-->
                  <!-- <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</del>-->
                  @if($prod->showPrice())
                    <ins style="color:blue ;">({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</ins><br>
                    @endif
                        @if($prod->showPreviousPrice())
                   <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</del>
                       @endif
                <!--<ins>{{ $prod->showPrice() }} </ins>-->
                <!--<del>{{ $prod->showPreviousPrice() }}</del>-->
             </div>
          </div>
          <div class="shipping-feed-back">
             <div class="star-rating">
                <div class="rating-wrap">
                   <p><i class="fas fa-star"></i><span> {{ number_format($prod->ratings_avg_rating,1) }} {{ ($prod->ratings_count) }}</span></p>
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

{{-- <!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
    <div class="container">
        <div class="row text-center text-white">
            <div class="col-12">
                <h3 class="mb-2 text-white">{{ __('Products') }}</h3>
            </div>
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                        <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ __('Products') }}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb --> --}}

<!-- full-width banner -->
{{-- <div class="full-row" style="background-image: url('{{url('/') . '/assets/images/vendorbanner/' .$vendor->shop_image}}'); background-position: center center; background-size: cover; height: 300px;">
  <div class="container h-100 d-flex justify-content-center align-items-center">
      <h2 class="text-white">Your Banner Text Here</h2>
  </div>
</div> --}}
<!-- full-width banner -->








{{-- @includeIf('partials.product.grid') --}}

@includeIf('partials.global.common-footer')
@endsection

@section('script')

<script>
    let check_view = '';
    $(document).on('click','.check_view',function(){
        check_view = $(this).attr('data-shopview');
        filter();

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
 <script>
    function openTab(evt, tabName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tab-content");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].classList.remove("active");
      }
      tablinks = document.getElementsByClassName("tab-link");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].classList.remove("border-indigo-500", "text-indigo-600");
      }
      document.getElementById(tabName).classList.add("active");
      evt.currentTarget.classList.add("border-indigo-500", "text-indigo-600");
    }
  </script>


{{-- ------------------------------ js start --}}
{{-- <script>
  var owl = $('.home-slider').owlCarousel({
      loop: true,
      nav: false,
      dots: true,
      items: 1,
      autoplay: true,
      margin: 20,
      animateIn: 'fadeInDown',
      animateOut: 'fadeOutUp',
      mouseDrag: false,
  })
  $('.nextBtn').click(function() {
      owl.trigger('next.owl.carousel', [300]);
  })
  $('.prevBtn').click(function() {
      owl.trigger('prev.owl.carousel', [300]);
  })
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script>
 $(document).ready(function(){
      $('.coustom-categories-banner-1').slick({
          slidesToShow: 6,
          slidesToScroll: 4,
          autoplay: true,
          autoplaySpeed: 2000,
          responsive: [
              {
                  breakpoint: 1200,
                  settings: {
                      slidesToShow: 4,
                      slidesToScroll: 4
                  }
              },
              {
                  breakpoint: 992,
                  settings: {
                      slidesToShow: 3,
                      slidesToScroll: 4
                  }
              },
              {
                  breakpoint: 768,
                  settings: {
                      slidesToShow: 2,
                      slidesToScroll: 4
                  }
              },
              {
                  breakpoint: 576,
                  settings: {
                      slidesToShow: 2,
                      slidesToScroll: 4
                  }
              }
          ]
      });
  });
</script> --}}
<script>
    $(document).ready(function() {
        // Initialize Owl Carousel for the main slider
        $('.home-slider').owlCarousel({
            items: 1,
            loop: true,
            margin: 0,
            nav: false,
            dots: true,
            autoplay: true,
            autoplayTimeout: 7000,
            animateOut: 'fadeOut',
            animateIn: 'fadeIn'
        });

        // Initialize Slick Slider for the categories
        var rtl = $('body').css('direction') === 'rtl';

        $('.coustom-categories-banner-1').slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 4,
            autoplay: true,
            dots: false,
            arrows: false,  // Disable arrows in Slick settings and handle them manually
            rtl: rtl,
            responsive: [
                {
                    breakpoint: 1000,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 4
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 4,
                        slidesToScroll: 4
                    }
                }
            ]
        });

        // Custom next and prev button actions for Slick
        $('.nextBtn-slider').on('click', function() {
            $('.coustom-categories-banner-1').slick('slickNext');
        });

        $('.prevBtn-slider').on('click', function() {
            $('.coustom-categories-banner-1').slick('slickPrev');
        });


        // Custom next and prev button actions for Owl Carousel
        $('.nextBtn').on('click', function() {
            $('.home-slider').trigger('next.owl.carousel', [300]);
        });

        $('.prevBtn').on('click', function() {
            $('.home-slider').trigger('prev.owl.carousel', [300]);
        });
    });
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function(){
        $('#showImage').change(function(){
            if($(this).is(':checked')){
                $('#toggleImage').show();
            } else {
                $('#toggleImage').hide();
            }
        });
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
{{-- ------------------------------ js end --}}
@endsection

