@extends('layouts.front')

@section('content')
@include('partials.global.common-header')
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.min.css">

</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css">

 <!-- breadcrumb -->
 <div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
    <div class="container">
        <div class="row text-center text-white">
            <div class="col-12">
                <h3 class="mb-2 text-white">{{ __('Register') }}</h3>
            </div>
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                        <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>

                        <li class="breadcrumb-item active" aria-current="page">{{ __('Vendor Register') }}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb -->

<!-- Description Section Start -->
<div class="full-row py-10">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-8 col-12 mx-auto">
                <div class="description-container p-4 border rounded">
                    <div class="row">
                        <div class="video-container">
                            <iframe src="{{$gs->video_link}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Description Section End -->

<style>
.video-container {
    position: relative;
    padding-bottom: 56.25%; /* 16:9 aspect ratio */
    height: 0;
    overflow: hidden;
    max-width: 100%;
    background: #000;
    border-radius: 8px;
}

.video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0;
}

</style>

<!-- Registration Form Start -->
<div class="full-row py-10">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="woocommerce">
                    <div class="row">
                        <div class="col-lg-6 col-md-8 col-12 mx-auto">
                            <div class="registration-form border">
                                @include('includes.admin.form-login')
                                <h3>{{ __('Vendor Registration') }}</h3>
                                <form id="registerform" action="{{route('user-register-submit')}}"  method="POST">
                                    @csrf
                                    {{-- <p>
                                        <input type="text" name="referralCode"  value="{{$referralCode}}" class="form-control" placeholder="{{ __('Full Name') }}"  >
                                    </p> --}}
                                    <p>
                                        <input type="text" name="name" class="form-control" placeholder="{{ __('Full Name') }}"  >
                                    </p>
                                    <p class="date-container">
                                        <input type="date" name="birthdate" class="form-control" placeholder=" {{ __('Date of Birth') }}">
                                    </p>
                                    <p>
                                        <input type="email" name="email" class="form-control" required=""  placeholder="{{ __('Email Address') }}" >
                                    </p>
                                      <p>
                                        <input type="text" ; " name="phone" class="form-control" required="" placeholder="{{ __('Phone Number') }}"  id="phone">
                                    </p>
                                    <style>
                                        @media (max-width: 767px) {
                                            #phone {
                                                width: 380px;
                                                padding-right: 20px;
                                            }
                                        }
                                    
                                        @media (min-width: 768px) {
                                            #phone {
                                                width: 513px;
                                                padding-right: 20px;
                                            }
                                        }
                                    </style>
                                    <p>
                                        <input type="text" name="address" class="form-control" required=""  placeholder="{{ __('Address') }}" >
                                    </p>

                                    <p>
                                        <input type="text" name="owner_name" class="form-control" required=""  placeholder=
                                        "{{ __('Shop Owner Name') }}" >
                                    </p>


                                    <p>
                                        <input type="text" name="shop_name" class="form-control" required="" placeholder="{{ __('Shop Name') }}" >
                                    </p>
                                    <p>
                                        <input type="text" name="shop_number" class="form-control" required="" placeholder="{{ __('Shop Number') }}" >
                                    </p>
                                    <div>
                                        <label for="">{{ __('Type of Shop') }}</label>
                                        <p>
                                            <div class="radio-group" style="display: flex;">
                                                <label>
                                                    <input type="radio" name="attendance" value="virtual" required style="width: fit-content;">
                                                   {{ __('Virtual') }}
                                                </label>
                                                <label>
                                                    <input type="radio" name="attendance" value="physically" required style="width: fit-content;">
                                                    {{ __('Physically') }}
                                                </label>
                                            </div>
                                        </p>
                                    </div>
                                    <div>
                                        <label for="">{{ __('Gender') }}</label>
                                        <div class="radio-group" style="display: flex;">
                                            <label>
                                                <input type="radio" name="gender" value="male" required style="width: fit-content;">
                                                {{ __('Male') }}
                                                <input type="radio" name="gender" value="female" required style="width: fit-content;">
                                                {{ __('Female') }}
                                            </label>
                                        </div>
                                    </div>
                                    <p>
                                        <select class="form-control" id="select_country" name="customer_country"  style="width: 100%;background: var(--theme-light-color);padding: 5px 20px;border: 1px solid var(--theme-gray-color);border-radius: 0;">
                                            @include('includes.countries')
                                        </select>
                                    </p>
                                    <p class=" d-none select_state">
                                        <select class="form-control " id="show_state" name="customer_state" required style="width: 100%;background: var(--theme-light-color);padding: 5px 20px;border: 1px solid var(--theme-gray-color);border-radius: 0;">
                                        </select>
                                    </p>

                                             <p class="d-none">
                                                <select class="form-control " id="show_city" name="customer_city" required style="width: 100%;background: var(--theme-light-color);padding: 5px 20px;border: 1px solid var(--theme-gray-color);border-radius: 0;">

                                                </select>
                                            </p>
                                    <p>
                                        <input type="text" name="shop_address" class="form-control" required=""  placeholder="{{ __('Shop Address') }}" >
                                    </p>
                                    <p>
                                        <input type="password" name="password" class="form-control" required=""  placeholder="{{ __('Password') }}" >
                                    </p>
                                    <p>
                                        <input type="password" name="password_confirmation" class="form-control" required=""  placeholder="{{ __('Confirm Password') }}" >
                                    </p>

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
                                    <style>
#dropdownMenu {
    overflow-x: auto; 
    }
#dropdownMenu::-webkit-scrollbar {
    height: 8px; 
}

#dropdownMenu::-webkit-scrollbar-thumb {
    background-color: #ffffff; 
    border-radius: 10px; 
}

#dropdownMenu::-webkit-scrollbar-track {
    background-color: #f1f1f1; 
}
#dropdownMenu {
    scrollbar-width: thin; 
    scrollbar-color: #ffffff #f1f1f1; 
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
                                    @if($gs->is_capcha == 1)
                                    <div class="form-input mb-3">
                                         {!! NoCaptcha::display() !!}
                                         {!! NoCaptcha::renderJs() !!}
                                         @error('g-recaptcha-response')
                                         <p class="">{{$message}}</p>
                                         @enderror
                                     </div>
                                     @endif
                                     <input type="hidden" name="referral_code" value="{{ session('referral_code') }}">

                                    <input type="hidden" name="vendor"  value="1">
                                    <input id="processdata" type="hidden" value="{{ __('Processing...') }}">
                                    <button type="submit" id="registerButton" class="btn btn-primary float-none w-100 rounded-0 submit-btn" name="register"  value="Register">{{ __('Register') }}</button>
                                    {{-- {{ dd(session('referral_code')) }} --}}
                                </form>
                                <p>
                                    {{ __("Do have any account?") }}<a href="{{ route('user.login') }}"  class="text-secondary">{{__('Login')}}</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Registration Form End -->

@include('partials.global.common-footer')
@endsection

@section('script')

<script>

    $(document).on('change', '#select_country', function() {
    let country_id = $('#select_country option:selected').attr('data');
    let is_state = $('option:selected', this).attr('rel');
    let state_url = $('option:selected', this).attr('data-href');

    if (is_state == 1) {
        $('.select_state').removeClass('d-none');
        $.get(state_url, function(response) {
            $('#show_state').html(response.data).prop('required', true); // Add 'required' when options are populated
        }).fail(function() {
            $('#show_state').html('<option value="">No states available</option>').prop('required', false);
        });
    } else {
        hide_state();
    }
});

$(document).on('change', '#show_state', function() {
    let state_id = $(this).val();
    let country_id = $('#select_country option:selected').attr('data');
    $.get("{{ route('state.wise.city') }}", { state_id: state_id }, function(data) {
        $('#show_city').parent().removeClass('d-none');
        $('#show_city').html(data.data);
    });
});

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


{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/inputmask/5.0.8/inputmask.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {

        Inputmask("+9999999999999").mask("#phone");

        input.addEventListener('input', function () {
            const value = input.value;
            input.value = value.replace(/\D/g, '');
        });
    });
</script> --}}

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
                        var countryCode = (data && data.country) ? data.country : "IQ"; // Default to Iraq if no country detected
                        callback(countryCode);
                    });
            },
            utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js"
        });
        input.addEventListener('input', function () {
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

<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
@endsection
