@extends('layouts.front')

@section('content')
    @include('partials.global.common-header')

    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.min.css">

    </head>
    <!-- breadcrumb -->
    <div class="full-row bg-light overlay-dark p-3"
        style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/' . $gs->breadcrumb_banner) : asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
        <div class="container">
            <div class="row text-center text-white">
                <div class="col-12">
                    <h3 class="mb-2 text-white">{{ __('Register') }}</h3>
                </div>
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0"
                            style="
    direction: ltr !important;
">
                            <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>

                            <li class="breadcrumb-item active" aria-current="page">{{ __('Register') }}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->

    <!--==================== Registration Form Start ====================-->
    <div class="full-row">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="woocommerce">
                        <div class="row">
                            <div class="col-lg-6 col-md-8 col-12 mx-auto">
                                <div class="registration-form border">
                                    @include('includes.admin.form-login')
                                    <h3>{{ __('Signup Now') }}</h3>
                                    <form id="registerform" action="{{ route('user-register-submit') }}" method="POST">
                                        @csrf
                                        <p>

                                            <input type="text" name="name" class="form-control"
                                                placeholder="{{ __('Full Name') }}">
                                        </p>

                                        <p class="date-container">
                                            <input type="date" name="birthdate" class="form-control"
                                                placeholder="Date of Birth">
                                        </p>

                                        <div>
                                            <label for="">{{ __('Gender') }}</label>
                                            <div class="radio-group" style="display: flex;">
                                                <label>
                                                    <input type="radio" name="gender" value="male" required
                                                        style="width: fit-content;">
                                                    {{ __('Male') }}
                                                    <input type="radio" name="gender" value="female" required
                                                        style="width: fit-content;">
                                                    {{ __('Female') }}
                                                </label>
                                                <label>

                                                </label>
                                            </div>
                                        </div>
                                        <p>

                                            <input type="email" name="email" class="form-control" required=""
                                                placeholder="{{ __('Email Address') }}">
                                        </p>

                                        {{-- <p>
                                                <input type="text" name="referral_code" class="form-control" placeholder="Referral Code">

                                            </p> --}}
                                        <p>
                                            <input type="text" style="width: 513px ; " name="phone"
                                                class="form-control" required="" placeholder="{{ __('Phone Number') }}"
                                                id="phone">
                                        </p>
                                        <p>
                                            <input type="text" name="address" class="form-control" required=""
                                                placeholder="{{ __('Address') }}">
                                        </p>

                                        <p>
                                            <input type="password" name="password" class="form-control" required=""
                                                placeholder="{{ __('Password') }}">
                                        </p>
                                        <p>
                                            <input type="password" name="password_confirmation" class="form-control"
                                                required="" placeholder="{{ __('Confirm Password') }}">
                                        </p>
                                        <p>

                                          <style>
                                        .dropdown-menu {
                                            max-height: 200px;
                                            overflow-y: auto;
                                            display: none;
                                        }
                                        .dropdown-menu.show {
                                            display: block;
                                        }
                                    </style>
                                    
                                    <div class="container mt-5">
                                        <div class="form-check mb-3">
                                            <input type="checkbox" id="termsCheckbox" class="form-check-input" required>
                                            <label for="termsCheckbox" class="form-check-label">
                                                <a href="#" id="termsLink">{{ __('I agree to the terms and conditions') }}</a>
                                            </label>
                                        </div>
                                        
                                        
                                <div class="dropdown-menu" id="dropdownMenu">
                                @php
                                   $title = 'Terms & Condition';
                                   $page = App\Models\Page::where('title', $title)->first();
                                @endphp
                                
        
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                   
                                 
                                   
                                                    @if ($page)
                                                    @if (app()->getLocale() === '17173493681JWu2JXL')
                                                        <p class="dropdown-item-title">
                                                            {{ $page->title_ar }}
                                                        </p>
                                                        
                                                        <p class="dropdown-item-content">
                                                            {!! nl2br(e($page->details_ar)) !!}
                                                        </p>
                                                        
                                                    @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                                        @if (!empty($page->title_ku))
                                                            <p class="dropdown-item-title">
                                                                {{ $page->title_ku }}
                                                            </p>
                                                            
                                                            <p class="dropdown-item-content">
                                                                {!! nl2br(e($page->details_ku)) !!}
                                                            </p>   
                                                        @else
                                                            <p class="dropdown-item-title">
                                                                {{ $page->title_ar }}
                                                            </p>
                                                            
                                                            <p class="dropdown-item-content">
                                                                {!! nl2br(e($page->details_ar)) !!}
                                                            </p>
                                                        @endif
                                                    @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                                        <p class="dropdown-item-title">
                                                            {{ $page->title }}
                                                        </p>
                                                        
                                                        <p class="dropdown-item-content">
                                                            {!! nl2br(e($page->details)) !!}
                                                        </p>
                                                    @endif
                                                @else
                                                    <p class="dropdown-item-content">
                                                       {{__('No data available.')}} 
                                                    </p>
                                                @endif
                                                
                                                </li>
                                                </ul>
                                        </div>
                                    </div>
                                        @if ($gs->is_capcha == 1)
                                            <div class="form-input mb-3">
                                                {!! NoCaptcha::display() !!}
                                                {!! NoCaptcha::renderJs() !!}
                                                @error('g-recaptcha-response')
                                                    <p class="my-2">{{ $message }}</p>
                                                @enderror
                                            </div>
                                        @endif
                                        <input type="hidden" name="referral_code" value="{{ session('referral_code') }}">

                                        {{-- <input type="hidden" name="referral_code" value="{{ request()->query('referral_code') }}"> --}}
                                        {{-- <input type="hidden" name="referral_code" value="{{ request()->query('referral_code') }}"> --}}

                                        <input id="processdata" type="hidden" value="{{ __('Processing...') }}">
                                        <button type="submit"
                                            class="btn btn-primary float-none w-100 rounded-0 submit-btn" name="register"
                                            value="Register">{{ __('Register') }}</button>
                                        </p>
                                        {{-- {{ dd(session('referral_code')) }} --}}
                                        @if($socialsetting->f_check == 1 || $socialsetting->g_check == 1)
                                                    <div class="social-area text-center">
                                                        <h3 class="title  mt-3">{{ ('OR') }}</h3>
                                                        <p class="text">{{ __('Create an account using social media') }}</p>
                                                        <ul class="social-links">
                                                            @if($socialsetting->f_check == 1)
                                                            <li>
                                                           
                                                              <a href="{{ route('social-facebook','facebook') }}">
                                                                <i class="fab fa-facebook-f" style="backgrounf="red"></i>
                                                            </a>
                                                            </li>
                                                            @endif
                                                            @if($socialsetting->g_check == 1)
                                                            <li>
                                                            <a href="{{ route('social-provider','google') }}">
                                                                <i class="fab fa-google-plus-g"></i>
                                                            </a>
                                                            </li>
                                                            @endif
                                                        </ul>
                                                    </div>
					              @endif
                                    </form>
                                    <p>
                                        {{ __('Do have any account?') }}<a href="{{ route('user.login') }}"
                                            class="text-secondary">{{ __('Login') }}</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--==================== Registration Form Start ====================-->


    @include('partials.global.common-footer')
@endsection

@section('script')
    <script>
        function validateForm() {
            if (!$('#termsCheckbox').is(':checked')) {
                alert('You must agree to the terms and conditions.');
                return false;
            }
            return true;
        }


function hide_state() {
    $('.select_state').addClass('d-none');
    $('#show_state').prop('required', false); // Remove 'required' if hidden
}

function validateForm() {
        if (!$('#termsCheckbox').is(':checked')) {
            alert('You must agree to the terms and conditions.');
            return false;
        }
        return true;
    }
        document.addEventListener('DOMContentLoaded', function () {
            const termsLink = document.getElementById('termsLink');
            const dropdownMenu = document.getElementById('dropdownMenu');

            termsLink.addEventListener('click', function (event) {
                event.preventDefault();
                dropdownMenu.classList.toggle('show');
            });

            document.addEventListener('click', function (event) {
                if (!dropdownMenu.contains(event.target) && !termsLink.contains(event.target)) {
                    dropdownMenu.classList.remove('show');
                }
            });
        });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var input = document.querySelector("#phone");
            var iti = window.intlTelInput(input, {
                separateDialCode: true,
                initialCountry: "IQ", // Iraq as default country
                geoIpLookup: function(callback) {
                    fetch('https://ipinfo.io?token=your_token')
                        .then(response => response.json())
                        .then(data => {
                            var countryCode = (data && data.country) ? data.country :
                            "IQ"; // Default to Iraq if no country detected
                            callback(countryCode);
                        });
                },
                utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js"
            });
            input.addEventListener('input', function() {
                const value = input.value;
                input.value = value.replace(/\D/g, '');
            });

            setTimeout(function() {
                var countryList = document.querySelectorAll('.iti__country-name');
                countryList.forEach(function(element) {
                    element.style.display = 'none';
                });
            }, 100);
            document.querySelector("#registerform").addEventListener("submit", function(event) {
                var fullPhoneNumber = iti.getNumber();
                input.value = fullPhoneNumber;
            });
        });
    </script>
@endsection
