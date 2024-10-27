@extends('layouts.vendor')
@section('styles')
<link href="{{asset('assets/admin/css/jquery-ui.css')}}" rel="stylesheet" type="text/css">
@endsection
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
 @media screen and (max-width: 400px) {
  .content-area{
          margin-right: 35px;

  }  
 }
 </style>
 
 @endif
<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __('Vendor Earning') }}</h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('vendor.dashboard') }}">{{ __('Dashboard') }} </a>
                    </li>
                    <li>
                        <a href="javascript:;">{{ __('Settings') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('vendor-shipping-index') }}">{{ __('Vendor Earning') }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
  
    <form action="{{route('vendor.income')}}" method="GET">
        <div class="product-area">
            <div class="row">
                @include('includes.admin.form-both')

                <div class="col-sm-12 col-md-4 offset-md-2 mt-3">
                    <input type="text" autocomplete="off" class="input-field discount_date w-100" value="{{ $start_date != '' ? $start_date->format('d-m-Y') : '' }}" name="start_date" placeholder="{{ __('Enter Date') }}">
                </div>
                <div class="col-sm-12 col-md-4 mt-3">
                    <input type="text" autocomplete="off" class="input-field discount_date w-100" value="{{ $end_date != '' ? $end_date->format('d-m-Y') : '' }}" name="end_date" placeholder="{{ __('Enter Date') }}">
                </div>
                <div class="col-sm-12 col-md-4 mt-3 d-flex justify-content-center">
                    <button type="submit" class="mybtn1 mx-2">{{ __('Check') }}</button>
                    <button type="button" id="reset" class="mybtn1 mx-2">{{ __('Reset') }}</button>
                </div>

                <div class="col-lg-12">
                    <p class="text-center"> 
                        <b> 
                            {{ $start_date != '' ? $start_date->format('d-m-Y') : '' }} 
                            {{ $start_date != '' && $end_date != '' ? 'To' : '' }}  
                            {{ $end_date != '' ? $end_date->format('d-m-Y') : '' }} 
                            <br>
                            {{ __('Total Earning') }} : {{ $total }}
                        </b>
                    </p>
                    <div class="mr-table allproduct">
                        @include('includes.admin.form-success')
                        <div class="table-responsive">
                            <table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>{{ __('Order Number') }}</th>
                                        <th>{{ __('Total Earning') }}</th>
                                        <th>{{ __('Payment Method') }}</th>
                                        <th>{{ __('Txn Id') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($datas as $data)
                                        <tr>
                                            <td>
                                                <a href="">{{ $data->order->order_number }}</a>
                                            </td>
                                            <td>
                                                {{ $data->order->currency_sign . round($data->price * $data->order->currency_value, 2) }}
                                            </td>
                                            <td>
                                                {{ $data->order->method }}
                                            </td>
                                            <td>
                                                {{ $data->order->txnid }}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="mr-table allproduct mt-4">
                        <div class="table-responsive">
                            <table class="table table-hover dt-responsive" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th class="m1">{{ __('Referral Link') }}</th>
                                        <th>{{ __('Points (Vendor)') }}</th>
                                        <th>{{ __('Points (User)') }}</th>
                                    </tr>
                                </thead>
                                <style>
                                    .btn-custom {
                                        background-color: #21344d;
                                        border-color: #21344d;
                                        color: #ffffff;
                                    }
                                    .btn-custom:hover {
                                        background-color: #21344d;
                                        border-color: #21344d;
                                        color: #ffffff;
                                    }
                                </style>
                                <tbody>
                                    <tr>
                                        <td>
                                            <span id="referralLink">{{ $user->referral_link }}</span>
                                            <button class="btn btn-sm btn-custom" onclick="copyToClipboard('{{ $user->referral_link }}')">
                                                <i class="fa fa-copy"></i>
                                            </button>
                                        </td>
                                        <td style="text-align: center">{{ $user->points_vendor }}</td>
                                        <td style="text-align: center">{{ $user->points_user }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

@endsection

@section('scripts')
<script type="text/javascript">
    $('#geniustable').DataTable();

    $(document).on('click', '#reset', function() {
        $('.discount_date').val('');
        location.href = '{{ route('vendor.income') }}';
    });

    function copyToClipboard(text) {
        var tempInput = document.createElement("input");
        tempInput.style.position = "absolute";
        tempInput.style.left = "-9999px";
        tempInput.value = text;
        document.body.appendChild(tempInput);
        tempInput.select();
        document.execCommand("copy");
        document.body.removeChild(tempInput);
        alert("Referral link copied to clipboard!");
    }
</script>
@endsection
