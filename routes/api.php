<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Vendor\ProductController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
use App\Http\Controllers\Api\PaymentGatewayApiController;
use App\Http\Controllers\Api\User\ProfileController;






Route::get('/getordernumber/{order_number}', 'Api\User\ProfileController@getordervendernumber');

Route::get('/getorder/{user_id}', 'Api\User\ProfileController@getordervender');

Route::post('/createorder','Api\User\ProfileController@createOrder');


Route::post('/about', 'Api\User\ProfileController@createabout');

Route::get('/products/catalog/datatables/{userId}', [ProductController::class, 'getcatalogdatatables'])->name('admin-vendor-catalog-datatables');

Route::PATCH('/updatsuser/{user_id}/{background_color}', 'Api\User\ProfileController@updateUserColor');

Route::get('/getreferral/{user_id}', 'Api\User\ProfileController@getreferral');
Route::get('/getgetway','Api\Payment\AuthorizeController@apiIndex');

Route::group(['prefix' => 'user'], function () {
  
    Route::post('registration', 'Api\Auth\AuthController@register');    
    Route::post('login', 'Api\Auth\AuthController@login');
    Route::post('logout', 'Api\Auth\AuthController@logout');
    Route::post('forgot', 'Api\Auth\AuthController@forgot');
    Route::post('forgot/submit', 'Api\Auth\AuthController@forgot_submit');
    Route::post('social/login', 'Api\Auth\AuthController@social_login');
    Route::post('refresh/token', 'Api\Auth\AuthController@refresh');
    Route::get('details', 'Api\Auth\AuthController@details');
    
    Route::group(['middleware' => 'auth:api'], function () {


    
                //------------------------ api flutter vendor  ---------------------------
        Route::delete('/products/api-delete/{id}', 'Vendor\ProductController@api_destroy');
        Route::get('/api-catigory', 'Vendor\ProductController@api_category');
        Route::get('/api-subcatigory/{id}', 'Vendor\ProductController@api_subcatigory');
        Route::get('/api-childcatigory/{id}', 'Vendor\ProductController@api_childcatigory');
        Route::get('/product/{id}', 'Vendor\ProductController@Api_product');
        
        Route::post('/products/api-store', 'Vendor\ProductController@Api_Store')->name('vendor-prod-api-store');
        Route::post('/products/api-edit/{id}', 'Vendor\ProductController@Api_Edit');
        Route::get('/api-dashboard', 'Vendor\VendorController@api_index');
        Route::get('/api-delivery/datatables', 'Vendor\DeliveryController@api_datatables')->name('vendor-delivery-order-datatables');
        Route::post('/api-profile', 'Vendor\VendorController@api_profileupdate')->name('vendor-profile-update');
        Route::get('/api-withdraw', 'Vendor\WithdrawController@api_index');
        
        
        Route::post('/social-link-api/create','Vendor\SocialLinkController@api_store')->name('vendor-sociallink-api-store');
        Route::get('/social-link-api/user/social-links','Vendor\SocialLinkController@api_index');
        Route::post('/social-link-api/update/{id}','Vendor\SocialLinkController@api_update');
        Route::delete('/social-link-api/delete/{id}','Vendor\SocialLinkController@api_delete');


        Route::post('/pickup-point-api/create','Vendor\PickupPointController@api_store');
        Route::delete('/pickup-point-api/delete/{id}','Vendor\PickupPointController@api_destroy');
        Route::post('/pickup-point-api/update/{id}','Vendor\PickupPointController@api_update');
        Route::get('/pickup-point-api/pickup-point','Vendor\PickupPointController@api_index');

        Route::delete('/package-api/delete/{id}','Vendor\PackageController@api_destroy');
        Route::post('/package-api/update/{id}','Vendor\PackageController@api_update');
        Route::post('/package-api/create','Vendor\PackageController@api_store');
        Route::get('/package-api/package','Vendor\PackageController@api_index');

        Route::get('/shipping-api/shipping','Vendor\ShippingController@api_index');
        Route::post('/shipping-api/shipping/create','Vendor\ShippingController@api_store');
        Route::post('/shipping-api/shipping/update/{id}','Vendor\ShippingController@api_update');
        Route::delete('/shipping-api/shipping/delete/{id}','Vendor\ShippingController@api_destroy');

        Route::post('/import-submit','Vendor\ProductController@api_importSubmit');

        Route::post('/withdraw-api/withdraw/create','Vendor\WithdrawController@api_store');

        Route::get('/order-api/order','Vendor\OrderController@api_orders');

        Route::get('/income-api/income','Vendor\IncomeController@api_index');

        //------------------------ api flutter vendor  end---------------------------

        // --------------------- USER DASHBOARD ---------------------
        
        Route::get('/dashboard', 'Api\User\ProfileController@dashboard');

        // --------------------- USER DASHBOARD ENDS ---------------------


        // --------------------- USER PROFILE ---------------------https://ealanatek.site/api/user/order-api/order

        Route::post('/profile/update', 'Api\User\ProfileController@update');
        // Route::post('/profile/update', 'Api\User\ProfileController@update');
        // Route::post('/profile/update', 'User\UserController@profileupdate');
        Route::post('/password/update', 'Api\User\ProfileController@updatePassword');

        // --------------------- USER PROFILE ENDS ---------------------

        // --------------------- USER FAVORITE ---------------------

        Route::get('/favorite/vendors', 'Api\User\ProfileController@favorites');
        Route::post('/favorite/store', 'Api\User\ProfileController@favorite');
        Route::get('/favorite/delete/{id}', 'Api\User\ProfileController@favdelete');

        // --------------------- USER FAVORITE ENDS ---------------------


        // --------------------- TICKET & DISPUTE ---------------------

        Route::get('/tickets', 'Api\User\TicketDisputeController@tickets');
        Route::get('/disputes', 'Api\User\TicketDisputeController@disputes');
        Route::post('/ticket-dispute/store', 'Api\User\TicketDisputeController@store');
        Route::get('/ticket-dispute/{id}/delete', 'Api\User\TicketDisputeController@delete');
        Route::post('/ticket-dispute/message/store', 'Api\User\TicketDisputeController@messageStore');

        // --------------------- TICKET & DISPUTE ENDS ---------------------

        // ---------------------MESSAGE CONTROLLER ---------------------

        Route::post('/message/store', 'Api\User\MessageController@usercontact');
        Route::post('/message/post', 'Api\User\MessageController@postmessage');
        Route::get('/messages', 'Api\User\MessageController@messages');
        Route::get('/message/{id}/delete', 'Api\User\MessageController@messagedelete');

        // ---------------------MESSAGE CONTROLLER ENDS ---------------------


        // ---------------------PRODUCT CONTROLLER ---------------------

        Route::post('/reviewsubmit', 'Api\User\ProductController@reviewsubmit');
        Route::post('/commentstore', 'Api\User\ProductController@commentstore');
        Route::post('/commentupdate', 'Api\User\ProductController@commentupdate');
        Route::post('/replystore', 'Api\User\ProductController@replystore');
        Route::post('/replyupdate', 'Api\User\ProductController@replyupdate');
        Route::post('/reportstore', 'Api\User\ProductController@reportstore');
        Route::get('/comment/{id}/delete', 'Api\User\ProductController@commentdelete');
        Route::get('/reply/{id}/delete', 'Api\User\ProductController@replydelete');

        // ---------------------PRODUCT CONTROLLER ENDS ---------------------

        // ---------------------ORDER CONTROLLER ---------------------

        Route::get('/orders', 'Api\User\OrderController@orders')->name('orders');
        Route::get('/order/{id}/details', 'Api\User\OrderController@order')->name('order');
        Route::post('/update/transactionid', 'Api\User\OrderController@updateTransaction');

        // ---------------------ORDER CONTROLLER ENDS ---------------------

        // ---------------------WITHDRAW CONTROLLER ---------------------

        Route::get('/withdraws', 'Api\User\WithdrawController@index');
        Route::get('/withdraw/methods/field', 'Api\User\WithdrawController@methods_field');
        Route::post('/withdraw/create', 'Api\User\WithdrawController@store');

        // ---------------------WITHDRAW CONTROLLER ENDS ---------------------
        
        
        // ---------------------WISHLIST CONTROLLER ---------------------

        Route::get('/wishlists','Api\User\WishlistController@wishlists');
        Route::post('/wishlist/add','Api\User\WishlistController@addwish');
        Route::get('/wishlist/remove/{id}','Api\User\WishlistController@removewish');

        // ---------------------WISHLIST CONTROLLER ---------------------        
        
        
         // ---------------------REWORD CONTROLLER ---------------------  
       Route::get('/reword/get', 'Api\User\WithdrawController@getReword');
       Route::post('/reword/store', 'Api\User\WithdrawController@convertSubmit');
          
     // ---------------------REWORD CONTROLLER ---------------------  
        // ---------------------PACKAGE CONTROLLER ---------------------

        Route::get('/packages', 'Api\User\PackageController@packages');
        Route::get('/package/details', 'Api\User\PackageController@packageDetails');
        Route::post('/package/store', 'Api\User\PackageController@store');

        // ---------------------PACKAGE CONTROLLER ENDS ---------------------

          // ---------------------DEPOSIT CONTROLLER ---------------------

          Route::get('/deposits', 'Api\User\DepositController@deposits');
          Route::post('/deposit/store', 'Api\User\DepositController@store');
          Route::get('/transactions', 'Api\User\DepositController@transactions');
          Route::get('/transaction/details', 'Api\User\DepositController@transactionDetails');
  
          // ---------------------DEPOSIT CONTROLLER ENDS ---------------------
  

    });

});


Route::group(['prefix' => 'front'], function () {

    //------------ Frontend Controller ------------
    Route::get('/section-customization', 'Api\Front\FrontendController@section_customization');
    Route::get('/sliders', 'Api\Front\FrontendController@sliders');
    Route::get('/default/language', 'Api\Front\FrontendController@defaultLanguage');
    Route::get('/language/{id}', 'Api\Front\FrontendController@language');
    Route::get('/languages', 'Api\Front\FrontendController@languages');
    Route::get('/default/currency', 'Api\Front\FrontendController@defaultCurrency');
    Route::get('/currency/{id}', 'Api\Front\FrontendController@currency');
    Route::get('/currencies', 'Api\Front\FrontendController@currencies');
    Route::get('/deal-of-day', 'Api\Front\FrontendController@deal');
    Route::get('/arrival', 'Api\Front\FrontendController@arrival');
    Route::get('/arrival', 'Api\Front\FrontendController@arrival');

    Route::get('/services', 'Api\Front\FrontendController@services');
    Route::get('/banners', 'Api\Front\FrontendController@banners');
    Route::get('/partners', 'Api\Front\FrontendController@partners');
    Route::get('/products', 'Api\Front\FrontendController@products');
    Route::get('/vendor/products/{id}', 'Api\Front\FrontendController@vendor_products');
    Route::get('/settings', 'Api\Front\FrontendController@settings');
    Route::get('/faqs', 'Api\Front\FrontendController@faqs');
    Route::get('/blogs', 'Api\Front\FrontendController@blogs');
    Route::get('/pages', 'Api\Front\FrontendController@pages');
    Route::get('/ordertrack','Api\Front\FrontendController@ordertrack');
    Route::post('/contactmail', 'Api\Front\FrontendController@contactmail');

    //------------ Frontend Controller Ends ------------

    //------------ Search Controller ------------

    Route::get('/search','Api\Front\SearchController@search');
    Route::get('/categories', 'Api\Front\SearchController@categories');
    Route::get('/category/product/search', 'Api\Front\SearchController@categoriesSearch');
    Route::get('{id}/category', 'Api\Front\SearchController@category');
    Route::get('/{id}/subcategories', 'Api\Front\SearchController@subcategories')->name('subcategories');
    Route::get('/{id}/childcategories', 'Api\Front\SearchController@childcategories')->name('childcategories');
    Route::get('/attributes/{id}', 'Api\Front\SearchController@attributes')->name('attibutes');
    Route::get('/attributeoptions/{id}', 'Api\Front\SearchController@attributeoptions')->name('attibute.options');

    //------------ Search Controller Ends ------------

    //------------ Product Controller ------------

    Route::get('/product/{id}/details', 'Api\Front\ProductController@productDetails');
    Route::get('/product/{id}/ratings', 'Api\Front\ProductController@ratings');
    Route::get('/product/{id}/comments', 'Api\Front\ProductController@comments');
    Route::get('/product/{id}/replies', 'Api\Front\ProductController@replies');

    //------------ Product Controller Ends ------------

    //------------ Vendor Controller ------------

    Route::get('/store/{shop_name}','Api\Front\VendorController@index')->name('front.vendor');
    Route::post('/store/contact','Api\Front\VendorController@vendorcontact');

    //------------ Vendor Controller ------------

    //------------ Checkout Controller ------------

    Route::post('/checkout','Api\Front\CheckoutController@checkout');
   
    Route::get('/get-shipping-packaging','Api\Front\CheckoutController@getShippingPackaging');
    Route::get('/vendor/wise/shipping-packaging','Api\Front\CheckoutController@VendorWisegetShippingPackaging');
    Route::get('/order/details','Api\Front\CheckoutController@orderDetails');
    Route::get('/get/coupon-code','Api\Front\CheckoutController@getCoupon');
    Route::post('/checkout/update/{id}','Api\Front\CheckoutController@update');
    Route::get('/checkout/delete/{id}','Api\Front\CheckoutController@delete');
    Route::get('/get/countries','Api\Front\CheckoutController@countries');
    //------------ Checkout Controller ------------
        Route::get('/catigory/products/{id}', 'Api\Front\FrontendController@catigoryproducts');
});

Route::fallback(function () {
    return response()->json(['status' => false, 'data' => [], 'error' => ['message' => 'Not Found!']], 404);
});
