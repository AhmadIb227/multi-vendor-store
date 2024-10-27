@extends('layouts.front')
@section('css')
{{-- <link rel="stylesheet" href="{{ asset('assets/front/css/category/classic.css') }}"> --}}
<head>
    <script src="" defer></script>
</head>
<style>
    /* @media only screen and (max-width: 767px) {
        .banner-slide-item  {
        background-size: contain !important;
    }
    .banner-wrapper-item {
    min-height: 250px !important;
    padding: 0 15px !important;
    
}
    } */
    .banner-slide-item {
    position: relative !important;
      width: 100% ;
    height: 500px !important; 
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
}

.banner-image-wrapper {
    width: 100% !important;
    height: 100% !important;
     position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
}

.banner-image-wrapper img {
    width: 100% !important;
    height: 100% !important;
    object-fit: cover !important;
    display: block !important;
}

.banner-wrapper-item {
    position: relative;
    z-index: 1;
}



</style>
@endsection
@section('content')
@include('partials.global.common-header')


@include('partials.global.subscription-popup')


@if($ps->slider == 1)
<div class="position-relative">
    <span class="nextBtn"></span>
    <span class="prevBtn"></span>
    <section class="home-slider owl-theme owl-carousel">
        <!--@foreach($sliders->where('slider_position','top') as $data)-->
        <!--<div class="banner-slide-item"-->
        <!--    style="background: url('{{asset('assets/images/sliders/'.$data->photo)}}') no-repeat center center / cover ;">-->
        <!--    <div class="container">-->
        <!--        <div class="banner-wrapper-item text-{{ $data->position }}">-->
        <!--            <div class="banner-content ">-->
        <!--                <h5 class="subtitle slide-h5" style="color: {{$data->subtitle_color}}">{{$data->subtitle_text}}-->
        <!--                </h5>-->

        <!--                <h2 class="title slide-h5" style="color: {{$data->title_color}}">{{$data->title_text}}</h2>-->

        <!--                <p class="slide-h5" style="color: {{$data->details_color}}">{{$data->details_text}}</p>-->

        <!--                <a href="{{$data->link}}" class="cmn--btn ">{{ __('SHOP NOW') }}</a>-->
        <!--            </div>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->
        <!--@endforeach-->
        
        
        
 @foreach($sliders->where('slider_position','top') as $data)
    <div class="banner-slide-item slider-style-top">  
        <div class="banner-image-wrapper">
            <img src="{{ asset('assets/images/sliders/'.$data->photo) }}" alt="Slider Image">
        </div> 
        <div class="container">
            <div class="banner-wrapper-item text-{{ $data->position }}">
                <div class="banner-content">
                    <h5 class="subtitle slide-h5" style="color: {{$data->subtitle_color}}">{{$data->subtitle_text}}</h5>
                    <h2 class="title slide-h5" style="color: {{$data->title_color}}">{{$data->title_text}}</h2>
                    <p class="slide-h5" style="color: {{$data->details_color}}">{{$data->details_text}}</p>
                    <!--<a href="{{$data->link}}" class="cmn--btn">{{ __('SHOP NOW') }}</a>-->
                </div>
            </div>
        </div>
    </div>
@endforeach
    </section>
</div>
@endif

@php
$half = ceil(count($featured_categories) / 2);
$first_half = array_slice($featured_categories->toArray(), 0, $half);
$second_half = array_slice($featured_categories->toArray(), $half);
@endphp




<!--==================== Category Section Start ====================-->
<div class="full-row pt-0 px-sm-5 pb-0 full-responseve home-carousel">
    <div class="container-fluid">
        <span class="prevBtn-slider">
            <i class="fa-solid fa-circle-arrow-left"></i></span>
        <div class="coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom">
            @foreach ($featured_categories as $fcategory)
            <div class="col p-2">
                <div class="product type-product">
                    <div style="border-radius: 16px;">
                        <div class="product-image">
                            <a href="{{route('front.category',$fcategory['slug'])}}">
                                <img width="300" height="300" src="{{asset('assets/images/categories/'.$fcategory['image'])}}" style="border-radius: 25px;" alt="Product image">
                            </a>
                            <h6 class="product-title text-center mt-2">
                                <a href="{{route('front.category',$fcategory['slug'])}}">
                                    @if (app()->getLocale() === '17173493681JWu2JXL')
                                        {{ $fcategory['name_ar'] }}
                                    @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                        @if (!empty($fcategory['name_ku']))
                                            {{ $fcategory['name_ku'] }}
                                        @else
                                            {{ $fcategory['name_ar'] }}
                                        @endif
                                    @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                        {{ $fcategory['name'] }}
                                    @endif
                                </a>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <span class="nextBtn-slider"><i class="fa-solid fa-circle-arrow-right"></i></span>
    </div>
</div>
<!--==================== Category Section End ====================-->
<!--==================== Category Section Start ====================-->
<div class="full-row pt-0 px-sm-5 pb-0 part-row home-carousel">
    <div class="container-fluid">
        <span class="prevBtn-slider"><i class="fa-solid fa-circle-arrow-left"></i></span>
        <div class="coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom" style="left: 10px;">
            @foreach ($first_half as $fcategory)
            <div class="col p-2">
                <div class="product type-product">
                    <div style="border-radius: 16px;">
                        <div class="product-image">
                            <a href="{{route('front.category',$fcategory['slug'])}}">
                                <img width="300" height="300" src="{{asset('assets/images/categories/'.$fcategory['image'])}}" style="border-radius: 25px;" alt="Product image">
                            </a>
                            <h6 class="product-title text-center mt-2">
                                <a href="{{route('front.category',$fcategory['slug'])}}">
                                    @if (app()->getLocale() === '17173493681JWu2JXL')
                                        {{ $fcategory['name_ar'] }}
                                    @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                        @if (!empty($fcategory['name_ku']))
                                            {{ $fcategory['name_ku'] }}
                                        @else
                                            {{ $fcategory['name_ar'] }}
                                        @endif
                                    @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                        {{ $fcategory['name'] }}
                                    @endif
                                </a>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <span class="nextBtn-slider"><i class="fa-solid fa-circle-arrow-right"></i></span>
    </div>
</div>
<!--==================== Category Section End ====================-->

<!--==================== Category Section Start 2 ====================-->
<div class="full-row pt-0 px-sm-5 pb-0 part-row home-carousel">
    <div class="container-fluid">
        <span class="prevBtn-slider"><i class="fa-solid fa-circle-arrow-left"></i></span>
        <div class="coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom" style="left: 10px;">
            @foreach ($second_half as $fcategory)
           <div class="col p-2">
                <div class="product type-product">
                    <div style="border-radius: 16px;">
                        <div class="product-image">
                            <a href="{{route('front.category',$fcategory['slug'])}}">
                                <img width="300" height="300" src="{{asset('assets/images/categories/'.$fcategory['image'])}}" style="border-radius: 25px;" alt="Product image">
                            </a>
                            <h6 class="product-title text-center mt-2">
                                <a href="{{route('front.category',$fcategory['slug'])}}">
                                    @if (app()->getLocale() === '17173493681JWu2JXL')
                                        {{ $fcategory['name_ar'] }}
                                    @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                        @if (!empty($fcategory['name_ku']))
                                            {{ $fcategory['name_ku'] }}
                                        @else
                                            {{ $fcategory['name_ar'] }}
                                        @endif
                                    @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                        {{ $fcategory['name'] }}
                                    @endif
                                </a>
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!--==================== Category Section End 2 ====================-->

{{-- <div class="full-row pt-0  px-sm-5 pb-0  home-carousel">
    <div class="container-fluid">
        <div class="row coustom-categories-banner-1 e-wrapper-absolute e-hover-image-zoom">
            @foreach ($featured_categories as $fcategory)
            <div class="col">
                <div class="product type-product">
                    <div class="product-wrapper">
                        <div class="product-image">
                            <a href="{{route('front.category',$fcategory->slug)}}"><img
                                    src="{{asset('assets/images/categories/'.$fcategory->image)}}"
                                    alt="Product image"></a>
                        </div>
                        <div class="product-info">
                            <h6 class="product-title"><a
                                    href="{{route('front.category',$fcategory->slug)}}">{{$fcategory->name}}</a></h6>
                            <span class="strok">({{$fcategory->products_count}})</span>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div> --}}
<!--==================== Category Section End ====================-->


@if($ps->slider == 1)
<style>
    .owl-stage-outer{
        max-height: 500px !important;
    }
    
     .slider-style-center .owl-stage-outer{
        height: 250px !important;
    }
        .banner-slide-item-center {
    position: relative !important;
      width: 100% ;
    height: 200px; /* يمكنك تعديل هذا القيمة حسب الحاجة */
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
}

 .slider-style-center .banner-image-wrapper {
    width: 100% !important;
    height: 100% !important;
     position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
}

 .slider-style-center .banner-image-wrapper img {
    width: 100% !important;
    height: 100% !important;
    object-fit: cover !important;
    display: block !important;
}

 .slider-style-center .banner-wrapper-item-center {
    position: relative;
    z-index: 1;
}

.slider-style-center .prevBtn , .slider-style-center .nextBtn{
 top: 30% !important; 
}

.month-offer{
    padding-top: 5px !important;
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


/* ****************** slider category btn end */
@media screen and (max-width: 600px) {
    
    /* ****************** first slider category btn start */

    .full-responseve{
        display: none;
    }
    /* ****************** first slider category btn end */

    .full-row {
    padding-top: 0px !important;
    padding-bottom: 0px !important;
}

 .slider-style-center .owl-stage-outer {
            height: 100px !important;
            margin-top : 35px;
        }
        
          .banner-image-wrapper{
            height : 135px !important;
            
        }
        .banner-slide-item{
            height : 135px !important;
            
        }
        
        .slider-style-center h5 , .slider-style-center h2 , .slider-style-center p {
            display:none !important;
        }
        .slider-style-top h5 , .slider-style-top h2 , .slider-style-top p {
            display:none !important;
        }
        
        .prevBtn-slider {
            left: 100px;
        }
        .nextBtn-slider {
            right: 100px;
        }
        .prevBtn-slider, .nextBtn-slider {
            top: 217%;
            cursor: pointer;
            font-size: 25px;
        }
        /* .prevBtn-slider, .nextBtn-slider {
            display: none !important;
        } */
}

@media screen and (min-width: 1200px) {
    .section-style .text-style{
        font-size: 20px !important;
    }
}

    
</style>
<div class="position-relative slider-style-center  mt-3">
    <span class="nextBtn"></span>
    <span class="prevBtn"></span>
    <section class="home-slider slider-style-center owl-theme owl-carousel">
        @foreach($sliders->where('slider_position','center') as $data)
        <div class="banner-slide-item-center">
        <div class="banner-image-wrapper">
            <img src="{{ asset('assets/images/sliders/'.$data->photo) }}" alt="Slider Image" >
        </div>
        <div class="container">
            <div class="banner-wrapper-item-center text-{{ $data->position }}">
                <div class="banner-content">
                    <h5 class="subtitle slide-h5" style="color: {{$data->subtitle_color}}">{{$data->subtitle_text}}</h5>
                    <h2 class="title slide-h5" style="color: {{$data->title_color}}">{{$data->title_text}}</h2>
                    <p class="slide-h5" style="color: {{$data->details_color}}">{{$data->details_text}}</p>
                    <!--<a href="{{$data->link}}" class="cmn--btn">{{ __('SHOP NOW') }}</a>-->
                </div>
            </div>
        </div>
    </div>

        @endforeach
    </section>
</div>
@endif


@if($ps->arrival_section == 1)
<!--==================== Best Month Offer Section Start ====================-->
<div class="full-row px-sm-5 month-offer section-style">
    <div class="container-fluid">
        <div class="row justify-content-center wow fadeInUp animated" data-wow-delay="200ms" data-wow-duration="1000ms">
            <div class="col-xxl-5 col-xl-7 col-lg-9">
                <div class="text-center mb-40">
                    <h2 class="text-center font-500 mb-4 text-style">{{__('Best Month Offer')}}</h2>
        <!--<span class="sub-title">{{__('Erat pellentesque curabitur euismod dui etiam pellentesque rhoncus fermentum tristique lobortis lectus magnis. Consequat porta turpis maecenas')}}</span>-->
                </div>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-xxl-6 col-md-12">
                <div class="banner-wrapper hover-img-zoom banner-one custom-class-122 bg-light">
                    <div class="banner-image overflow-hidden transation"><img
                            src="{{asset('assets/images/arrival/'.$arrivals[0]['photo'])}}" alt="Banner Image"></div>
                    <div class="banner-content y-center position-absolute">
                        <div class="middle-content">
                            <span class="up-to-sale">{{$arrivals[0]['up_sale']}}</span>
                            <h3><a href="{{$arrivals[0]['url']}}"
                                    class="text-dark text-decoration-none">{{$arrivals[0]['title']}}</a></h3>
                            <a href="{{$arrivals[0]['url']}}" class="category">{{$arrivals[0]['header']}}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-3 col-md-6">
                <div class="banner-wrapper hover-img-zoom banner-one custom-class-123">
                    <div class="banner-image overflow-hidden transation"><img
                            src="{{asset('assets/images/arrival/'.$arrivals[1]['photo'])}}" alt="Banner Image"></div>
                    <div class="banner-content position-absolute">
                        <div class="middle-content">
                            <span class="up-to-sale">{{$arrivals[1]['up_sale']}}</span>
                            <h3><a href="{{$arrivals[1]['url']}}"
                                    class="text-dark text-decoration-none">{{$arrivals[1]['title']}}</a></h3>
                            <a href="{{$arrivals[1]['url']}}" class="category">{{$arrivals[1]['header']}}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-3 col-md-6">
                <div class="banner-wrapper hover-img-zoom banner-one custom-class-124 bg-light">
                    <div class="banner-image overflow-hidden transation"><img
                            src="{{asset('assets/images/arrival/'.$arrivals[2]['photo'])}}" alt="Banner Image"></div>
                    <div class="banner-content position-absolute">
                        <span class="up-to-sale">{{$arrivals[2]['up_sale']}}</span>
                        <h3><a href="{{$arrivals[2]['url']}}"
                                class="text-dark text-decoration-none">{{$arrivals[2]['title']}}</a></h3>
                        <a href="{{$arrivals[2]['url']}}" class="category">{{$arrivals[2]['header']}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==================== Best Month Offer Section End ====================-->

@endif


@include('partials.theme.extraindex')



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
<!-- Scroll to top -->
<a href="#" class="scroller text-white" id="scroll"><i class="fa fa-angle-up"></i></a>

@endsection
@section('script')
<!-- Include Slick and Owl Carousel scripts -->
<script src="" defer></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
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
@endsection