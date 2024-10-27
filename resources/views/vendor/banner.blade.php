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
<style>
	.img-upload #image-preview_left,.img-upload #image-preview_right {
		width: 100%;
		height: 240px;
		border: 1px dashed #000;
		color: #ecf0f1;
		position: relative;
		background-repeat: no-repeat !important;
		background-position: center !important;
	}
	.img-upload .img-label {
    display: block;
    width: 100%;
    height: 50px;
    line-height: 50px;
    background-color: #007bff;
;
    color: white;
    text-align: center;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.img-upload .img-label i {
    margin-right: 10px;
}

.img-upload .img-label:hover {
    background-color: #1100ff;
}

.img-upload input[type="file"] {
    display: none;
}

.img-preview {
    width: 100%;
    height: 240px;
    border: 1px dashed #000;
    background-size: cover;
    background-position: center;
    position: relative;
}
.img-upload .img-label {
    display: block;
    width: 100%;
    height: 50px;
    line-height: 50px;
    background-color: #007bff;
;
    color: white;
    text-align: center;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.img-upload .img-label i {
    margin-right: 10px;
}

.img-upload .img-label:hover {
    background-color: #1100ff;
}

.img-upload input[type="file"] {
    display: none;
}

.img-preview {
    width: 100%;
    height: 240px;
    border: 1px dashed #000;
    background-size: cover;
    background-position: center;
    position: relative;
}

</style>
<div class="content-area">
	<div class="mr-breadcrumb">
		<div class="row">
			<div class="col-lg-12">
				<h4 class="heading">{{ __('Banner') }}</h4>

				<ul class="links">
					<li>
						<a href="{{ route('vendor.dashboard') }}">{{ __('Dashboard') }} </a>
					</li>
					<li>
						<a href="javascript:;">{{ __('Settings') }}</a>
					</li>
					<li>
						<a href="{{ route('vendor-banner') }}">{{ __('Banner') }}</a>
					</li>
				</ul>

			</div>
		</div>
	</div>
	<div class="add-product-content">
		<div class="row">
			<div class="col-lg-12">
				<div class="product-description">
					<div class="body-area">

						<div class="gocover"
							style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);">
						</div>
						<form id="geniusform" action="{{ route('vendor-profile-update') }}" method="POST"
							enctype="multipart/form-data">
							{{csrf_field()}}


							@include('alerts.vendor.form-both')

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
										<h4 class="heading">{{ __('Current Banner') }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
									<div class="img-upload full-width-img">
										<div id="image-preview" class="img-preview"
											style="background: url({{ $data->shop_image ? asset('assets/images/vendorbanner/'.$data->shop_image):asset('assets/images/noimage.png') }});">
									
										</div>
                                                  <label for="image-upload" class="img-label" id="image-label"><i
													class="icofont-upload-alt"></i>{{ __('Upload Banner') }}</label>
											<input type="file" name="shop_image" class="img-upload" id="image-upload">
												<p class="text" >{{ __('Prefered Size: (1920x220)') }}</p>

									</div>
								</div>
							</div>

							{{-- Banner left --}}
							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
										<h4 class="heading">{{ __('Current Banner Left') }} *</h4>
									</div>
								</div>
								
							<div class="col-lg-7">
    <div class="img-upload full-width-img">
        <div id="image-preview_left" class="img-preview"
            style="background: url({{ $data->shop_image_left ? asset('assets/images/vendorbanner/'.$data->shop_image_left):asset('assets/images/noimage.png') }});">
        </div>
        <!-- تحريك الزر وحقل الإدخال أسفل المعاينة -->
        <style>
             @media (max-width: 400px) {
													.upload-section{
													    padding-left: 50px;
													}
													
													}
        </style>
        <div class="upload-section" style="margin-top: 10px;     text-align: center;">
            <label for="image-upload_left" class="img-label" id="image-label_left"><i
                    class="icofont-upload-alt"></i>{{ __('Upload Banner') }}</label>
            <input type="file" name="shop_image_left" class="img-upload" id="image-upload_left">
        </div>
        <p class="text">{{ __('Prefered Size: (800x400)') }}</p>
    </div>
</div>

							</div>

							{{-- Banner Right --}}
							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
										<h4 class="heading">{{ __('Current Banner Right') }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
    <div class="img-upload full-width-img">
        <div id="image-preview_right" class="img-preview"
            style="background: url({{ $data->shop_image_right ? asset('assets/images/vendorbanner/'.$data->shop_image_right):asset('assets/images/noimage.png') }});">
        </div>
        <!-- تحريك الزر وحقل الإدخال أسفل المعاينة -->
        <div class="upload-section" style="margin-top: 10px; text-align: center;">
            <label for="image-upload_right" class="img-label" id="image-label_right"><i
                    class="icofont-upload-alt"></i>{{ __('Upload Banner') }}</label>
            <input type="file" name="shop_image_right" class="img-upload" id="image-upload_right">
        </div>
        <p class="text">{{ __('Prefered Size: (800x400)') }}</p>
    </div>
</div>

							</div>

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">

									</div>
								</div>
								<div class="col-lg-7">
									<button class="addProductSubmit-btn" type="submit">{{ __('Save') }}</button>
								</div>
							</div>

						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
    function readURL(input, previewId) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById(previewId).style.backgroundImage = 'url(' + e.target.result + ')';
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    document.getElementById("image-upload").addEventListener("change", function() {
        readURL(this, "image-preview");
    });

    document.getElementById("image-upload_left").addEventListener("change", function() {
        readURL(this, "image-preview_left");
    });

    document.getElementById("image-upload_right").addEventListener("change", function() {
        readURL(this, "image-preview_right");
    });
</script>

@endsection