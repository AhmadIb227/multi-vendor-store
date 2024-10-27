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
 .body-area{
         direction: ltr;   
        }
        @media (max-width: 575px) {
    .add-product-content .product-description .body-area {
        padding: 30px 24px 0px 55px;
    }
}
    @media screen and (max-width: 767px) {
        .col-lg-6{
            margin-right: 240px;
        }
        .body-area{
         direction: ltr;   
        }
        .content-area {
    margin-right: 35px;
            
        }
        .heading-area .title {
    display: inline-block;
    font-size: 20px;
    line-height: 30px;
    margin-left: 50px;
    margin-right: 10px;
}
    }
    
    </style>
    
    @else
    
    @endif


                        <div class="content-area no-padding">
                            <div class="add-product-content">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="product-description">
                                            <div class="body-area">
                                                <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="table-responsive show-table">
                                                        <table class="table">
                                                            <tr>
                                                                <th>{{ __('Commenter') }}</th>
                                                                <td>{{$data->user->name}}</td>
                                                            </tr>
                                                            <tr>
                                                                <th>{{ __('Email') }}:</th>
                                                                <td>{{$data->user->email}}</td>
                                                            </tr>
                                                            @if($data->user->phone != "")
                                                            <tr>
                                                                <th>{{ __('Phone') }}:</th>
                                                                <td>{{$data->user->phone}}</td>
                                                            </tr>
                                                            @endif

                                                            <tr>
                                                                <th>{{ __('Commented at') }}:</th>
                                                                <td>{{ date('d-M-Y h:i:s',strtotime($data->created_at))}}</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                    <div class="col-lg-6">
                                                    <h5 class="comment">
                                                        {{ __('Comment') }}:
                                                        </h5>
                                                        <p class="comment-text"> 
                                                            {{$data->text}}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

@endsection