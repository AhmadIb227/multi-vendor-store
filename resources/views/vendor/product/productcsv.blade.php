@extends('layouts.vendor')
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
 .mr-breadcrumb .links li a::after {
    margin-left: -70px;}
  @media screen and (max-width: 600) {
  .content-area{
          margin-right: 35px;

  }  
  
  .mr-breadcrumb .links li a::after {
    margin-left: -70px;}
 }
 @media screen and (max-width: 400px) {
  .content-area{
          margin-right: 35px;

  }  
  
  .mr-breadcrumb .links li a::after {
    margin-left: -70px;}
 }
 </style>
 
 @endif
<link href="{{asset('assets/admin/css/product.css')}}" rel="stylesheet"/>

<style>
    @media (max-width: 767.98px) {
        .mr-breadcrumb .row {
            text-align: center;
        }

        .add-product-content .row {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .csv-icon {
            font-size: 3rem; /* تكبير الأيقونة لتكون واضحة على الجوال */
            margin-bottom: 20px;
        }

        .file-btn input[type="file"] {
            display: block;
            margin: 0 auto;
            text-align: center;
        }

        .mybtn1, 
        .btn.btn-primary { 
            width: 100%; /* اجعل الأزرار تأخذ العرض الكامل */
            margin-top: 20px; /* إضافة مساحة أعلى الزر */
            text-align: center; /* تأكد من أن النص داخل الأزرار في المنتصف */
        }

        .left-area {
            text-align: center;
            margin-bottom: 10px;
        }

        select[name="language_id"] {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 8px;
            text-align: center;
        }
    }
</style>

@endsection

@section('content')

<div class="content-area">
    <div class="mr-breadcrumb">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h4 class="heading">{{ __("Product Bulk Upload") }}</h4>
                <ul class="links">
                    <li>
                        <a href="{{ route('vendor.dashboard') }}">{{ __("Dashboard") }}</a>
                    </li>
                    <li>
                        <a href="{{ route('vendor-prod-import') }}">{{ __("Bulk Upload") }}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="add-product-content">
        <div class="row">
            <div class="col-lg-12 p-5">

                <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                <form id="geniusform" action="{{route('vendor-prod-importsubmit')}}" method="POST" enctype="multipart/form-data">
                    {{csrf_field()}}

                    @include('alerts.admin.form-both')

                    <!--<div class="row">-->
                    <!--    <div class="col-lg-12 text-center">-->
                    <!--        <span style="margin-top:10px;"><a class="btn btn-primary" href="{{asset('assets/product-csv-format.csv')}}">{{ __("Download Sample CSV") }}</a></span>-->
                    <!--    </div>-->
                    <!--</div>-->
                    <!--<hr>-->

                    <!--<div class="row justify-content-center">-->
                    <!--    <div class="col-lg-12 d-flex justify-content-center text-center">-->
                    <!--        <div class="csv-icon">-->
                    <!--            <h4 class="heading">{{ __('Select Language') }}*</h4>-->
                    <!--        </div>-->
                    <!--    </div>-->
                    <!--    <div class="col-lg-6 d-flex justify-content-center text-center">-->
                    <!--        <select name="language_id" required="">-->
                    <!--            @foreach(DB::table('languages')->get() as $ldata)-->
                    <!--              <option value="{{ $ldata->id }}">{{ $ldata->language }}</option>-->
                    <!--            @endforeach-->
                    <!--        </select>-->
                    <!--    </div>-->
                    <!--</div>-->

                    <div class="row text-center">
                        <div class="col-lg-12">
                            <div class="csv-icon">
                                <i class="fas fa-file-csv"></i>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="left-area mr-4">
                                <h4 class="heading">{{ __("Upload a File") }} *</h4>
                            </div>
                            <span class="file-btn">
                                <input type="file" id="csvfile" name="csvfile" accept=".csv">
                            </span>
                        </div>
                    </div>

                    <input type="hidden" name="type" value="Physical">
                    <div class="row">
                        <div class="col-lg-12 mt-4 text-center">
                            <button class="mybtn1" type="submit">{{ __("Start Import") }}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection

@section('scripts')

@include('partials.admin.product.product-scripts')
@endsection
