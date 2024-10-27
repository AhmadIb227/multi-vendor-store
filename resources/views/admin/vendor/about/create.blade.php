@extends('layouts.vendor')

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
    <div class="breadcrumb">
        <h4 class="heading">{{ __('Create About Us') }} :</h4>
            
    </div>

    <div class="add-product-content">
        <div class="row">
            <div class="col-lg-12">
                <div class="product-description">
                    <div class="body-area">
                          @if(session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif
                        <form action="{{ route('aboutus.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                         
                            <div class="form-group row">
                                <label for="title_en" class="col-sm-2 col-form-label">{{ __('title en') }} </label>
                                <div class="col-sm-10">
                                    <input type="text" name="title_en" class="form-control" id="title_en" >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="title_ar" class="col-sm-2 col-form-label">{{ __('Title ar') }} *</label>
                                <div class="col-sm-10">
                                    <input type="text" name="title_ar" class="form-control" id="title_ar" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="title_kr" class="col-sm-2 col-form-label">{{ __('Title kr') }} </label>
                                <div class="col-sm-10">
                                    <input type="text" name="title_kr" class="form-control" id="title_kr">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="description_en" class="col-sm-2 col-form-label">{{ __('Description en') }} </label>
                                <div class="col-sm-10">
                                    <textarea name="description_en" class="form-control" id="description_en" rows="3" ></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="description_ar" class="col-sm-2 col-form-label">{{ __('Description ar') }} *</label>
                                <div class="col-sm-10">
                                    <textarea name="description_ar" class="form-control" id="description_ar" rows="3" required></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="description_kr" class="col-sm-2 col-form-label">{{ __('Description kr') }} </label>
                                <div class="col-sm-10">
                                    <textarea name="description_kr" class="form-control" id="description_kr" rows="3" ></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10 offset-sm-2">
                                    <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                                    <a href="{{ route('aboutus.show') }}" class="btn btn-secondary">{{ __('Show About Us') }}</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
