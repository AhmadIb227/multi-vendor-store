@extends('layouts.load')
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
.modal-body{
     direction: ltr;
}
    @media screen and (max-width: 767px) {
        .form-control {
                    direction: ltr;
    }
.content-area {
    margin-right: 5px;
    width: 100%;
    padding: 1px 0px 0px;
    overflow: hidden;
}
    }
 @media (max-width: 767px) {
    .img-upload #image-preview input, .img-upload #image-preview label, .img-upload #image-preview input {
        top: 100%;
        margin-right: -10px;
        left: 100px;
        margin-top: 10px;
    }
}  
    </style>
    
    @else
    
    @endif
						<div class="content-area no-padding">
							<div class="add-product-content1">
								<div class="row">
									<div class="col-lg-12">
										<div class="product-description">
											<div class="body-area">

                                    <div class="table-responsive show-table">
                                        <table class="table">
                                            <tr>
                                                <th>{{ __("Staff ID#") }}</th>
                                                <td>{{$data->id}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Staff Photo") }}</th>
                                                <td>
                                              <img src="{{ $data->photo ? asset('assets/images/admins/'.$data->photo):asset('assets/images/noimage.png')}}" alt="{{ __("No Image") }}">

                                                </td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Staff Name") }}</th>
                                                <td>{{$data->name}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Staff Role") }}</th>
                                                <td>{{ $data->role_id == 0 ? 'No Role' : $data->role->name }}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Staff Email") }}</th>
                                                <td>{{$data->email}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Staff Phone") }}</th>
                                                <td>{{$data->phone}}</td>
                                            </tr>
                                            <tr>
                                                <th>{{ __("Joined") }}</th>
                                                <td>{{$data->created_at->diffForHumans()}}</td>
                                            </tr>
                                        </table>
                                    </div>


											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

@endsection