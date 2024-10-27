<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200..1000&family=Noto+Kufi+Arabic:wght@100..900&family=Tajawal:wght@200;300;400;500;700;800;900&family=Zain:wght@200;300;400;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200..1000&family=Noto+Kufi+Arabic:wght@100..900&family=Tajawal:wght@200;300;400;500;700;800;900&family=Zain:wght@200;300;400;700;800;900&display=swap" rel="stylesheet">
   <script src="" defer></script>
  
  </head>
  
  @if(Session::has('language'))
      @php
          $curr_lang = App\Models\Language::find(Session::get('language'));
      @endphp
  @else
      @php
          $curr_lang = App\Models\Language::where('is_default', 1)->first();
      @endphp
  @endif
  
  
  
  @if($ps->top_big_trending==1)
  <!--==================== Top Collection Section Start ====================-->
  
  
  <style>
    .product1{
      height: 300px;
      width: 140px;
    }
   
    @media (max-width: 400px) {
        .product1{
      height: 274px;
      width: 115px;
  }
    }
  
    body{
               font-family: "Noto Kufi Arabic", sans-serif;
            font-optical-sizing: auto;
          }
     .img-p  {
       width 300px
      }
  
      .full-row.vendor-responsive-mobile {
          margin-top: -20px;
      }
  
      @media (max-width: 767px) {
          .product-style-2 .item {
              flex: 0 0 calc(45% - 10px);
              margin: 5px;
          }
  
          .product-style-2 .product-wrapper {
              margin: 0 auto;
              padding: 6px;
          }
  
          .product-style-2 .product-image img {
              width: 100%;
              height: auto;
              max-height: 240px;
          }
  
          .product-style-2 .product-info {
              padding: 5px;
              text-align: center;
          }
  
          .product-style-2 .product-title {
              font-size: 0.85rem;
              /* تقليل حجم النص قليلاً */
          }
  
          .product-style-2 .product-price {
              font-size: 0.75rem;
              /* تقليل حجم النص قليلاً */
          }
  
          .product-style-2 .star-rating p {
              font-size: 0.7rem;
          }
      }
        .product-wrapper .product-image{
          height: 111px;
  }
      
      @media screen and (max-width: 600px) {
          .product-wrapper .product-image{
          height: 111px;
  }
          .products.product-style-1 .row-cols-3 {
              grid-template-columns: repeat(3, 1fr);
              /* يعرض ثلاث عناصر في الصف الواحد */
          }
  
          /* تصغير حجم الكرت */
          .products.product-style-1 .product-item {
              width: 100px;
              /* عرض الكرت */
              height: auto;
              /* الحفاظ على الارتفاع النسبي */
          }
  
          .products.product-style-1 .product-item img {
              width: 100%;
              /* عرض الصورة داخل الكرت بالكامل */
              height: auto;
              /* الحفاظ على نسبة الارتفاع */
          }
  
          .products.product-style-1 .product-title {
              font-size: 0.8rem;
              /* تصغير حجم النص */
          }
  
          .products.product-style-1 .product-price {
              font-size: 0.8rem;
              /* تصغير حجم السعر */
          }
      }
  
      @media (max-width: 768px) {
  
          .prevBtn-slider,
          .nextBtn-slider {
              display: none;
          }
      }
  
  
      @media screen and (min-width: 1000px) {
          .responsive-cards-product .responsive-cards-product-col {
              width: 12% !important;
          }
      }
  
      @media screen and (max-width: 600px) {
          .nav-pills {
              display: flex !important;
              flex-wrap: nowrap !important;
          }
  
          .nav-pills a {
              font-size: 9px !important;
          }
  
          .simple-service {
              display: flex !important;
              flex-direction: column !important;
          }
      }
  
      @media screen and (max-width: 360px) {
          .time-count.time-box li {
              width: 66px !important;
              height: 66px !important;
          }
  
          .time-count.time-box ul {
              flex-wrap: nowrap !important;
          }
      }
      .img-partners
      {
        display: flex;
        flex-wrap: wrap;
        width: 95%;
          
      }
      }
          @media screen and (max-width: 991px) {
          
             img {
              width 300px
                }
                
      }
      .img-con{
       width: 20%;
       margin-top: 0.9rem;
       display: flex;
       flex-wrap: wrap;
       justify-content: center;
         
      }
            @media screen and (max-width: 995px) {
             .img-con{
              width: 50%;
              margin-top: 0.9rem;
              display: flex;
              flex-wrap: wrap;
              justify-content: center;
         
      }
      }
      .img-p{
          width:50%;
          
      }
      /*refIMGCSS*/
         @media screen and (max-width: 776px) {
             .con{
                 
                     display: flex;
                     flex-wrap: wrap;
             }
             .con-box{
                 width: 80%;
                   height: 120px;
             }
             .con-img{
                  width:100%;
                  top: 50%;
                  left: 50%;
                  transform: translate(-50%, -50%);
             }
             .con-text{
                 
                 margin-top:1rem;
             }
             
             
         }
          .product1{
         border-radius: 5px;
          border: 2px solid #bbbaba6b;
     }
  </style>
  
  <div class="full-row bg-white">
      <div class="container">
          <div class="row">
              <div class="col responsive-cards-product">
                  <div class="top-collection-tab nav-tab-active-secondary">
                      <ul class="nav nav-pills list-color-general justify-content-center mb-5">
                          <li class="nav-item ms-4">
                              <a class="nav-link active" data-bs-toggle="pill" href="#pills-new-arrival-two">{{ __('New Arrival') }}</a>
                          </li>
                          <li class="nav-item ">
                              <a class="nav-link" data-bs-toggle="pill" href="#pills-Trending-two">{{ __('Trending')}}</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" data-bs-toggle="pill" href="#pills-best-selling-two">{{ __('Best Selling') }}</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" data-bs-toggle="pill" href="#pills-featured-two">{{ __('Popular') }}</a>
                          </li>
                      </ul>
                      <div class="tab-content">
                          @php
                          $tabs = [
                          ['id' => 'pills-new-arrival-two', 'products' => $latest_products, 'label' => __('New Arrival')],
                          ['id' => 'pills-Trending-two', 'products' => $trending_products, 'label' => __('Trending')],
                          ['id' => 'pills-best-selling-two', 'products' => $sale_products, 'label' => __('Best Selling')],
                          ['id' => 'pills-featured-two', 'products' => $popular_products, 'label' => __('Popular')],
                          ];
                          @endphp
  
                          @foreach($tabs as $tab)
                          <div class="tab-pane fade {{ $loop->first ? 'show active' : '' }}" id="{{ $tab['id'] }}">
                              <div class="products1 product-style-1">
                                  <div
                                      class="row g-4 row-cols-xl-4 row-cols-md-4 row-cols-sm-3 row-cols-3 e-title-general e-title-hover-primary e-image-bg-light e-hover-image-zoom e-info-center">
                                      @foreach(array_slice($tab['products']->all(), 0, 8) as $prod)
                                      <div class="col responsive-cards-product-col">
                                          @include('partials.product.home-product', ['product' => $prod])
                                      </div>
                                      @endforeach
                                  </div>
                                  @if($tab['products']->count() > 8)
                                  <div class="text-center mt-3">
                                      <button style="color:#007bff" class="btn btn-primary load-more" data-target="#{{ $tab['id'] }}-more">{{
                                          __('Show More') }}</button>
                                  </div>
                                  <div class="row g-4 row-cols-xl-4 row-cols-md-4 row-cols-sm-3 row-cols-3 e-title-general e-title-hover-primary e-image-bg-light e-hover-image-zoom e-info-center d-none"
                                      id="{{ $tab['id'] }}-more">
                                      @foreach(array_slice($tab['products']->all(), 8) as $prod)
                                      <div class="col responsive-cards-product-col">
                                          @include('partials.product.home-product', ['product' => $prod])
                                      </div>
                                      @endforeach
                                  </div>
                                  @endif
                              </div>
                          </div>
                          @endforeach
                      </div>
                  </div>
  
  
              </div>
          </div>
      </div>
  </div>
  
  
  @endif
  
  <!--==================== Top Collection Section End ====================-->
  @if($ps->category == 1)
  <div class="full-row">
      <div class="container responsive-cards-product">
          <div class="row justify-content-center">
              <div class="col-lg-5">
                  <h2 class="main-title mb-4 text-center text-secondary">{{ __('All Products') }}</h2>
              </div>
          </div>
  
          <!-- Products Display Area -->
          <div class="products product-style-1" id="products-section-1">
              <div class="row g-4 row-cols-xl-4 row-cols-md-4 row-cols-sm-3 row-cols-3 e-title-general e-title-hover-primary e-image-bg-light e-hover-image-zoom e-info-center">
                  @foreach($products as $prod)
                  <div class="col responsive-cards-product-col">
                      <div class="product1 type-product">
                          <div class="product-wrapper">
                             <div class="product-image">
                      
                                <a href="{{ route('front.product', $prod->slug) }}" class="woocommerce-LoopProduct-link">
                                     <img src="{{ $prod->photo ? asset('assets/images/products/' . $prod->photo) : asset('assets/images/noimage.png') }}"
                                                                  alt="Product Image">
                                   </a>
                                @if(!empty($prod->features))
                                <div class="product-variations">
                                   @foreach($prod->features as $key => $data1)
                                   <span class="active sale"><a href="#" style="background-color: {{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</a></span>
                                   @endforeach
                                </div>
                                @endif
                                
                                @if ($prod->offPercentage() && round($prod->offPercentage())>0)
                                <div class="on-sale">- {{ round($prod->offPercentage() )}}%</div>
                                @endif
                      
                                <div class="hover-area">
                                  @if($prod->product_type == "affiliate")
                                  <div class="cart-button">
                                     <a href="javascript:;" data-href="{{ $prod->affiliate_link }}" class="button add_to_cart_button affilate-btn" data-bs-toggle="tooltip" data-bs-placement="right" title="" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
                                  </div>
                                  @else
                                  @if($prod->emptyStock())
                                  <div class="closed">
                                     <a class="cart-out-of-stock button add_to_cart_button"  href="#" title="{{ __('Out Of Stock') }}" ><i class="flaticon-cancel flat-mini mx-auto"></i></a>
                                  </div>
                                  @else
                                  @if ($prod->type != "Listing")
                                
                                     <div class="cart-button">
                                       
                                        <a href="javascript:;"
                                        data-bs-toggle="modal"  {{$prod->cross_products ? 'data-bs-target=#exampleModal' : ''}}  data-href="{{ route('product.cart.add',$prod->id) }}" data-cross-href="{{route('front.show.cross.product',$prod->id)}}" class="add-cart button add_to_cart_button {{$prod->cross_products ? 'view_cross_product' : ''}}"  data-bs-placement="right"  title="Add To Cart" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
                                     </div>
                                     
                             
                                  @endif
                                  @endif
                                  @endif
                                  @if(Auth::check())
                                  <div class="wishlist-button">
                                     <a class="add_to_wishlist  new button add_to_cart_button" id="add-to-wish" href="javascript:;" data-href="{{ route('user-wishlist-add',$prod->id) }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Add to Wishlist" title="{{ __('Wishlist') }}" aria-label="Add to Wishlist">{{ __('Wishlist') }}</a>
                                  </div>
                                  @else
                                  <div class="wishlist-button">
                                     <a class="add_to_wishlist button add_to_cart_button" href="{{ route('user.login') }}" data-bs-toggle="tooltip" data-bs-placement="right" title="{{ __('Wishlist') }}" data-bs-original-title="{{ __('Wishlist') }}" aria-label="{{ __('Wishlist') }}">{{ __('Wishlist') }}</a>
                                  </div>
                                  @endif
                      
                                  @if ($prod->type != "Listing")
                                     <div class="compare-button">
                                        <a class="compare button add_to_cart_button" data-href="{{ route('product.compare.add',$prod->id) }}" href="javascrit:;" data-bs-toggle="tooltip" data-bs-placement="right" title="{{__('Compare')}}" data-bs-original-title="{{__('Compare')}}" aria-label="{{__('Compare')}}">{{ __('Compare') }}</a>
                                     </div>
                                  @endif
                               </div>
                             </div>
                             <div class="product-info">
                                <h3 class="product-title"><a href="{{ route('front.product', $prod->slug) }}">
                                    <!--{{ $prod->showName() }}-->
                                      @if (app()->getLocale() === '17173493681JWu2JXL')
                                      {{ $prod->name_ar }}
                                  @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                      @if (!empty($prod->name_ku))
                                          {{ $prod->name_ku }}
                                      @else
                                          {{ $prod->name_ar }}
                                      @endif
                                  @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                      {{ $prod->name }}
                                  @endif 
                                    </a></h3>
                                <div class="product-price">
                                   <div class="">
                                        @if( $prod->showPrice())
                                        <!--<ins>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</ins>-->
                                        <!-- <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</del>-->
                                          <ins style="color:blue ;">({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</ins><br>
                                          @endif
                                           @if( $prod->showPreviousPrice())
                                         <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</del>
                                            @endif
                                      <!--<ins>{{ $prod->showPrice() }} </ins>-->
                                      <!--<del>{{ $prod->showPreviousPrice() }}</del>-->
                                   </div>
                                </div>
                                <div class="shipping-feed-back">
                                   <div class="star-rating">
                                      <div class="rating-wrap">
                                         <p><i class="fas fa-star"></i><span> {{ number_format($prod->ratings_avg_rating,1) }} {{ ($prod->ratings_count) }}</span></p>
                                      </div>
                                   </div>
                                </div>
                             </div>
                          </div>
                       </div>
                  </div>
                  @endforeach
              </div>
              @if($products->hasMorePages())
              <style>
                  #load-more-1 {
                      cursor: pointer;
                      color: #007bff;
                      font-weight: bold;
                  }
                  #load-more-1:hover {
                      color: #0056b3;
                  }
              </style>
              
              <br>
              <div class="row justify-content-content" id="m-load-more-1">
                  <div class="row ">
                      @if($curr_lang->rtl == 1)
                      <style>
                          #load-more-1 {
                          text-align: left;
                          margin-right: -18px;
                            }
                           @media (max-width: 767px) {
                              .text-center {
                                  margin-top: 40px;}
                      #load-more-1 {
                          padding-top: 5px;
          text-align: center;
          margin-top: -80px;
          margin-right: 268px;
          width: 100px;
          font-size: 10px;
          height: 40px;
          background-color: #007bff;
          color: white;
          border-radius: 10px;
                       }
  
                   }
              </style>
                      <p id="load-more-1" class="text">{{ __('Show more') }}</p>
                      @else
                      <style>
                          #load-more-1 {
                          text-align: right;
                         
                         }
                           @media (max-width: 767px) {
                              .text-center {
                                  margin-top: 40px;}
                      #load-more-1 {
                          padding-top: 5px;
          text-align: center;
          margin-top: -80px;
          margin-left: 266px;
          width: 100px;
          font-size: 10px;
          height: 40px;
          background-color: #007bff;
          color: white;
          border-radius: 10px;
                      }
  
                   }
              </style>
                      <p id="load-more-1" class="text">{{ __('Show more') }}</p>
                      @endif 
                  </div>
              </div>
              
              @endif
          </div>
      </div>
  </div>
  @endif
  
  <!--==================== Top Products Section End ====================-->
  
  @if($ps->category == 1)
  <div class="full-row">
      <div class="container responsive-cards-product">
          <div class="row justify-content-center">
              <div class="col-lg-5">
                  <h2 class="main-title mb-4 text-center text-secondary">{{ __('Our Featured Products') }}</h2>
              </div>
          </div>
  
          <!-- Products Display Area -->
          <div class="products product-style-1" id="products-section-2">
              <div class="row g-4 row-cols-xl-4 row-cols-md-4 row-cols-sm-3 row-cols-3 e-title-general e-title-hover-primary e-image-bg-light e-hover-image-zoom e-info-center">
                  @foreach($products as $prod)
                  <div class="col responsive-cards-product-col">
                      <div class="product1 type-product">
                          <div class="product-wrapper">
                             <div class="product-image">
                      
                                <a href="{{ route('front.product', $prod->slug) }}" class="woocommerce-LoopProduct-link">
                                     <img src="{{ $prod->photo ? asset('assets/images/products/' . $prod->photo) : asset('assets/images/noimage.png') }}"
                                                                  alt="Product Image">
                                   </a>
                                @if(!empty($prod->features))
                                <div class="product-variations">
                                   @foreach($prod->features as $key => $data1)
                                   <span class="active sale"><a href="#" style="background-color: {{ $prod->colors[$key] }}">{{ $prod->features[$key] }}</a></span>
                                   @endforeach
                                </div>
                                @endif
                                
                                @if ($prod->offPercentage() && round($prod->offPercentage())>0)
                                <div class="on-sale">- {{ round($prod->offPercentage() )}}%</div>
                                @endif
                      
                                <div class="hover-area">
                                  @if($prod->product_type == "affiliate")
                                  <div class="cart-button">
                                     <a href="javascript:;" data-href="{{ $prod->affiliate_link }}" class="button add_to_cart_button affilate-btn" data-bs-toggle="tooltip" data-bs-placement="right" title="" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
                                  </div>
                                  @else
                                  @if($prod->emptyStock())
                                  <div class="closed">
                                     <a class="cart-out-of-stock button add_to_cart_button"  href="#" title="{{ __('Out Of Stock') }}" ><i class="flaticon-cancel flat-mini mx-auto"></i></a>
                                  </div>
                                  @else
                                  @if ($prod->type != "Listing")
                                
                                     <div class="cart-button">
                                       
                                        <a href="javascript:;"
                                        data-bs-toggle="modal"  {{$prod->cross_products ? 'data-bs-target=#exampleModal' : ''}}  data-href="{{ route('product.cart.add',$prod->id) }}" data-cross-href="{{route('front.show.cross.product',$prod->id)}}" class="add-cart button add_to_cart_button {{$prod->cross_products ? 'view_cross_product' : ''}}"  data-bs-placement="right"  title="Add To Cart" data-bs-original-title="{{ __('Add To Cart') }}" aria-label="{{ __('Add To Cart') }}"></a>
                                     </div>
                                     
                             
                                  @endif
                                  @endif
                                  @endif
                                  @if(Auth::check())
                                  <div class="wishlist-button">
                                     <a class="add_to_wishlist  new button add_to_cart_button" id="add-to-wish" href="javascript:;" data-href="{{ route('user-wishlist-add',$prod->id) }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Add to Wishlist" title="{{ __('Wishlist') }}" aria-label="Add to Wishlist">{{ __('Wishlist') }}</a>
                                  </div>
                                  @else
                                  <div class="wishlist-button">
                                     <a class="add_to_wishlist button add_to_cart_button" href="{{ route('user.login') }}" data-bs-toggle="tooltip" data-bs-placement="right" title="{{ __('Wishlist') }}" data-bs-original-title="{{ __('Wishlist') }}" aria-label="{{ __('Wishlist') }}">{{ __('Wishlist') }}</a>
                                  </div>
                                  @endif
                      
                                  @if ($prod->type != "Listing")
                                     <div class="compare-button">
                                        <a class="compare button add_to_cart_button" data-href="{{ route('product.compare.add',$prod->id) }}" href="javascrit:;" data-bs-toggle="tooltip" data-bs-placement="right" title="{{__('Compare')}}" data-bs-original-title="{{__('Compare')}}" aria-label="{{__('Compare')}}">{{ __('Compare') }}</a>
                                     </div>
                                  @endif
                               </div>
                             </div>
                             <div class="product-info">
                                <h3 class="product-title"><a href="{{ route('front.product', $prod->slug) }}">
                                    <!--{{ $prod->showName() }}-->
                                      @if (app()->getLocale() === '17173493681JWu2JXL')
                                      {{ $prod->name_ar }}
                                  @elseif (app()->getLocale() === '17173493681JWu2KUR')
                                      @if (!empty($prod->name_ku))
                                          {{ $prod->name_ku }}
                                      @else
                                          {{ $prod->name_ar }}
                                      @endif
                                  @elseif (app()->getLocale() === '1605519199OsGO7B86')
                                      {{ $prod->name }}
                                  @endif 
                                    </a></h3>
                                <div class="product-price">
                                   <div class="">
                                        @if( $prod->showPrice())
                                        <!--<ins>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</ins>-->
                                        <!-- <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</del>-->
                                          <ins style="color:blue ;">({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</ins><br>
                                          @endif
                                           @if( $prod->showPreviousPrice())
                                         <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</del>
                                            @endif
                                      <!--<ins>{{ $prod->showPrice() }} </ins>-->
                                      <!--<del>{{ $prod->showPreviousPrice() }}</del>-->
                                   </div>
                                </div>
                                <div class="shipping-feed-back">
                                   <div class="star-rating">
                                      <div class="rating-wrap">
                                         <p><i class="fas fa-star"></i><span> {{ number_format($prod->ratings_avg_rating,1) }} {{ ($prod->ratings_count) }}</span></p>
                                      </div>
                                   </div>
                                </div>
                             </div>
                          </div>
                       </div>
                  </div>
                  @endforeach
              </div>
              @if($products->hasMorePages())
              <style>
                  #load-more-2 {
                      cursor: pointer;
                      color: #007bff;
                      font-weight: bold;
                   
                  }
                  #load-more-2:hover {
                      color: #0056b3;
                  }
              </style><br>
              <div class="row">
                  <div class="row ">
                      @if($curr_lang->rtl == 1)
                      <style>
                          #load-more-2 {
                          text-align: left;
                          margin-right: -18px;
                            }
                           @media (max-width: 767px) {
                      #load-more-2 {
                          padding-top: 5px;
          text-align: center;
          margin-top: -80px;
          margin-right: 268px;
          width: 100px;
          font-size: 10px;
          height: 40px;
          background-color: #007bff;
          color: white;
          border-radius: 10px;
                       }
  
                   }
              </style>
                      <p id="load-more-2" class="text">{{ __('Show more') }}</p>
                      @else
                      <style>
                          #load-more-2 {
                          text-align: right;
                        
                         }
                           @media (max-width: 767px) {
                      #load-more-2 {
                          padding-top: 5px;
                          padding-top: 5px;
          text-align: center;
          margin-top: -80px;
          margin-left: 266px;
          width: 100px;
          font-size: 10px;
          height: 40px;
          background-color: #007bff;
          color: white;
          border-radius: 10px;
                      }
  
                   }
              </style>
                      <p id="load-more-2" class="text">{{ __('Show more') }}</p>
                      @endif 
                  </div>
              </div>
              
              @endif
          </div>
      </div>
  </div>
  @endif
  <script>
      document.addEventListener('DOMContentLoaded', function () {
          let currentPage1 = 1;
          let currentPage2 = 1;
  
          document.getElementById('load-more-1').addEventListener('click', function () {
              currentPage1++;
              loadMoreProducts(currentPage1, 'products-section-1', 'load-more-1');
          });
  
          document.getElementById('load-more-2').addEventListener('click', function () {
              currentPage2++;
              loadMoreProducts(currentPage2, 'products-section-2', 'load-more-2');
          });
  
          function loadMoreProducts(page, sectionId, buttonId) {
              let xhr = new XMLHttpRequest();
              xhr.open('GET', '{{ route('load.more.products') }}?page=' + page + '&section=' + sectionId, true);
  
              xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
  
              xhr.onload = function () {
                  if (xhr.status === 200) {
                      let response = JSON.parse(xhr.responseText);
  
                      if (response.html) {
                          document.querySelector('#' + sectionId + ' .row').insertAdjacentHTML('beforeend', response.html);
                      }
  
                      if (!response.hasMoreProducts) {
                          document.getElementById(buttonId).style.display = 'none';
                      }
                  }
              };
  
              xhr.send();
          }
      });
  </script>
  
  @if($ps->deal_of_the_day==1)
  
  <!--==================== Deal of the day Section Start ====================-->
  <div class="full-row bg-light">
      <div class="container  responsive-cards-product">
          <div class="row offer-product align-items-center">
              <div class="col-xl-5 col-lg-7 ">
                  <h1 class="down-line-secondary text-dark text-uppercase mb-30">{{ __('Deal') }} <br> {{ __('of the Day')
                      }}</h1>
                  <div class="product type-product">
                      <div class="product-wrapper">
                          <div class="product-info">
  
                              <h3 class="product-title">{{ $gs->deal_title }}</h3>
  
                              <div class="font-fifteen">
                                  <p>{{ $gs->deal_details }}</p>
                              </div>
                              <div class="time-count time-box text-center my-30 flex-between w-100"
                                  data-countdown="{{ $gs->deal_time }}"></div>
                              <a href="{{ route('front.category').'?type=flash'  }}"
                                  class="btn btn-dark text-uppercase rounded-0">{{ __('Shop Now') }}</a>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-xl-6 col-lg-5 offset-xl-1">
  
                  <div class="xs-mt-30"><img
                          src="{{ $gs->deal_background ? asset('assets/images/'.$gs->deal_background):asset('assets/images/noimage.png') }}"
                          alt=""></div>
  
              </div>
          </div>
      </div>
  </div>
  <!--==================== Deal of the day Section End ====================-->
  
  @endif
  <!--==================== Deal of the day Section End ====================-->
  
  
  
  <!--==================== Service Section Start ====================-->
  @if ($ps->partner==1)
  <div class="full-row bg-light">
      <div class="container">
          <div class="row justify-content-center">
              <div class="col-lg-5">
  
                  <h2 class="main-title mb-4 text-center text-secondary"> {{ __('Our Partners') }}</h2>
                  <span class="mb-30 sub-title text-general font-medium ordenery-font font-400 text-center">{{__('Welcome to the Azrar Partner Program')}}</span>
              </div>
          </div>
          <!--reference-->
          <div class="img-partners">
              @foreach (DB::table('partners')->get() as $data)
                  <div class="img-con">
                      <img class="img-p" src="{{ asset('assets/images/partner/'.$data->photo) }}" alt="">
                  </div>
              @endforeach
          </div>
      </div>
  </div>
  
  @endif
  
  <!--==================== Service Section End ====================-->
  
  <!--==================== Top Products Section Start ====================-->
  <style>
   .down-line-secondary {
   margin-top: -50px;}
      .main-title1{
               margin-top: -50px;
      }
           @media (max-width: 767px) {
                .main-title1{
              margin-top: 15px;
      }
           }
        @media (max-width: 400px) {
               .main-title1{
              margin-top: 15px;
      }
      .down-line-secondary {
      margin-top: 10px;
     
    }
      }
  </style>
  @if($ps->best_sellers==1)
  <div class="full-row">
      <div class="container  responsive-cards-product">
          <div class="row justify-content-center">
              <div class="col-lg-5">
                
                  <h2 class="main-title1 mb-4 text-center text-secondary" >{{ __('Best Selling Products') }}</h2>
  
              </div>
          </div>
  
          
  
      </div>
     
  
   <div class="row">
          <div class="col-12">
              <div class="products product-style-2 owl-mx-15">
                  <div
                      class="four-carousel owl-carousel dot-disable nav-arrow-middle-show e-title-general e-title-hover-primary e-image-bg-light e-info-center e-hover-image-zoom e-info-center">
                      @foreach($products as $product)
                      <div class="item">
                          <div class="product type-product">
                              <div class="product-wrapper">
                                  <div class="product-image" style="height: 231px;">
                                      <a href="{{ route('front.product', $product->slug) }}"
                                          class="woocommerce-LoopProduct-link">
                                          <img src="{{ $product->photo ? asset('assets/images/products/' . $product->photo) : asset('assets/images/noimage.png') }}"
                                              alt="Product Image">
                                      </a>
                                      @if (round($product->offPercentage()) > 0)
                                      <div class="on-sale">- {{ round($product->offPercentage()) }}%</div>
                                      @endif
                                      <div class="hover-area">
                                          @if ($product->product_type == 'affiliate')
                                          <div class="cart-button buynow">
                                              <a class="add-to-cart-quick button add_to_cart_button" href="javascript:;"
                                                  data-href="{{ route('product.cart.quickadd', $product->id) }}"
                                                  data-bs-toggle="tooltip" data-bs-placement="right"
                                                  title="{{ __('Buy Now') }}" aria-label="{{ __('Buy Now') }}">{{ __('Buy
                                                  Now') }}</a>
                                          </div>
                                          @else
                                          @if ($product->emptyStock())
                                          <div class="closed">
                                              <a class="cart-out-of-stock button add_to_cart_button" href="#"
                                                  title="{{ __('Out Of Stock') }}"><i
                                                      class="flaticon-cancel flat-mini mx-auto"></i></a>
                                          </div>
                                          @else
                                          @if ($product->type != 'Listing')
                                          <div class="cart-button">
                                              <a href="javascript:;" data-bs-toggle="modal"
                                                  data-cross-href="{{ route('front.show.cross.product', $product->id) }}"
                                                  {{ $product->cross_products ? 'data-bs-target=#exampleModal' : '' }}
                                                  data-href="{{ route('product.cart.add', $product->id) }}"
                                                  class="add-cart button add_to_cart_button {{ $product->cross_products ?
                                                  'view_cross_product' : '' }}" data-bs-toggle="tooltip"
                                                  data-bs-placement="right" title="{{ __('Add To Cart') }}" aria-label="{{
                                                  __('Add To Cart') }}">{{ __('Add To Cart') }}</a>
                                          </div>
                                          @endif
                                          @endif
                                          @endif
                                          @if (Auth::check())
                                          <div class="wishlist-button">
                                              <a class="add_to_wishlist new button add_to_cart_button" id="add-to-wish"
                                                  href="javascript:;"
                                                  data-href="{{ route('user-wishlist-add', $product->id) }}"
                                                  data-bs-toggle="tooltip" data-bs-placement="right"
                                                  title="{{ __('Wishlist') }}" aria-label="{{ __('Wishlist') }}">{{
                                                  __('Wishlist') }}</a>
                                          </div>
                                          @else
                                          <div class="wishlist-button">
                                              <a class="add_to_wishlist button add_to_cart_button"
                                                  href="{{ route('user.login') }}" data-bs-toggle="tooltip"
                                                  data-bs-placement="right" title="{{ __('Wishlist') }}"
                                                  aria-label="{{ __('Wishlist') }}">{{ __('Wishlist') }}</a>
                                          </div>
                                          @endif
                                          @if ($product->type != 'Listing')
                                          <div class="compare-button">
                                              <a class="compare button button add_to_cart_button"
                                                  data-href="{{ route('product.compare.add', $product->id) }}"
                                                  href="javascript:;" data-bs-toggle="tooltip" data-bs-placement="right"
                                                  title="{{ __('Compare') }}" aria-label="Compare">{{ __('Compare') }}</a>
                                          </div>
                                          @endif
                                      </div>
                                  </div>
                                  <div class="product-info">
                                      <h3 class="product-title"><a href="{{ route('front.product', $product->slug) }}">{{
                                              $product->showName() }}</a></h3>
                                      <div class="product-price">
               <div class="">  @if( $prod->showPrice())
                    <!--<ins>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</ins>-->
                    <!-- <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</del>-->
                      <ins style="color:blue ;">({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPrice()) }}</ins><br>
                      @endif
                       @if( $prod->showPreviousPrice())
                     <del>({{ preg_replace('/(\d+)([A-Z]+)/', '$1) $2', $prod->showPreviousPrice()) }}</del>
                        @endif
               </div>
            </div>
                                      <div class="shipping-feed-back">
                                          <div class="star-rating">
                                              <div class="rating-wrap">
                                                  <p><i class="fas fa-star"></i><span>{{
                                                          number_format($product->ratings_avg_rating, 1) }} {{(
                                                          $product->ratings_count) }}</span></p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      @endforeach
                  </div>
              </div>
          </div>
      </div>
  
  
  </div>
  </div>
  <!--==================== Top Products Section End ====================-->
  @endif
  
  
  
  
  
  <!--==================== Service Section Start ====================-->
  <div class="full-row bg-light pb-4">
      <div class="container  responsive-cards-product">
          <div class="row row-cols-xl-4 row-cols-sm-3 row-cols-2 gy-4 gy-xl-0">
              {{-- <div class="col">
               
                  <div class="simple-service px-3 md-my-10 d-flex align-items-center">
                      <div class="box-80px rounded-pill position-relative bg-white">
                          <i
                              class="flaticon-money flat-medium text-secondary xy-center position-absolute"></i>
                      </div>
                      <div class="ms-3">
                          <h5 class="mb-1 font-500"><a href="#"
                                  class="text-dark hover-text-primary transation-this">Money Gurantee</a></h5>
                          <div class="font-small text-secondary">
                              <span>With A 30 Days</span>
                          </div>
                      </div>
                  </div>
              </div> --}}
              @foreach (DB::table('services')->get() as $service)
              <div class="col">
                     <!--refIMG-->
                  <div class="con px-3 md-my-10 d-flex align-items-center">
                      <div class="con-box box-80px position-relative bg-white">
                          <img class="con-img text-secondary position-absolute"
                              src="{{asset('assets/images/services/'.$service->photo)}}" alt="">
                      </div>
                      <div class="con-text ms-3 ">
                          <h5 class="mb-1 font-500"><a href="#"
                                  class="text-dark hover-text-primary transation-this"  onclick="event.preventDefault();" >{{$service->title}}</a></h5>
                          <div class="font-small text-secondary">
                              <span>{{$service->details}}</span>
                          </div>
                      </div>
                  </div>
              </div>
              @endforeach
  
  
          </div>
      </div>
  </div>
  <!--==================== Service Section End ====================-->
  
  <style>
    audio, canvas, embed, iframe, img, object, svg, video {
    display: inline-block;
    vertical-align: middle;

}
.mobile-app-wrapper img{
    width: 100%;
    height: 500px;
}
.fs-1 {
    /* margin-top: -10px; */
    font-size: calc(1.375rem + 1.5vw) !important;
    padding-bottom: 10px;
}
@media (max-width: 400px) {
.mt-3 .m img{
    width: 35%;
}
.fs-1 {
    /* margin-top: -10px; */
    font-size: calc(1.375rem + 1.5vw) !important;
    padding-bottom: 10px;
}
.mobile-app-wrapper img{
    width: 100%;
    height: 300px;
}

}

  </style>
  <div class="py-4 bg-white my-4 border-radius-10">
    <div class="row">
        <div class="col-md-6">
            <div class="mobile-app-wrapper">
                <img src="https://glasssart.shop/assets/front_end/modern/image/avtars/4861083.jpg" alt="">
            </div>
        </div>
        <div class="col-md-6 d-flex justify-content-center align-items-center">
            <div class="text-center">
                <div>
                    <h3 class="section-title fs-1">{{ __('Azrar Mobile App') }}</h3>
                    <h3 class="fs-4 fw-medium gray-700">{{ __('Ecommerce Platform') }}</h3><br>
                </div>
                <p class="m-0 gray-700"> {{ __('Shop with us at affordable prices and get') }}</p>
                <p class="m-0 gray-700"> {{ __('exciting cashback') }} &amp; {{ __('offers.') }}</p>
                <div class="mt-3">
                    <a class="m" href="https://www.apple.com/in/app-store/" target="_blank"><img src="https://glasssart.shop/assets/front_end/modern/image/app-store/app-store.png" alt="" class="download_section" width="150"></a>
                    <a  class="m" href="https://play.google.com" target="_blank"><img src="https://glasssart.shop/assets/front_end/modern/image/app-store/google-play-store.png" alt="" class="download_section" width="150"></a>
                </div>
            </div>
        </div>
    </div> <!-- end of row -->
</div>
  
  
  <!--==================== Our Blog Section Start ====================-->
  @if($ps->blog==1)
  <div class="full-row pt-5">
      <div class="container  responsive-cards-product">
          <div class="row justify-content-center">
              <div class="col-lg-5">
                  <h2 class="main-title mb-4 text-center text-secondary">{{ __('Latest Post') }}</h2>
                  <span class="mb-30 sub-title text-general font-medium ordenery-font font-400 text-center">{{ __('Cillum
                      eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse
                      enim.') }}</span>
              </div>
          </div>
          <div class="row row-cols-lg-2 row-cols-3">
              @foreach ($blogs as $blog)
              <div class="col responsive-cards-product-col">
                  <div class="thumb-latest-blog text-center transation hover-img-zoom mb-3">
                      <div class="post-image overflow-hidden">
                          <a href="{{ route('front.blogshow',$blog->slug) }}">
                              <img src="{{ asset('assets/images/blogs/'.$blog->photo) }}" alt="Image not found!">
                          </a>
  
                      </div>
                      <div class="post-content">
                          <h3><a href="{{ route('front.blogshow',$blog->slug) }}"
                                  class="transation text-dark hover-text-primary d-table my-10 mx-sm-auto">{{
                                  mb_strlen($blog->title,'UTF-8') > 200 ?
                                  mb_substr($blog->title,0,200,'UTF-8')."...":$blog->title }}</a></h3>
                          <div class="post-meta font-small text-uppercase list-color-general my-3">
                              <p class="post-date">{{ date('d M, Y',strtotime($blog->created_at)) }}</p>
                          </div>
                          <a href="{{ route('front.blogshow',$blog->slug) }}" class="btn-link-left-line">{{ __('Read
                              More') }}</a>
                      </div>
                  </div>
              </div>
              @endforeach
          </div>
      </div>
  </div>
  <!--==================== Our Blog Section End ====================-->
  @endif
  
  @includeIf('partials.global.common-footer')
  
  
  <script>
      document.querySelectorAll('.load-more').forEach(button => {
          button.addEventListener('click', function () {
              const target = document.querySelector(this.dataset.target);
              target.classList.remove('d-none');
              this.style.display = 'none';
          });
      });
  </script>
  
  
  
  <script src="{{ asset('assets/front/js/extraindex.js') }}"></script>
  