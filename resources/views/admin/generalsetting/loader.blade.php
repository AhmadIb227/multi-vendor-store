@extends('layouts.admin')
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
 @if($curr_lang->rtl == 1)
<style>
    @media screen and (max-width: 767px) {
        .content-area {
    margin-right: 35px;
            
        }
     .add-logo-area .special-box img {
    height: 150px;
    display: inline-block;
}
.loader-switcher .title {
    font-size: 18px;
    font-weight: 600;
    line-height: 28px;

        margin-right: -32px;
    align-self: center;
}
    }
    </style>
    
    @else
    
    @endif
<style>

   @media (max-width: 767.98px) {
        .loader-switcher {
            margin-left: 0; /* إزاحة النص وزر الحالة إلى اليسار */
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .action-list {
            margin-top: 10px; /* إضافة مسافة بسيطة بين النص وزر الحالة */
            width: 65%;
        }

        .currrent-logo, .set-logo {
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* محاذاة النص وحقل رفع الملف إلى اليسار */
            text-align: left; /* محاذاة النص إلى اليسار */
            margin-bottom: 20px; /* إضافة مسافة تحت كل قسم */
        }

        .currrent-logo img, .set-logo input[type="file"] {
            margin-top: 10px; /* إضافة مسافة بسيطة بين النص والصورة أو حقل رفع الملف */
        }

        .submit-area {
            margin-top: 20px;
            display: flex;
            justify-content: flex-start; /* محاذاة زر الحفظ إلى اليسار */
            width: 100%;
        }
    }
</style>

<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __('Website Loader') }}</h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('General Settings') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('admin-gs-load') }}">{{ __('Website Loader') }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="add-logo-area">
        @include('alerts.admin.form-both')
        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="special-box">
                    <div class="heading-area">
                        <h4 class="title">
                            {{ __('Website Loader') }}
                        </h4>
                    </div>

                    <form class="uplogo-form" id="geniusform" action="{{ route('admin-gs-update') }}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}
                        @include('alerts.admin.form-both')
                        <div class="loader-switcher">
                            <h4 class="title">
                                {{ __('Loader:') }}
                            </h4>
                            <div class="action-list">
                                <select class="process select droplinks {{ $gs->is_loader == 1 ? 'drop-success' : 'drop-danger' }}">
                                    <option data-val="1" value="{{route('admin-gs-status',['is_loader',1])}}" {{ $gs->is_loader == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                    <option data-val="0" value="{{route('admin-gs-status',['is_loader',0])}}" {{ $gs->is_loader == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                </select>
                            </div>
                        </div>
                        <div class="currrent-logo">
                            <h4 class="title">
                                {{ __('Current Loader') }} :
                            </h4>
                            <img src="{{ $gs->loader ? asset('assets/images/'.$gs->loader) : asset('assets/images/noimage.png') }}" alt="">
                        </div>
                        <div class="set-logo">
                            <h4 class="title">
                                {{ __('Set New Loader') }} :
                            </h4>
                            <input class="img-upload1" type="file" name="loader">
                        </div>

                        <div class="submit-area mb-4">
                            <button type="submit" class="submit-btn">{{ __('Submit') }}</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="special-box">
                    <div class="heading-area">
                        <h4 class="title">
                            {{ __('Admin Loader') }}
                        </h4>
                    </div>

                    <form class="uplogo-form" id="geniusform" action="{{ route('admin-gs-update') }}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}
                        @include('alerts.admin.form-both')
                        <div class="loader-switcher">
                            <h4 class="title">
                                {{ __('Loader') }} :
                            </h4>
                            <div class="action-list">
                                <select class="process select droplinks {{ $gs->is_admin_loader == 1 ? 'drop-success' : 'drop-danger' }}">
                                    <option data-val="1" value="{{route('admin-gs-status',['is_admin_loader',1])}}" {{ $gs->is_admin_loader == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                    <option data-val="0" value="{{route('admin-gs-status',['is_admin_loader',0])}}" {{ $gs->is_admin_loader == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                </select>
                            </div>
                        </div>

                        <div class="currrent-logo">
                            <h4 class="title">
                                {{ __('Current Loader') }} :
                            </h4>
                            <img src="{{ $gs->admin_loader ? asset('assets/images/'.$gs->admin_loader) : asset('assets/images/noimage.png') }}" alt="">
                        </div>

                        <div class="set-logo">
                            <h4 class="title">
                                {{ __('Set New Loader') }} :
                            </h4>
                            <input class="img-upload1" type="file" name="admin_loader">
                        </div>

                        <div class="submit-area mb-4">
                            <button type="submit" class="submit-btn">{{ __('Submit') }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
