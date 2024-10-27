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
    }
    </style>
    
    @else
    
    @endif
<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __('Website Favicon') }}</h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('General Settings') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('admin-gs-fav') }}">{{ __('Website Favicon') }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="add-logo-area">
        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
        <div class="row justify-content-center">
            <div class="col-lg-6">

                @include('alerts.admin.form-both')

                <form class="uplogo-form" id="geniusform" action="{{ route('admin-gs-update') }}" method="POST" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="currrent-logo">
                        <h4 class="title">
                            {{ __('Current Favicon') }} :
                        </h4>
                        <img src="{{ $gs->favicon ? asset('assets/images/'.$gs->favicon):asset('assets/images/noimage.png')}}" alt="">
                    </div>
                    <div class="set-logo">
                        <h4 class="title">
                            {{ __('Set New Favicon') }} :
                        </h4>
                        <input class="img-upload1" type="file" name="favicon">
                    </div>
                    <div class="submit-area">
                        <button type="submit" class="submit-btn">{{ __('Save') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
    @media (max-width: 600px) {
        .add-logo-area {
            padding: 15px;
        }

        .currrent-logo, .set-logo {
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* ازاحة العناصر إلى اليسار */
            text-align: left; /* محاذاة النص إلى اليسار */
        }

        .set-logo input[type="file"] {
            margin-top: 10px; /* إضافة مسافة بسيطة بين النص وحقل رفع الملف */
        }

        .submit-area {
            margin-top: 20px;
            display: flex;
            justify-content: flex-start; /* ازاحة زر الحفظ إلى اليسار */
        }
    }
</style>

@endsection
