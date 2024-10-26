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
            <h3 class="mb-2 text-white">{{ __('Transactions') }}</h3>
         </div>
         <div class="col-12">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                  <li class="breadcrumb-item"><a href="{{ route('user-dashboard') }}">{{ __('Dashboard') }}</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ __('Transactions') }}</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>
<!-- breadcrumb -->
<!--==================== Blog Section Start ====================-->
<style>
        /* تخصيص شريط التمرير ليكون لونه فضي */
        .tabel-data {
            overflow-x: auto;
        }

        .tabel-data::-webkit-scrollbar {
            height: 8px;
        }

        .tabel-data::-webkit-scrollbar-thumb {
            background-color: #C0C0C0; /* لون فضي */
            border-radius: 10px;
            border: 2px solid #f1f1f1;
        }

        .tabel-data::-webkit-scrollbar-track {
            background-color: #f1f1f1;
        }

        /* For Firefox */
        .tabel-data{
            scrollbar-color: #C0C0C0 #f1f1f1;
            scrollbar-width: thin;
        }
    </style>
<style>
 .tabel-data th{
     background-color:#472c7a;
     color:white;
     
 }
     @media screen and (max-width: 993px) {
         
         .tabel-data{
             width:100%;
         }
                @media screen and (max-width: 660px) {
         
     
          .tabel-data th{
          text-align:center;
          font-size:13px;
             }

     }
          @media screen and (max-width: 510px) {

          .tabel-data th{
          text-align:center;
          font-size:10px;
             }

     }
     
            @media screen and (max-width: 470px) {

          .tabel-data th{
          text-align:center;
          font-size:10px;
          position:;
             }
             .con{
                 padding:1px;
             }

     }
             @media screen and (max-width: 420px) {

          .tabel-data th{
          text-align:center;
          font-size:10px;
       
             }
             .con{
                 padding:1px;
             }
 .tabel-data tr{
     position: relative;
    left: 20px;
     
 }
     }
     }
      .full-row{
            padding-top: 10px;
                padding-bottom: 70px;
        }
  
</style>
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
               <div class="con  col-lg-12">
                  <div class="widget border-0  widget_categories bg-light account-info p-4">
                     <h4 class="widget-title down-line mb-30">{{ __('Transactions') }}
                     </h4>
                     <div class="mr-table allproduct mt-4">
                        <div class="tabel-data">
                           <table id="example" class="table">
                              <thead>
                                 <tr>
                                    <th>{{ __('Transaction ID') }}</th>
                                    <th>{{ __('Amount') }}</th>
                                    <th>{{ __('Transaction Date') }}</th>
                                    <th>{{ __('Details') }}</th>
                                    <th>{{ __('View') }}</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 @foreach(Auth::user()->transactions as $data)
                                 <tr>
                                    <td data-label="{{ __('Transaction ID') }}">
                                       <div>
                                          {{ $data->txn_number == null ? $data->txnid : $data->txn_number }}
                                       </div>
                                    </td>
                                    <td data-label="{{ __('Amount') }}">
                                       <div>
                                          {{ $data->type == 'plus' ? '+' : '-' }} {{ \PriceHelper::showOrderCurrencyPrice(($data->amount * $data->currency_value),$data->currency_sign) }}
                                       </div>
                                    </td>
                                    <td data-label="{{ __('Transaction Date') }}">
                                       <div>
                                          {{date('d-M-Y',strtotime($data->created_at))}}
                                       </div>
                                    </td>
                                    <td data-label="{{ __('Details') }}">
                                       <div>
                                          {{$data->details}}
                                       </div>
                                    </td>
                                    <td data-label="{{ __('View') }}">
                                       <div>
                                          <a href="javascript:;" data-href="{{ route('user-trans-show',$data->id)}}" data-toggle="modal" data-target="#trans-modal" class="txn-show mybtn1 sm">
                                          {{ __('View') }}
                                          </a>
                                       </div>
                                    </td>
                                 </tr>
                                 @endforeach
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!--==================== Blog Section End ====================-->
<!-- Order Tracking modal Start-->
<div class="modal fade" id="trans-modal" tabindex="-1" role="dialog" aria-labelledby="trans-modal" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
         <div class="modal-header p-3">
            <h4 class="modal-title">
               <b>
               {{ __('Transaction Details') }}
               </b>
            </h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body" id="trans">
         </div>
      </div>
   </div>
</div>
<!-- Order Tracking modal End -->
@includeIf('partials.global.common-footer')
@endsection
@section('script')
<script src = "{{ asset('assets/front/js/dataTables.min.js') }}" defer ></script>
<script src = "{{ asset('assets/front/js/user.js') }}" defer ></script>
<script type="text/javascript">
   (function($) {
   		"use strict";

       $('.txn-show').on('click',function(e){
           var url = $(this).data('href');
           $('#trans').load(url);
           $('#trans-modal').modal('show');
       });
       $('.close').on('click',function(e){
           $('#trans-modal').modal('hide');
       })

   })(jQuery);

</script>
@endsection
