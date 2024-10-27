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
.add-product-content1 .product-description .body-area .addProductSubmit-btn {
    float: right;
    margin-right: 65px;
}
.add-product-content1 .product-description .body-area .input-field {
    margin-bottom: 0px !important;
    text-align: end;
}
    }
    </style>
    
    @else
    
    @endif

            <div class="content-area">

              <div class="mr-breadcrumb">
                <div class="row">
                  <div class="col-lg-12">
                      <h4 class="heading">{{ __('Add New Faq') }} <a class="add-btn" href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i> {{ __("Back") }}</a></h4>
                      <ul class="links">
                        <li>
                          <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                          <a href="javascript:;">{{ __('Menu Page Settings') }} </a>
                        </li>
                        <li>
                          <a href="{{ route('admin-faq-index') }}">{{ __('Faq') }}</a>
                        </li>
                        <li>
                          <a href="{{ route('admin-faq-create') }}">{{ __('Add') }}</a>
                        </li>
                      </ul>
                  </div>
                </div>
              </div>

              <div class="add-product-content1 add-product-content2">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">

                        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                        
                        @include('alerts.admin.form-both') 
                      <form id="geniusform" action="{{route('admin-faq-create')}}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Title') }} *</h4>
                                <p class="sub-heading">{{ __('(In Any Language)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="title" placeholder="{{ __('Title') }}" required="" value="{{ Request::old('title') }}">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              <h4 class="heading">
                                  {{ __('Description') }} *
                              </h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <textarea  class="nic-edit" name="details" placeholder="{{ __('Description') }}">{{ Request::old('details') }}</textarea> 
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <button class="addProductSubmit-btn" type="submit">{{ __('Create FAQ') }}</button>
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