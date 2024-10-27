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
            <form id="geniusformdata" action="{{route('admin-subscription-create')}}" method="POST" enctype="multipart/form-data">
              {{csrf_field()}}

              <div class="row">
                <div class="col-lg-4">
                  <div class="left-area">
                      <h4 class="heading">{{ __("Title") }} *</h4>
                  </div>
                </div>
                <div class="col-lg-7">
                  <input type="text" class="input-field" name="title" placeholder="{{ __("Enter Subscription Title") }}" required="" value="">
                </div>
              </div>

              <div class="row">
                <div class="col-lg-4">
                  <div class="left-area">
                      <h4 class="heading">{{ __("Cost") }} *</h4>
                  </div>
                </div>
                <div class="col-lg-7">
                  <input type="text" class="input-field" name="price" placeholder="{{ __("Enter Subscription Cost") }}" required="" value="">
                </div>
              </div>

              <div class="row">
                <div class="col-lg-4">
                  <div class="left-area">
                      <h4 class="heading">{{ __("Days") }} *</h4>
                  </div>
                </div>
                <div class="col-lg-7">
                  <input type="text" class="input-field" name="days" placeholder="{{ __("Enter Subscription Days") }}" required="" value="">
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
                        <option value="0">{{ __("Unlimited") }}</option>
                        <option value="1">{{ __("Limited") }}</option>
                    </select>
                </div>
              </div>

              <div class="showbox" id="limits">
                <div class="row">
                  <div class="col-lg-4">
                    <div class="left-area">
                        <h4 class="heading">{{ __("Allowed Products") }} *</h4>
                    </div>
                  </div>
                  <div class="col-lg-7">
                    <input type="number" min="1" class="input-field" id="allowed_products" name="allowed_products" placeholder="{{ __("Enter Allowed Products") }}" value="1">
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-lg-4">
                  <div class="left-area">
                    <h4 class="heading">{{ __("Features") }} *</h4>
                  </div>
                </div>
                <div class="col-lg-7">
                  <div id="features">
                    <h4>Features</h4>
                    <div class="form-group feature">
                      <label for="features[0][name_en]">Feature Name en *</label>
                      <input value="Set Background color" type="text" name="features[0][name_en]" class="input-field" required>
                      <label for="features[0][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[0][has_icon]" value="1">
                      <br>
                      <label for="features[0][name_ar]">Feature Name ar *</label>
                      <input value="تغير لون الخلفية" type="text" name="features[0][name_ar]" class="input-field" required>
                      <label for="features[0][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[0][has_icon]" value="1">
                      <br>
                      <label for="features[0][name_kr]">Feature Name kr *</label>
                      <input  value="تغير لون الخلفية" type="text" name="features[0][name_kr]" class="input-field" required>
                      <label for="features[0][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[0][has_icon]" value="1">
                    </div>

                    <div class="form-group feature">
                      <label for="features[1][name_en]">Feature Name en *</label>
                      <input value="Generate Description with AI " type="text" name="features[1][name_en]" class="input-field" required>
                      <label for="features[1][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[1][has_icon]" value="1">
                      <br>
                      <label for="features[1][name_ar]">Feature Name ar *</label>
                      <input value="توليد وصف بالذكاء الصناعي" type="text" name="features[1][name_ar]" class="input-field" required>
                      <label for="features[1][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[1][has_icon]" value="1">
                      <br>
                      <label for="features[1][name_kr]">Feature Name kr *</label>
                      <input  value="توليد وصف بالذكاء الصناعي" type="text" name="features[1][name_kr]" class="input-field" required>
                      <label for="features[1][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[1][has_icon]" value="1">
                    </div>

                    <div class="form-group feature">
                      <label for="features[2][name_en]">Feature Name en *</label>
                      <input value="Save & Remove Background with AI" type="text" name="features[2][name_en]" class="input-field" required>
                      <label for="features[2][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[2][has_icon]" value="1">
                      <br>
                      <label for="features[2][name_ar]">Feature Name ar *</label>
                      <input value="ازالة خلفية الصورة بالذكاء الصناعي" type="text" name="features[2][name_ar]" class="input-field" required>
                      <label for="features[2][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[2][has_icon]" value="1">
                      <br>
                      <label for="features[2][name_kr]">Feature Name kr *</label>
                      <input  value="ازالة خلفية الصورة بالذكاء الصناعي" type="text" name="features[2][name_kr]" class="input-field" required>
                      <label for="features[2][has_icon]">Include Icon</label>
                      <input type="checkbox" name="features[2][has_icon]" value="1">
                    </div>
                  </div>
                  <button type="button" id="add-feature" class="btn btn-secondary">Add Feature</button>
                  <script>
                    document.getElementById('add-feature').addEventListener('click', function () {
                      const featureIndex = document.querySelectorAll('.feature').length;
                      const featureTemplate = `
                        <div class="form-group feature">
                          <label for="features[${featureIndex}][name_en]">Feature Name en *</label>
                          <input type="text" name="features[${featureIndex}][name_en]" class="input-field" required>
                          <label for="features[${featureIndex}][has_icon]">Include Icon</label>
                          <input type="checkbox" name="features[${featureIndex}][has_icon]" value="1">
                          <br>
                          <label for="features[${featureIndex}][name_ar]">Feature Name ar *</label>
                          <input type="text" name="features[${featureIndex}][name_ar]" class="input-field" required>
                          <label for="features[${featureIndex}][has_icon]">Include Icon</label>
                          <input type="checkbox" name="features[${featureIndex}][has_icon]" value="1">
                          <br>
                          <label for="features[${featureIndex}][name_kr]">Feature Name kr *</label>
                          <input type="text" name="features[${featureIndex}][name_kr]" class="input-field" required>
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
                  <div class="left-area"></div>
                </div>
                <div class="col-lg-7">
                  <button class="addProductSubmit-btn" type="submit">{{ __("Create Plan") }}</button>
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
    else {
      $("#limits").hide();
      $("#allowed_products").prop("required", false);
    }
  });

})(jQuery);

</script>
@endsection
