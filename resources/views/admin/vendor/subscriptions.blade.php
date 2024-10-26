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
                    <input type="hidden" id="headerdata" value="{{ __("SUBSCRIPTIONS") }}">
                    <div class="content-area">
                        <div class="mr-breadcrumb">
                            <div class="row">
                                <div class="col-lg-12">
                                        <h4 class="heading">{{ __("Completed Vendor Subscriptions") }}</h4>
                                        <ul class="links">
                                            <li>
                                                <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">{{ __("Vendors") }}</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('admin-vendor-subs','completed') }}">{{ __("Completed Vendor Subscriptions") }}</a>
                                            </li>
                                        </ul>
                                </div>
                            </div>
                        </div>
                        <div class="product-area">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="mr-table allproduct">
                                        @include('alerts.admin.form-success') 
                                        <div class="table-responsive">
                                                <table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
                                                    <thead>
                                                       	 @if($curr_lang->rtl == 1)
                                                        <tr style="  text-align: justify;">
                                                            @else
                                                               <tr>
                                                            @endif
                                                            <th>{{ __("Vendor Name") }}</th>
                                                            <th>{{ __("Plan") }}</th>
                                                            <th>{{ __("Method") }}</th>
                                                            <th>{{ __("Transcation ID") }}</th>
                                                            <th>{{ __("Purchase Time") }}</th>
                                                            <th>{{ __("Options") }}</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

{{-- ADD / EDIT MODAL --}}

            <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
                                        
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="submit-loader">
                                <img  src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
                            </div>
                            <div class="modal-header">
                                <h5 class="modal-title"></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __("Close") }}</button>
                            </div>
                        </div>
                    </div>

                </div>

{{-- ADD / EDIT MODAL ENDS --}}

@endsection    

@section('scripts')

{{-- DATA TABLE --}}

    <script type="text/javascript">

(function($) {
		"use strict";

        var table = $('#geniustable').DataTable({
               ordering: false,
               processing: true,
               serverSide: true,
               ajax: '{{ route('admin-vendor-subs-datatables','1') }}',
               columns: [
                        { data: 'name', searchable: false, orderable: false },
                        { data: 'title', name: 'title' },
                        { data: 'method', name: 'method' },
                        { data: 'txnid', name: 'txnid' },
                        { data: 'created_at', name: 'created_at' },
                        { data: 'action', searchable: false, orderable: false }
                     ],
               language : {
                    processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                }
            });

    })(jQuery);

    </script>

{{-- DATA TABLE --}}
    
@endsection   