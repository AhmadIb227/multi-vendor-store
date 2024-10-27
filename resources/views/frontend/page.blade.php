@extends('layouts.front')

@section('content')
@include('partials.global.common-header')

<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
    <div class="container">
        <div class="row text-center text-white">
            <div class="col-12">
                 @if (app()->getLocale() === '17173493681JWu2JXL')
                        <h3 class="mb-2 text-white">{{ $page->title_ar }}</h3>
                    @elseif (app()->getLocale() === '17173493681JWu2KUR')
                      @if (!empty($page->title_ku))
                         <h3 class="mb-2 text-white">{{ $page->title_ku }}</h3>
                      @else
                         <h3 class="mb-2 text-white">{{ $page->title_ar }}</h3>
                      @endif
                    @elseif (app()->getLocale() === '1605519199OsGO7B86')
                      <h3 class="mb-2 text-white">{{ $page->title }}</h3>
                 @endif

            </div>
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="
    direction: ltr !important;
">
                        <li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }}</a></li>

                            @if (app()->getLocale() === '17173493681JWu2JXL')
                                    <li class="breadcrumb-item active" aria-current="page">{{ $page->title_ar }}</li>
                                @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                  @if (!empty($page->title_ku))
                                     <li class="breadcrumb-item active" aria-current="page">{{ $page->title_ku }}</li>
                                  @else
                                     <li class="breadcrumb-item active" aria-current="page">{{ $page->title_ar }}</li>
                                  @endif
                                @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                  <li class="breadcrumb-item active" aria-current="page">{{ $page->title }}</li>
                             @endif

                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb -->

  <!--==================== About Owner Section Start ====================-->
  <style>
    .p {
    margin: 1em 0; /* إضافة هامش بين الفقرات */
    line-height: 1.6; /* زيادة التباعد بين الأسطر */
}

  </style>
  <div class="full-row">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12">
              @if (app()->getLocale() === '17173493681JWu2JXL')
              <h3>{{ $page->title_ar }}</h3>
              <p>{!! nl2br(e($page->details_ar)) !!}</p>
          @elseif (app()->getLocale() === '17173493681JWu2KUR')
              @if (!empty($page->title_ku))
                  <h3>{{ $page->title_ku }}</h3>
                  <p>{!! nl2br(e($page->details_ku)) !!}</p>
              @else
                  <h3>{{ $page->title_ar }}</h3>
                  <p>{!! nl2br(e($page->details_ar)) !!}</p>
              @endif
          @elseif (app()->getLocale() === '1605519199OsGO7B86')
              <h3>{{ $page->title }}</h3>
              <p>{!! nl2br(e($page->details)) !!}</p>
          @endif
          

            </div>
            <div class="col-lg-5 col-md-12 sm-mx-none mt-5">
                <img class="sm-mb-30" src="{{ $page->photo ? asset('assets/images/pages/'.$page->photo) : 'Image not found!'}}" alt="Image not found!">
            </div>
        </div>
    </div>
</div>
<!--==================== About Owner Section End ====================-->




@includeIf('partials.global.common-footer')

@endsection
