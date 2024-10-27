@extends('layouts.front')

@section('content')
@include('partials.global.common-header')
<style>
    .full-row{
            padding-top: 10px;
                padding-bottom: 70px;
        }
</style>
<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3"
    style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
    <div class="container">
        <div class="row text-center text-white">
            <div class="col-12">
                <h3 class="mb-2 text-white">{{ __('Pricing Plans') }}</h3>
            </div>
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="direction: ltr !important;">
                        <li class="breadcrumb-item"><a href="{{ route('user-packages') }}">{{ __('Packages') }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{ __('Pricing Plans') }}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb -->

<!--==================== Pricing Plans Section Start ====================-->
<div class="full-row">
    <div class="container">
        <div class="mb-4 d-xl-none">
            <button class="dashboard-sidebar-btn btn rounded" style="background-color:#7367F0">
                <i class="fas fa-bars"></i>
            </button>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="user-profile-details">
                   <div class="pricing-wrapper d-flex flex-nowrap justify-content-center overflow-auto">
    @foreach($subs as $sub)
    <div class="pricing-item m-2" style="flex: 0 0 250px;" >
        <div class="elegant-pricing-tables style-2 text-center">
            <div class="pricing-head">
                <h3>{{ $sub->title }}</h3>
                @if($sub->price == 0)
                <span class="price"
                    style="background-color: #143250;
                    padding: 10px 20px;
                    border-radius: 10px;
                    text-align: center; 
                    align-items: center; 
                    justify-content: center;
                    display: flex;
                    margin: 0 auto;">
                    <span class="price-digit" style="font-size: 22px;">{{ __('Free') }}</span>
                </span>
            

                                    @else
                                 <span class="price"
    style="background-color: #143250;
    padding: 10px 20px;
    border-radius: 10px;
    text-align: center; 
    align-items: center; 
    justify-content: center;
    display: flex;
    flex-direction: column; /* يجعل العناصر تحت بعضها */
    margin: 0 auto;
    height: 110px;">
    <span class="price-digit" style="font-size: 22px;">{{ round($sub->price * $curr->value,2) }}</span>
    <span class="price-currency" style="font-size: 15px;">{{ $curr->sign }}</span>
    <span class="price-month">{{ $sub->days }} {{ __('Day(s)') }}</span>
</span>

                                    @endif
                                </div>
                                <div class="pricing-detail">
                                    <ul class="list-unstyled text-center">
                                        @foreach($sub->features as $feature)
                                        <li class="d-flex align-items-center justify-content-start mb-2">
                                            @if($feature->has_icon)
                                            <i class="fas fa-check text-success mr-2" style="margin-left: 15px;"></i>
                                            @else
                                            <i class="fas fa-times text-danger mr-2 " style="margin-left: 15px;"></i>
                                            @endif
                                            <span>{{ $feature->name_en }}</span>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                                @if(!empty($package))
                                @if($package->subscription_id == $sub->id)
                                <a href="javascript:;" class="btn btn-default">{{ __('Current Plan') }}</a>
                                <br>
                                @if(Carbon\Carbon::now()->format('Y-m-d') > $user->date)
                                <small class="hover-white">{{ __('Expired on:') }} {{ date('d/m/Y',strtotime($user->date)) }}</small>
                                @else
                                <small class="hover-white">{{ __('Ends on:') }} {{ date('d/m/Y',strtotime($user->date)) }}</small>
                                @endif
                                <a href="{{route('user-vendor-request',$sub->id)}}" class="hover-white"><u>{{ __('Renew') }}</u></a>
                                @else
                                <a href="{{route('user-vendor-request',$sub->id)}}" class="btn btn-default">{{ __('Get Started') }}</a>
                                <br><small>&nbsp;</small>
                                @endif
                                @else
                                <a href="{{route('user-vendor-request',$sub->id)}}" class="btn btn-default">{{ __('Get Started') }}</a>
                                <br><small>&nbsp;</small>
                                @endif
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==================== Pricing Plans Section End ====================-->

@includeIf('partials.global.common-footer')

@endsection

@section('script')

<script type="text/javascript">
    $('.pricing-detail font').removeAttr('color');

    // Add animation on hover
    $('.elegant-pricing-tables').hover(
        function () {
            $(this).addClass('animated pulse');
        },
        function () {
            $(this).removeClass('animated pulse');
        }
    );

</script>

<style>
    .pricing-wrapper {
        flex-wrap: nowrap;
        overflow-x: auto;
    }

    .pricing-item {
        flex: 0 0 250px;
    }

    /* Customize the scrollbar */
    .pricing-wrapper::-webkit-scrollbar {
        width: 8px;
        height: 8px;
    }

    .pricing-wrapper::-webkit-scrollbar-track {
        background: #f1f1f1; /* Background of the scrollbar track */
    }

    .pricing-wrapper::-webkit-scrollbar-thumb {
        background: #c0c0c0; /* Silver scrollbar color */
        border-radius: 4px;
    }

    .pricing-wrapper::-webkit-scrollbar-thumb:hover {
        background: #a0a0a0; /* Darker silver scrollbar color on hover */
    }

    .elegant-pricing-tables {
        height: 900px; /* ثابت طول الباقة */
        width: 200px;
    }

    @media only screen and (max-width: 600px) {
        .pricing-wrapper {
            flex-direction: column;
            align-items: center;
            
        justify-content: center;
        text-align: center;
        }
        

        .pricing-item {
            width: 100%;
            max-width: 100%;
            
        }

        .elegant-pricing-tables {
            height: auto; /* يسمح بتغيير الارتفاع في العرض للجوال */
            width: 100%;
        }
    }
</style>

@endsection
