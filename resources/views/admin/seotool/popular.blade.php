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
										<h4 class="heading">{{ __('Popular Products') }}</h4>
										<ul class="links">
											<li>
												<a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
											</li>
											<li>
												<a href="javascript:;">{{ __('SEO Tools') }} </a>
											</li>
											<li>
												<a href="javascript:;">{{ __('Popular Products') }}</a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">
									<div class="mr-table allproduct">
							          @include('alerts.form-error')
							          @include('alerts.form-success')
										<div class="table-responsive">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
													@if($curr_lang->rtl == 1)
                                                        <tr style="  text-align: justify;">
                                                            @else
                                                               <tr>
                                                            @endif
									                        <th>{{ __('Name') }}</th>
									                        <th>{{ __('Category') }}</th>
									                        <th>{{ __('Type') }}</th>
									                        <th>{{ __('Clicks') }}</th>
														</tr>
													</thead>

                                              <tbody>
                                                @foreach($productss as $productt) 
                    								@foreach($productt as $prod)

                                                        <tr>

														<td>
															{{mb_strlen($prod->product->name,'UTF-8') > 60 ? mb_substr($prod->product->name,0,60,'UTF-8').'...' : $prod->product->name}}
														</td>
                                                      <td>
                                                        {{$prod->product->category->name}}
                                                      </td>
												  <td>
												{{$prod->product->type}}
												  </td>
                                      <td>{{$productt->count('product_id')}}</td>
                                                  </tr>

                                                  @break
                    @endforeach



                                                  @endforeach
                                                  </tbody>

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
			   ordering: false
            });

$( document ).ready(function() {
        $(".btn-area").append('<div class="col-sm-4 table-contents">'+
        '<select class="form-control" id="prevdate">'+
          '<option value="30" {{$val==30 ? 'selected':''}}>{{__('Last 30 Days')}}</option>'+
          '<option value="15" {{$val==15 ? 'selected':''}}>{{__('Last 15 Days')}}</option>'+
          '<option value="7" {{$val==7 ? 'selected':''}}>{{__('Last 7 Days')}}</option>'+
        '</select>'+
          '</div>'); 

        $("#prevdate").change(function () {
        var sort = $("#prevdate").val();
        window.location = "{{url('/admin/products/popular/')}}/"+sort;
    });                                                                      
});

})(jQuery);

</script>

@endsection   