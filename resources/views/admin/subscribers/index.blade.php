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
        .add-product-content1 .product-description .body-area {
    padding: 30px 10px 30px 30px;
}
.add-product-content1 .product-description .body-area .input-field {
    margin-bottom: 0px !important;
           direction: ltr;
}
.add-product-content1 .product-description .body-area .addProductSubmit-btn {
     float: right;
      margin-right: 55px;
}
    }
    </style>
    
    @else
    
    @endif

					<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading">{{ __("Subscribers") }}</h4>
										<ul class="links">
											<li>
												<a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
											</li>
											<li>
												<a href="{{ route('admin-subs-index') }}">{{ __("Subscribers") }}</a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">
									<div class="mr-table allproduct">
                        @include('alerts.admin.form-both')  
										<div class="table-responsive">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
													@if($curr_lang->rtl == 1)
                                                        <tr style="  text-align: justify;">
                                                            @else
                                                               <tr>
                                                            @endif
									                        <th>{{ __("#Sl") }}</th>
									                        <th>{{ __("Email") }}</th>
														</tr>
													</thead>
												</table>
										</div>
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

		$('#geniustable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               ajax: '{{ route('admin-subs-datatables') }}',
               columns: [
                        { data: 'id', name: 'id' },
                        { data: 'email', name: 'email' }
                     ],
                language : {
                	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                }
            });								
					
      	$(function() {
        $(".btn-area").append('<div class="col-sm-4 table-contents">'+
        	'<a class="add-btn" href="{{route('admin-subs-download')}}">'+
          '<i class="fa fa-download"></i> {{ __("Download") }}'+
          '</a>'+
          '</div>');
      });	

})(jQuery);

    </script>
@endsection   