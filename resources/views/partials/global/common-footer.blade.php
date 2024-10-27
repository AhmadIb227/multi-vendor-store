@php
$categories = App\Models\Category::with('subs')->where('status',1)->get();

$pages = App\Models\Page::get();
$vendor_id_visit = Session::has('shop_id') ? Session::get('shop_id') : null;
$vendor = App\Models\User::find($vendor_id_visit);
$logo = is_null($vendor_id_visit) ? asset('assets/images/'.$gs->logo) :  ($vendor->photo ? asset("assets/images/users/".$vendor->photo):asset('assets/images/'.$gs->user_image));
if(!is_null($vendor_id_visit)){
    $categories = App\Models\Product::with('category')->where('user_id', $vendor->id)->where('status',1)->pluck('category_id')->toArray();
    $categories = App\Models\Category::whereIn('id',$categories)->get();
}

@endphp

@if(is_null($vendor_id_visit))
    @if($ps->newsletter==15)
        <!--==================== Newsleter Section Start ====================-->
        <div class="full-row bg-dark py-30">
            <div class="container">
                <div class="row mx-auto">
                    <div class="col-lg-5 col-md-6 mx-auto">
                        <div class="d-flex align-items-center h-100">
                            <h4 class="text-white mb-0 text-uppercase">{{ __('Sign up to newslatter') }}  </h4>
                        </div>
                    </div>

                    <div class="col-lg-5 col-md-12">
                        <form action="{{route('front.subscribe')}}" class="subscribe-form subscribeform  position-relative md-mt-20" method="POST">
                            @csrf
                            <input class="form-control rounded-pill mb-0" type="text" placeholder="Enter your email" aria-label="Address" name="email">
                            <button type="submit" class="btn btn-secondary rounded-right-pill text-white">{{ __('Send') }}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--==================== Newsleter Section End ====================-->
    @endif
@endif
<!--==================== Newslatter Section End ====================-->
<style>
    .border-footer .col + .col{
        border: 0 !important;
    }
    .footer-widget li a {
        font-weight: 500 !important;
        font-size: 19px !important;
    }


    /* logo footer and name style*/
    .footer-logo{
        height: auto !important;
    }
    .footer-logo img{
        width: 230px !important;
    }
    .text-general {
        font-size: 17px !important;
    }
</style>
<!--==================== Footer Section Start ====================-->
<footer class="full-row bg-white border-footer p-0">
    <div class="container">
        {{-- @if(!isset($vendor) ) --}}
            <div class="row row-cols-xl-3 row-cols-md-2 row-cols-1" style="text-align: center;">
        {{-- @else
            <div class="row row-cols-xl-3 row-cols-md-2 row-cols-1" style="text-align: center;">
        @endif --}}
            <div class="col ">
                <div class="footer-widget my-2">

                    <div class="widget-ecommerce-contact">
                        @if(!isset($vendor))
                            {{-- @if($ps->phone != null)
                                <span class="font-medium font-500 text-dark">{{ __('Got Questions ? Call us 24/7!') }}</span>
                                <div class="text-dark h4 font-400 "><a href="tel:{{$ps->phone}}">{{ $ps->phone }}</a></div>
                            @endif --}}
                                <span class="widget-title text-dark" style="font-size: 20px;font-weight: 900;">{{__('Chat via Whatsapp') }}</span>
                                <div class="text-dark h4 font-400 " style="display: flex;margin: auto;"><a href="https://api.whatsapp.com/send?phone=905379445001" style="display: flex;margin: auto;align-items: center;"><img width="50" src="{{asset('assets/front/whatsapp.webp')}}" style="max-width: 50px;"></i> 905379445001</a></div>
                                <div class="footer-widget media-widget my-2">
                                    @foreach(DB::table('social_links')->where('user_id',(!isset($vendor) && is_null($vendor_id_visit))? 0 : $vendor->id)->where('status',1)->get() as $link)
                                        <a href="{{ $link->link }}" target="_blank" style="font-size: 25px;">
                                            <i class="{{ $link->icon }}"></i>
                                        </a>
                                    @endforeach
                                </div>
                        @else
                            {{-- <span class="font-medium font-500 text-dark">{{ __('Got Questions ? Call us 24/7!') }}</span>
                            <div class="text-dark h4 font-400 "><a href="tel:{{$vendor->phone}}">{{ $vendor->phone }}</a></div> --}}
                        @endif
                        @if(isset($vendor))
                            <span class="widget-title text-dark" style="font-size: 20px;font-weight: 900;">{{ __('Chat via Whatsapp') }}</span>
                            <div class="text-dark h4 font-400 " style="display: flex;margin: auto;"><a href="https://api.whatsapp.com/send?phone={{$vendor->phone}}" style="display: flex;margin: auto;align-items: center;"><img width="50" src="{{asset('assets/front/whatsapp.webp')}}" style="max-width: 50px;"></i> {{ $vendor->phone }}</a></div>
                            <div class="footer-widget media-widget mb-4">
                                @foreach(DB::table('social_links')->where('user_id',(!isset($vendor) && is_null($vendor_id_visit))? 0 : $vendor->id)->where('status',1)->get() as $link)
                                    <a href="{{ $link->link }}" target="_blank" style="font-size: 25px;">
                                        <i class="{{ $link->icon }}"></i>
                                    </a>
                                @endforeach
                            </div>
                        @endif
                        @if(!isset($vendor))
                            @if($ps->street != null)
                            <span class="h6 text-secondary mt-2">{{ __('Address :') }}</span>
                            <div class="text-general">{{ $ps->street }}</div>
                            @endif
                        @else
                            <span class="h6 text-secondary mt-2">{{ __('Address :') }}</span>
                            <div class="text-general">{{ $vendor->address }}</div>
                        @endif
                        @if(!isset($vendor))
                            @if($ps->email != null)
                                <span class="h6 text-secondary mt-2">{{ __('Email :') }}</span>
                                <div class="text-general">{{ $ps->email }}</div>
                            @endif
                        @else
                            <span class="h6 text-secondary mt-2">{{ __('Email :') }}</span>
                            <div  class="text-general">{{ $vendor->email }}</div>
                        @endif

                    </div>
                </div>
                {{-- <div class="footer-widget media-widget mb-4">
                    @foreach(DB::table('social_links')->where('user_id',(!isset($vendor) && is_null($vendor_id_visit))? 0 : $vendor->id)->where('status',1)->get() as $link)
                        <a href="{{ $link->link }}" target="_blank" style="font-size: 25px;">
                            <i class="{{ $link->icon }}"></i>
                        </a>
                    @endforeach
                </div> --}}
            </div>
            {{-- <div class="col">
                <div class="footer-widget category-widget my-5">
                    <h3 class="widget-title mb-4" style="font-size: 20px;">{{ __('Product Category') }}</h3>
                        <ul>
                        @foreach ($categories->take(6) as $cate)
                        <li style="font-size: 18px;"><a href="{{route('front.category', $cate->slug)}}{{!empty(request()->input('search')) ? '?search='.request()->input('search') : ''}}">{{ $cate->name }}</a></li>
                        @endforeach
                        </ul>
                </div>
            </div> --}}
            <hr class="d-block d-md-none">
            <div class="col">
                <div class="footer-widget category-widget my-2">
                    <h6 class="widget-title mb-sm-2" style="font-size: 20px;font-weight: 900;">{{ __('Customer Care') }}</h6>
                    <ul>
                        @if(isset($vendor))
                            <li style="font-size: 19px;"><a href="{{ route('front.vendor',str_replace(' ', '-', $vendor->shop_name)) }}">{{ __('Home Page') }}</a></li>
                            {{-- <li style="font-size: 19px;"><a href="{{ route('user-packages') }}">{{ __('selling Packages') }}</a></li> --}}
                            <li style="font-size: 19px;"><a href="#ajaxContent">{{ __('All Products') }}</a></li>
                            <li style="font-size: 19px;"><a href="{{route('about-us')}}">{{ __('About Us') }}</a></li>
                            <li style="font-size: 19px;"><a href="{{ route('front.contact') }}">
                                {{ __('Contact us') }}</a></li>
                        @else
                            @if($ps->home == 1)
                            <li>
                                <a href="{{ route('front.index') }}">{{ __('Home') }}</a>
                            </li>
                            @endif
                            <li style="font-size: 19px;"><a href="{{ route('user-packages') }}">{{ __('selling Packages') }}</a></li>
                            @if($ps->blog == 1)
                                <li>
                                    <a href="{{ route('front.blog') }}">{{ __('Blog') }}</a>
                                </li>
                            @endif
                            @if($ps->faq == 1)
                                <li>
                                    <a href="{{ route('front.faq') }}">{{ __('Faq') }}</a>
                                </li>
                                @endif

                                @foreach(DB::table('pages')->where('footer','=',1)->get() as $data)
                                     @if (app()->getLocale() === '17173493681JWu2JXL')
                                    <li><a href="{{ route('front.vendor',$data->slug) }}">{{ $data->title_ar }}</a></li>
                                    @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                          @if (!empty($prod->name_ku))
                                             <li><a href="{{ route('front.vendor',$data->slug) }}">{{ $data->title_ku }}</a></li>
                                          @else
                                             <li><a href="{{ route('front.vendor',$data->slug) }}">{{ $data->title_ar }}</a></li>
                                          @endif
                                    @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                    <li><a href="{{ route('front.vendor',$data->slug) }}">{{ $data->title }}</a></li>
                                    @endif
                                <!--<li><a href="{{ route('front.vendor',$data->slug) }}">{{ $data->title }}</a></li>-->

                            @endforeach
                            @if($ps->contact == 1)
                            <li>
                                <a href="{{ route('front.contact') }}">{{ __('Contact Us') }}</a>
                            </li>
                            @endif
                        @endif

                    </ul>
                </div>
            </div>

            <hr class="d-block d-md-none">

            <!--<div class="col">-->
            <!--    @if (isset($categories) && $categories->isNotEmpty())-->
            <!--        <div class="footer-widget category-widget my-2">-->
            <!--            <h6 class="widget-title mb-sm-2" style="font-size: 20px;font-weight: 900;">PRODUCT CATEGORY</h6>-->
            <!--            <ul>-->
            <!--                @foreach ($categories->take(6) as $fcategory)-->
            <!--                <li style="font-size: 19px;"><a href="{{ route('front.category', $fcategory->slug) }}">{{ $fcategory->name }}</a></li>-->
            <!--                @endforeach-->
            <!--            </ul>-->
            <!--        </div>-->
            <!--    @else-->


{{-- @endif --}}

               {{-- <div class="footer-logo mb-4" style="margin-top: 45px !important;">
                        <a href="{{ route('front.index') }}"><img src="{{ $logo }}" width="200" alt="Image not found!" /></a>
             </div> --}}
            {{-- <div class="text-general">
                    {{ __('Zarar e-commerce platform')}}<br>{{__('E-commerce is easy and profitable') }}
         --}}
            @endif
            <!--</div>-->

            <div class="col ">
                <div class="footer-logo mb-3" style="margin-top: 25px !important;">
                    <a href="{{ route('front.index') }}">
                        <img src="{{ $logo }}" width="300" alt="Image not found!" /></a>
                </div>
                @if(Auth::user())

            @else
                <div class="text-general mt-3">
                      {{ __('Azraar e-commerce platform')}}<br>{{__('E-commerce is easy and profitable') }}
                </div>
            @endif
              </div>
            {{-- @if(is_null($vendor_id_visit))
                <div class="col">
                    <div class="footer-widget widget-nav my-5">
                        <h6 class="widget-title mb-sm-4">{{ __('Recent Post') }}</h6>
                        <ul>
                            @foreach ($footer_blogs as $footer_blog)
                            <li>
                                <div class="post">
                                    <div class="post-img">
                                        <img src="{{ asset('assets/images/blogs/'.$footer_blog->photo) }}" alt="">
                                    </div>
                                    <div class="post-details">
                                        <a href="{{ route('front.blogshow',$footer_blog->slug) }}">
                                            <h4 class="post-title">
                                                {{mb_strlen($footer_blog->title,'UTF-8') > 45 ? mb_substr($footer_blog->title,0,45,'UTF-8')." .." : $footer_blog->title}}
                                            </h4>
                                        </a>
                                        <p class="date">
                                            {{ date('M d - Y',(strtotime($footer_blog->created_at))) }}
                                        </p>
                                    </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif --}}
        </div>
    </div>
</footer>
<!--==================== Footer Section End ====================-->

<!--==================== Copyright Section Start ====================-->
<div class="container">
    <div class="mx-auto text-center py-3">
        <span class="sm-mb-10 d-block" style="font-size: 20px;"><a href="/">{{ $gs->copyright }}</a></span>
    </div>
</div>

@if(isset($visited))
    @if($gs->is_cookie == 1)
        <div class="cookie-bar-wrap show">
            <div class="container d-flex justify-content-center">
                <div class="col-xl-10 col-lg-12">
                    <div class="row justify-content-center">
                        <div class="cookie-bar">
                            <div class="cookie-bar-text">
                                {{ __('The website uses cookies to ensure you get the best experience on our website.') }}
                            </div>
                            <div class="cookie-bar-action">
                                <button class="btn btn-primary btn-accept">
                                {{ __('GOT IT!') }}
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
@endif


<!--==================== Copyright Section End ====================-->

<!-- Scroll to top -->
<a href="#" class="scroller text-white" id="scroll"><i class="fa fa-angle-up"></i></a>
