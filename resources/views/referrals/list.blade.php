@extends('layouts.admin')

@section('styles')
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
        .col-sm-12 {
            margin-right: 20px;
        }
        #example{
            text-align: justify;
        }
        .content-area {
    margin-right: 35px;
            
        }
    }
    </style>
    
    @else
    
    @endif
<style type="text/css">
.table-responsive {
    overflow-x: auto;
    overflow-y: hidden;
    -webkit-overflow-scrolling: touch;
}
table#example {
    margin-left: 10px;
    width: 100%;
}
@media (max-width: 767px) {
    table#example {
        margin-left: 0;
        font-size: 12px;
    }

    table#example th, table#example td {
        padding: 8px;
        white-space: nowrap;
    }

    .table-responsive {
        overflow-x: auto;
    }

    /* إزاحة نص الاسم نحو اليمين */
    table#example td:first-child {
           padding-left: 50px;
    }
    .dataTables_wrapper .dataTables_paginate {
    padding-right: 50px;
}

}

</style>
@endsection

@section('content')
<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __("Users List") }} <a class="add-btn" href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i> {{ __("Back") }}</a></h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }}</a>
                    </li>
                    <li>
                        <a href="{{ route('referrals.list', ['referralCode' => $referralCode]) }}">{{ __("Referrals") }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="add-product-content1 customar-details-area">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-responsive">
                    <table id="example" class="table table-hover dt-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>{{ __("Name") }}</th>
                                <th>{{ __("Shop Name") }}</th>
                                <th>{{ __("Email") }}</th>
                                <th>{{ __("Referral Link") }}</th>
                                <th>{{ __("Referral Code") }}</th>
                                <th>{{ __("User Points") }}</th>
                                <th>{{ __("Vendor Points") }}</th>
                              
                               
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $user)
                            <tr>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->shop_name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->referral_link }}</td>
                                <td>{{ $user->referral_code }}</td>
                                <td>{{ $user->points_user }}</td>
                                <td>{{ $user->points_vendor }}</td>
                               
                               
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script type="text/javascript">
(function($) {
    "use strict";
    $('#example').DataTable({
        "ordering": false,
        'lengthChange': false,
        'searching': true,
        'ordering': false,
        'info': true,
        'autoWidth': false,
        'responsive': true,
        'pageLength': 10, // عرض 10 سجلات في كل صفحة
        'language': {
            'paginate': {
                'previous': '&laquo;',
                'next': '&raquo;'
            }
        }
    });
})(jQuery);
</script>
@endsection




{{-- @extends('layouts.admin')

@section('styles')
<style type="text/css">
.table-responsive {
    overflow-x: hidden;
    overflow-y: hidden;
}
table#example {
    margin-left: 10px;
}
</style>
@endsection

@section('content')
<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="heading">{{ __("Referrals List") }} <a class="add-btn" href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i> {{ __("Back") }}</a></h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }}</a>
                    </li>
                    <li>
                        <a href="{{ route('referrals.list', ['referralCode' => $referralCode]) }}">{{ __("Referrals") }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="add-product-content1 customar-details-area">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-responsive">
                    <table id="example" class="table table-hover dt-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>{{ __("ID") }}</th>
                                <th>{{ __("User ID") }}</th>
                                <th>{{ __("Parent User ID") }}</th>
                                <th>{{ __("referral_link") }}</th>
                                <th>{{ __("Referral Code") }}</th>
                                 <th>{{ __("referral_link") }}</th>
                                <th>{{ __("Referral Code") }}</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($referrals as $referral)
                            <tr>
                                <td>{{ $referral->id }}</td>
                                <td>{{ $referral->user_id }}</td>
                                <td>{{ $referral->parent_user_id }}</td>
                                <td>{{ $referral->referral_link }}</td>
                                <td>{{ $referral->referral_code }}</td>
                                
                                
                            </tr>
                            @endforeach
                        </tbody>
                    </table>

                    
                    {{-- <table id="example" class="table table-hover dt-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>{{ __("points") }}</th>
                              
                                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($user as $user)
                            <tr>
                                <td>{{ $user->points }}</td>
                                
                                
                            </tr>
                            @endforeach
                        </tbody>

                           
                            
                        
                    </table> --}}
                {{-- </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script type="text/javascript">
(function($) {
    "use strict";
    $('#example').dataTable({
        "ordering": false,
        'lengthChange': false,
        'searching': false,
        'ordering': false,
        'info': false,
        'autoWidth': false,
        'responsive': true
    });
})(jQuery);
</script>
@endsection --}}
