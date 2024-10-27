@extends('layouts.front')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/front/css/datatables.css')}}">
@endsection
@section('content')
@include('partials.global.common-header')
<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
   <div class="container">
      <div class="row text-center text-white">
         <div class="col-12">
            <h3 class="mb-2 text-white">{{ __('Packages') }}</h3>
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

                            <h4 class="widget-title down-line mb-30">{{ __('Package Details') }}

                            </h4>
                            <div class="pack-details">
                                <div class="row">

                                    <div class="col-lg-4">
                                        <h5 class="title">
                                            {{ __('Plan:') }}
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <p class="value">
                                            {{$subs->title}}
                                        </p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title">
                                            {{ __('Price:') }}
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <p class="value">
                                            {{ round($subs->price * $curr->value ,2) }}{{$curr->sign}}
                                        </p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title">
                                            {{ __('Durations:') }}
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <p class="value">
                                            {{$subs->days}} {{ __('Day(s)') }}
                                        </p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h5 class="title">
                                            {{ __('Product(s) Allowed:') }}
                                        </h5>
                                    </div>
                                    <div class="col-lg-8">
                                        <p class="value">
                                            {{ $subs->allowed_products == 0 ? 'Unlimited': $subs->allowed_products}}
                                        </p>
                                    </div>
                                </div>

                                @if(!empty($package))
                                @if($package->subscription_id != $subs->id)
                                <div class="row">
                                    <div class="col-lg-4">
                                    </div>
                                    <div class="col-lg-8">
                                        <span class="notic"><b>{{ __('Note:') }}</b>
                                            {{ __('Your Previous Plan will be deactivated!') }}</span>
                                    </div>
                                </div>

                                <br>
                                @else
                                <br>

                                @endif
                                @else
                                <br>
                                @endif

                                <form id="subscribe-form" class="pay-form"
                                    action="{{ $subs->price == 0 ? route('user-vendor-request-submit') : '' }}"
                                    method="POST">

                                    @include('alerts.form-success')
                                    @include('alerts.form-error')
                                    @include('alerts.admin.form-error')

                                    @csrf

                                    @if($user->is_vendor == 0)

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ __('Shop Name') }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" id="shop-name" class="option" name="shop_name"
                                                placeholder="{{ __('Shop Name') }}" required>
                                        </div>
                                    </div>

                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ __('Owner Name') }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="owner_name"
                                                placeholder="{{ __('Owner Name') }}" required>
                                        </div>
                                    </div>

                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ __('Shop Number') }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="shop_number"
                                                placeholder="{{ __('Shop Number') }}" required>
                                        </div>
                                    </div>

                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ __('Shop Address') }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="shop_address"
                                                placeholder="{{ __('Shop Address') }}" required>
                                        </div>
                                    </div>

                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ __('Registration Number') }} <small>{{ __('(Optional)') }}</small>
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="text" class="option" name="reg_number"
                                                placeholder="{{ __('Registration Number') }}">
                                        </div>
                                    </div>

                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ __('Message') }} <small>{{ __('(Optional)') }}</small>
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">
                                            <textarea class="option" name="shop_message"
                                                placeholder="{{ __('Message') }}" rows="5"></textarea>
                                        </div>
                                    </div>

                                    <br>

                                    @endif
                                    <input type="hidden" name="subs_id" value="{{ $subs->id }}">

                                    @if($subs->price != 0)

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <h5 class="title pt-1">
                                                {{ __('Select Payment Method') }} *
                                            </h5>
                                        </div>
                                        <div class="col-lg-8">

                                            <select name="method" id="method" class="option form-control border mb-3"
                                                required="">
                                                <option value="" data-form="" data-show="no" data-val="" data-href="">{{
                                                    __('Select an option') }}</option>
                                                @foreach($gateway as $paydata)

                                                @if($paydata->type == 'manual')

                                                <option value="{{ $paydata->title }}"
                                                    data-form="{{ $paydata->showSubscriptionLink() }}"
                                                    data-show="{{ $paydata->showForm() }}"
                                                    data-href="{{ route('user.load.payment',['slug1' => $paydata->showKeyword(),'slug2' => $paydata->id]) }}"
                                                    data-val="{{ $paydata->title }}">
                                                    {{ $paydata->title }}
                                                </option>

                                                @else

                                                <option value="{{ $paydata->name }}"
                                                    data-form="{{ $paydata->showSubscriptionLink() }}"
                                                    data-show="{{ $paydata->showForm() }}"
                                                    data-href="{{ route('user.load.payment',['slug1' => $paydata->showKeyword(),'slug2' => $paydata->id]) }}"
                                                    data-val="{{ $paydata->keyword }}">
                                                    {{ $paydata->name }}
                                                </option>

                                                @endif

                                                @endforeach
                                                < </select>

                                        </div>
                                    </div>

                                    <div id="payments" class="d-none">

                                    </div>
                                    @endif

                                    <input type="hidden" id="ck" value="0">
                                    <input type="hidden" name="sub" id="sub" value="0">
                                    <div class="row">
                                        <div class="col-lg-4">
                                        </div>
                                        <div class="col-lg-8">
                                            <button type="submit" id="final-btn" class="mybtn1">{{ __('Submit')
                                                }}</button>
                                        </div>
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
<!--==================== Blog Section End ====================-->
@includeIf('partials.global.common-footer')
@endsection
