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
<style>
        div.table-responsive>div.dataTables_wrapper>div.row>div[class^="col-"]:first-child {
            padding-left: 59px;
            margin-top: 1px;
        }
    </style>
<input type="hidden" id="headerdata" value="{{ __('CATEGORY') }}">
<input type="hidden" id="attribute_data" value="{{ __('ADD NEW ATTRIBUTE') }}">
<div class="content-area">
	<div class="mr-breadcrumb">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="heading">{{ __('Main Categories') }}</h4>
				<ul class="links">
					<li>
						<a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
					</li>
					<li><a href="javascript:;">{{ __('Manage Categories') }}</a></li>
					<li>
						<a href="{{ route('admin-cat-index') }}">{{ __('Main Categories') }}</a>
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
									<th width="20%">{{ __('Name') }}</th>
									<th width="20%">{{ __('Slug') }}</th>
									<th>{{ __('Attributes') }}</th>
									<th>{{ __('Featured') }}</th>
									<th>{{ __('Status') }}</th>
									<th>{{ __('Options') }}</th>
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
				<img src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
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
				<button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close') }}</button>
			</div>
		</div>
	</div>
</div>

{{-- ADD / EDIT MODAL ENDS --}}

{{-- ATTRIBUTE MODAL --}}

<div class="modal fade" id="attribute" tabindex="-1" role="dialog" aria-labelledby="attribute" aria-hidden="true">

	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="submit-loader">
				<img src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
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
				<button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close') }}</button>
			</div>
		</div>
	</div>
</div>

{{-- ATTRIBUTE MODAL ENDS --}}


{{-- DELETE MODAL --}}

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header d-block text-center">
				<h4 class="modal-title d-inline-block">{{ __('Confirm Delete') }}</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<p class="text-center">{{ __('You are about to delete this Category. Everything under this category will
					be deleted') }}.</p>
				<p class="text-center">{{ __('Do you want to proceed?') }}</p>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-default" data-dismiss="modal">{{ __('Cancel') }}</button>
				<form action="" class="d-inline delete-form" method="POST">
					<input type="hidden" name="_method" value="delete" />
					<input type="hidden" name="_token" value="{{ csrf_token() }}">
					<button type="submit" class="btn btn-danger">{{ __('Delete') }}</button>
				</form>
			</div>

		</div>
	</div>
</div>

{{-- DELETE MODAL ENDS --}}

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
               ajax: '{{ route('admin-cat-datatables') }}',
               columns: [
                        { data: 'name', name: 'name' },
						{ data: 'slug', name: 'slug' },
                        { data: 'attributes', name: 'attributes', searchable: false, orderable: false },
                        { data: 'is_featured', name:'is_featured'},
                        { data: 'status', searchable: false, orderable: false},
            			{ data: 'action', searchable: false, orderable: false }

                     ],
                language : {
                	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                },
				drawCallback : function( settings ) {
	    			$('.select').niceSelect();
				}
            });

      	$(function() {
        $(".btn-area").append('<div class="col-sm-4 table-contents">'+
        	'<a class="add-btn" data-href="{{route('admin-cat-create')}}" id="add-data" data-toggle="modal" data-target="#modal1">'+
          '<i class="fas fa-plus"></i> <span class="remove-mobile">{{ __("Add New") }}<span>'+
          '</a>'+
          '</div>');
      });

})(jQuery);

</script>

@endsection