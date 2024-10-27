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
            <div class="content-area">

              <div class="add-product-content1">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">
                        @include('alerts.admin.form-error') 
                      <form id="geniusformdata" action="{{route('admin-payment-create')}}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Name') }} *</h4>
                                <p class="sub-heading">{{ __('(In Any Language)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="title" placeholder="{{ __('Name') }}" required="" value="">
                          </div>
                        </div>


                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __('Subtitle') }} *</h4>
                                <p class="sub-heading">{{ __('(Optional)') }}</p>
                            </div>
                          </div>
                          <div class="col-lg-7">

                              <input type="text" class="input-field" name="subtitle" placeholder="{{ __('Subtitle') }}" value="">

                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              <h4 class="heading">
                                  {{ __('Wallet Number:') }} *
                              </h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                               <input type="text" id="walletInput" name="details" class="form-control" value="Wallet Number: " onfocus="moveCursorToEnd(this);"> 
                               <script>
                                    function moveCursorToEnd(el) {
                                        if (typeof el.selectionStart == "number") {
                                            el.selectionStart = el.selectionEnd = el.value.length;
                                        } else if (typeof el.createTextRange != "undefined") {
                                            var range = el.createTextRange();
                                            range.collapse(false);
                                            range.select();
                                        }
                                    }
                                
                                    document.getElementById('walletInput').addEventListener('keydown', function(event) {
                                        const prefix = "Wallet Number: ";
                                        if (this.value.indexOf(prefix) !== 0) {
                                            this.value = prefix;
                                        }
                                
                                        if (event.key === "Backspace" && this.selectionStart <= prefix.length) {
                                            event.preventDefault();
                                        }
                                    });
                                </script>
                          </div>
                          
                        </div>



                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <button class="addProductSubmit-btn" type="submit">{{ __('Create Payment') }}</button>
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
