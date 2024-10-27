<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{__('Product Filter')}}</title>
    <link rel="stylesheet" href="path/to/your/styles.css">
</head>
<body>
    <div class="products-header d-flex justify-content-between align-items-center py-10 px-20 bg-light md-mt-30"><br>
        <div class="products-header-left d-flex align-items-center">
            <h6 class="woocommerce-products-header__title page-title"><strong>{{ __('Products') }}</strong></h6>
            <div class="woocommerce-result-count"></div> 
        </div>
        <div class="products-header-right" >
            <form class="woocommerce-ordering" id="filter-form" method="get" style="margin-left: 42px;">
                <select name="sort" class="orderby short-item" aria-label="Shop order" id="sortby">
                    <option value="date_desc">{{ __('Latest Product') }}</option>
                    <option value="date_asc">{{ __('Oldest Product') }}</option>
                    <option value="price_asc">{{ __('Lowest Price') }}</option>
                    <option value="price_desc">{{ __('Highest Price') }}</option>
                </select>
                @if($gs->product_page != null)
                <select id="pageby" name="pageby" class="short-itemby-no">
                    @foreach (explode(',', $gs->product_page) as $element)
                    <option value="{{ $element }}">{{ $element }}</option>
                    @endforeach
                </select>
                @else
                <input type="hidden" id="pageby" name="paged" value="{{ $gs->page_count }}">
                <input type="hidden" name="shop-page-layout" value="left-sidebar">
                @endif
            </form>
            <div class="products-view">
                <a class="grid-view check_view" data-shopview="grid-view" href="javascript:;"><i class="flaticon-menu-1 flat-mini"></i></a>
                <a class="list-view check_view" data-shopview="list-view" href="javascript:;"><i class="flaticon-list flat-mini"></i></a>
            </div>
        </div>
    </div>
<br>
    <!-- Placeholder for product results -->
    <div id="products-container">
        <!-- Products will be loaded here -->
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            function loadProducts(sortBy) {
                $.ajax({
                   // يجب تعديل هذا المسار بما يتوافق مع المسار الفعلي لديك
                    type: "GET",
                    data: {
                        sort: sortBy,
                    },
                    success: function(response) {
                        $('#products-container').html(response);
                    },
                    error: function(xhr, status, error) {
                        console.error("Error loading products: " + error);
                    }
                });
            }

            // تحميل المنتجات مع الترتيب الافتراضي
            loadProducts($('#sortby').val());

            // عندما يتم تغيير القائمة، نعيد تحميل المنتجات بناءً على الترتيب المختار
            $('#sortby').on('change', function() {
                var sortBy = $(this).val();
                loadProducts(sortBy);
            });
        });
    </script>
</body>
</html>
