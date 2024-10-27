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
    .add-product-content1 .product-description .body-area .input-field {
    margin-bottom: 10px !important;
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
                      <form id="geniusformdata" action="{{route('admin-subscription-update',$data->id)}}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __("Title") }} *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="title" placeholder="{{ __("Enter Subscription Title") }}" required="" value="{{ $data->title }}">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __("Cost") }} *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="price" placeholder="{{ __("Enter Subscription Cost") }}" required="" value="{{ $data->price * $sign->value }}">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __("Days") }} *</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="days" placeholder="{{ __("Enter Subscription Days") }}" required="" value="{{ $data->days }}">
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __("Product Limitations") }}*</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <select id="limit" name="limit" required="">
                                  <option value="">{{ __("Select an Option") }}</option>
                                  <option {{ $data->allowed_products == 0 ? "selected" : "" }} value="0">{{ __("Unlimited") }}</option>
                                  <option {{ $data->allowed_products != 0 ? "selected" : "" }} value="1">{{ __("Limited") }}</option>
                              </select>
                          </div>
                        </div>

                        <div class="{{ $data->allowed_products == 0 ? 'showbox' : '' }}" id="limits">
                          <div class="row">
                            <div class="col-lg-4">
                              <div class="left-area">
                                  <h4 class="heading">{{ __("Allowed Products") }} *</h4>
                              </div>
                            </div>
                            <div class="col-lg-7">
                              <input type="number" min="1" class="input-field" id="allowed_products" name="allowed_products" placeholder="{{ __("Enter Allowed Products") }}" {{ $data->allowed_products != 0 ? "required" : "" }} value="{{ $data->allowed_products != 0 ? $data->allowed_products : '1' }}">
                            </div>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              <h4 class="heading">
                                   {{ __("Details") }} *
                              </h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              {{-- <textarea class="nic-edit" name="details" placeholder="{{ __("Details") }}">{{ $data->details }}</textarea>  --}}
                              
                              
                              <div id="features">
                                  <h4>Features</h4>
                                    @if($data->features->count() > 0)
                                      @foreach ($data->features as $key => $f)

                                        <div class="form-group feature">
                                            <label for="features[{{$key}}][name]">Feature Name</label>
                                            <input type="text" name="features[{{$key}}][name]" value="{{$f->name}}" class="input-field" required>
                                            <label for="features[{{$key}}][has_icon]">Include Icon</label>
                                            <input type="checkbox" name="features[{{$key}}][has_icon]"  @checked($f->has_icon) value="1">
                                            @if($key > 0)
                                              <button type="button" class="btn btn-danger remove-feature">Remove Feature</button>
                                            @endif
                                        </div>
                                      @endforeach
                                    @else
                                      <div class="form-group feature">
                                          <label for="features[0][name]">Feature Name</label>
                                          <input type="text" name="features[0][name]" class="input-field" required>
                                          <label for="features[0][has_icon]">Include Icon</label>
                                          <input type="checkbox" name="features[0][has_icon]" value="1">
                                      </div>
                                    @endif
                                  
                              </div>
                            <button type="button" id="add-feature" class="btn btn-secondary">Add Feature</button>
                            <script>
                              document.getElementById('add-feature').addEventListener('click', function () {
                                  const featureIndex = document.querySelectorAll('.feature').length;
                                  const featureTemplate = `
                                      <div class="form-group feature">
                                          <label for="features[${featureIndex}][name]">Feature Name</label>
                                          <input type="text" name="features[${featureIndex}][name]" class="form-control" required>
                                          <label for="features[${featureIndex}][has_icon]">Include Icon</label>
                                          <input type="checkbox" name="features[${featureIndex}][has_icon]" value="1">
                                          <button type="button" class="btn btn-danger remove-feature">Remove Feature</button>
                                      </div>`;
                                  document.getElementById('features').insertAdjacentHTML('beforeend', featureTemplate);
                                  attachRemoveFeatureHandler();
                              });
                              function attachRemoveFeatureHandler() {
                                  document.querySelectorAll('.remove-feature').forEach(button => {
                                      button.removeEventListener('click', removeFeatureHandler);
                                      button.addEventListener('click', removeFeatureHandler);
                                  });
                              }

                              function removeFeatureHandler(event) {
                                  event.target.closest('.feature').remove();
                              }

                              // Attach event handlers for existing remove buttons
                              attachRemoveFeatureHandler();
                              </script>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                              
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <button class="addProductSubmit-btn" type="submit">{{ __("Save") }}</button>
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

@section('scripts')

<script type="text/javascript">

(function($) {
		"use strict";

$("#limit").on('change',function() {
  val = $(this).val();
    if(val == 1) {
        $("#limits").show();
        $("#allowed_products").prop("required", true);
    }
    else
    {
        $("#limits").hide();
        $("#allowed_products").prop("required", false);

    }
});

})(jQuery);

</script>

@endsection
