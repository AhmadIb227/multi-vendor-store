<?php

namespace App\Http\Controllers\Api\User;
use Illuminate\Support\Facades\DB; 
use App\Http\Controllers\Controller;

use App\Http\Resources\UserResource;
use App\Models\FavoriteSeller;
use App\Models\Product;
use App\Models\User;use Auth;
use App\Models\AboutUs;
use App\Models\Order; 

use Hash;
use Illuminate\Http\Request;
use Validator;

class ProfileController extends Controller
{ 
    public function getordervendernumber($order_number)
    {
       $orders = DB::table('orders')
        ->where('order_number', $order_number)
        ->get([
            'user_id',
            'customer_name',
            'customer_email',
            'customer_phone',
            'customer_address',
            'customer_country',
            'shipping_country',
            'tax_location',
            'customer_state',
            'customer_city',
            'cart',
            'totalQty',
            'pay_amount',
            'tax',
            'shipping_cost',
            'packing_cost',
            'order_note',
            'currency_sign',
            'currency_name',
            'currency_value',
            'txnid',
            'method',
            'pickup_location',
            'order_number',
            'shipping_title',
            'packing_title',
        ]);

        if ($orders->isEmpty()) {
            return response()->json(['message' => 'No orders found'], 404);
        }
    
        return response()->json($orders);
    }
    public function getordervender($user_id)
    {
        $orders = DB::table('orders')
            ->where('user_id', $user_id)
            ->get([
                'user_id',
                'customer_name',
                'customer_email',
                'customer_phone',
                'customer_address',
                'customer_country',
                'shipping_country',
                'tax_location',
                'customer_state',
                'customer_city',
                'cart',
                'totalQty',
                'pay_amount',
                'tax',
                'shipping_cost',
                'packing_cost',
                'order_note',
                'currency_sign',
                'currency_name',
                'currency_value',
                'txnid',
                'method',
                'pickup_location',
                'order_number',
                'shipping_title',
                'packing_title',
            ]);

        if ($orders->isEmpty()) {
            return response()->json(['message' => 'No orders found'], 404);
        }

        return response()->json($orders);
    }


     public function createOrder( Request $request)
    {
        $validatedData = $request->validate([
            'user_id' => 'integer',
            'cart' => 'string',
            'method' => 'string|max:255',
            'shipping' => 'nullable|string|max:255',
            'pickup_location' => 'nullable|string|max:255',
            'totalQty' => 'string|max:191',
            'pay_amount' => 'numeric',
            'txnid' => 'nullable|string|max:255',
            'charge_id' => 'nullable|string|max:255',
            'order_number' => 'string|max:255',
            'payment_status' => 'string|max:255',
            'customer_name' => 'nullable|string|max:255',
            'customer_email' => 'nullable|string|max:255',
            'customer_phone' => 'nullable|string|max:255',
            'customer_address' => 'nullable|string|max:255',
            'customer_city' => 'nullable|string|max:255',
            'customer_zip' => 'nullable|string|max:255',
            'customer_state' => 'nullable|string|max:191',
            'customer_country' => 'nullable|string|max:191',
            'shipping_name' => 'nullable|string|max:255',
            'shipping_email' => 'nullable|string|max:255',
            'shipping_phone' => 'nullable|string|max:255',
            'shipping_address' => 'nullable|string|max:255',
            'shipping_city' => 'nullable|string|max:255',
            'shipping_zip' => 'nullable|string|max:255',
            'shipping_state' => 'nullable|string|max:191',
            'shipping_country' => 'nullable|string|max:191',
            'order_note' => 'nullable|string',
            'coupon_code' => 'nullable|string|max:191',
            'coupon_discount' => 'nullable|string|max:191',
            'status' => 'string|in:pending,processing,completed,declined,on delivery',
            'affilate_user' => 'nullable|string|max:191',
            'affilate_charge' => 'nullable|string|max:191',
            'currency_sign' => 'nullable|string|max:10',
            'currency_name' => 'nullable|string|max:10',
            'currency_value' => 'nullable|numeric',
            'shipping_cost' => 'nullable|numeric',
            'packing_cost' => 'nullable|numeric',
            'tax' => 'nullable|numeric',
            'tax_location' => 'nullable|string|max:191',
            'dp' => 'nullable|boolean',
            'pay_id' => 'nullable|string',
            'vendor_shipping_id' => 'nullable|string',
            'vendor_packing_id' => 'nullable|string',
            'wallet_price' => 'nullable|numeric',
            'shipping_title' => 'nullable|string',
            'packing_title' => 'nullable|string',
            'affilate_users' => 'nullable|string',
            'commission' => 'nullable|numeric',
            'is_shipping' => 'nullable|boolean',
            'vendor_ids' => 'nullable|string',
        ]);

        $order = Order::create($validatedData);

        return response()->json([
            'message' => 'Order created successfully',
            'order' => $order
        ], 201);
    }
    
   public function createabout(Request $request)
    {
        // التحقق من المدخلات
        $validatedData = $request->validate([
            'user_id' => 'required|integer',
            'title_en' => 'required|string|max:255',
            'title_ar' => 'required|string|max:255',
            'title_kr' => 'required|string|max:255',
            'description_en' => 'required|string',
            'description_ar' => 'required|string',
            'description_kr' => 'required|string',
        ]);

        // إنشاء سجل جديد في AboutUs
        $aboutUs = AboutUs::create($validatedData);

        // الرد على الطلب بـ JSON
        return response()->json([
            'message' => 'تم إضافة المعلومات بنجاح',
            'about_us' => $aboutUs
        ], 201);
    }
    public function updateUserColor($user_id, $background_color)
    {
        if (!User::where('id', $user_id)->exists()) {
            return response()->json(['message' => 'User not found!'], 404);
        }

        $user = User::find($user_id);
        $user->background_color = '#' . $background_color; // إضافة علامة # إذا لم تكن موجودة
        $user->save();

        return response()->json(['message' => 'Color updated successfully!'], 200);
    }


    public function getreferral($user_id)
    {
         $user = User::find($user_id);

        if (!$user) {
            return response()->json(['message' => 'User not found'], 404);
        }

        $data = [
            'points_user' => $user->points_user,
            'points_vendor' => $user->points_vendor,
            'referral_link' => $user->referral_link,
        ];

        return response()->json($data);
        
    }
    
    public function dashboard()
    {
        try {
            $user = Auth::guard('api')->user();
            $data['user'] = $user;
            $data['affilate_income'] = Product::vendorConvertPrice($user->affilate_income);
            $data['current_balance'] = Product::vendorConvertPrice($user->current_balance);
            $data['completed_orders'] = (string) Auth::user()->orders()->where('status', 'completed')->count();
            $data['pending_orders'] = (string) Auth::user()->orders()->where('status', 'pending')->count();
            $data['recent_orders'] = (string) Auth::user()->orders()->latest()->take(5)->get();
            return response()->json(['status' => true, 'data' => $data, 'error' => []]);
        } catch (\Exception $e) {
            return response()->json(['status' => true, 'data' => [], 'error' => $e->getMessage()]);
        }
    }

    public function update(Request $request)
    {
        try {
            //--- Validation Section

            $rules =
                [
                'name' => 'required',
                'email' => 'required|email|unique:users,email,' . auth()->user()->id,
                'phone' => 'required',
                'Phone Number2' => 'required',
                'city' => 'required',
                'country' => 'required',
                'address' => 'required',
                'photo' => 'mimes:jpeg,jpg,png,svg',

            ];

            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return response()->json(['status' => false, 'data' => [], 'error' => $validator->errors()]);
            }

            //--- Validation Section Ends
            $input = $request->all();
            $data = auth()->user();
            if ($file = $request->file('photo')) {
                $name = time() . $file->getClientOriginalName();
                $file->move('assets/images/users/', $name);
                if ($data->photo != null) {
                    if (file_exists(public_path() . '/assets/images/users/' . $data->photo)) {
                        unlink(public_path() . '/assets/images/users/' . $data->photo);
                    }
                }
                $input['photo'] = $name;
            }

            if ($request->shop_name) {
                unset($input['shop_name']);
            }

            if ($request->balance) {
                unset($input['balance']);
            }

            if ($request->is_vendor) {
                unset($input['is_vendor']);
            }

            if ($request->email) {
                unset($input['email']);
            }

            if ($request->ban) {
                unset($input['ban']);
            }

            if ($request->mail_sent) {
                unset($input['mail_sent']);
            }

            if ($request->date) {
                unset($input['date']);
            }

            if ($request->current_balance) {
                unset($input['current_balance']);
            }

            $data->update($input);

            return response()->json(['status' => true, 'data' => new UserResource($data), 'error' => []]);
        } catch (\Exception $e) {
            return response()->json(['status' => true, 'data' => [], 'error' => ['message' => $e->getMessage()]]);
        }
    }

    public function updatePassword(Request $request)
    {

        $rules =
            [
            'current_password' => 'required',
            'new_password' => 'required',
            'renew_password' => 'required',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return response()->json(['status' => false, 'data' => [], 'error' => $validator->errors()]);
        }

        try {
            $user = auth()->user();
            if (Hash::check($request->current_password, $user->password)) {
                if ($request->new_password == $request->renew_password) {
                    $input['password'] = Hash::make($request->new_password);
                } else {
                    return response()->json(['status' => true, 'data' => [], 'error' => ['message' => 'Confirm password does not match.']]);
                }
            } else {
                return response()->json(['status' => true, 'data' => [], 'error' => ['message' => 'Current password Does not match.']]);
            }
            $user->update($input);
            return response()->json(['status' => true, 'data' => ['message' => 'Successfully changed your password.'], 'error' => []]);
        } catch (\Exception $e) {
            return response()->json(['status' => true, 'data' => [], 'error' => $e->getMessage()]);
        }
    }

    public function favorite(Request $request)
    {
        try {
            $input = $request->all();
            $user = Auth::guard('api')->user();
            $ck = FavoriteSeller::where('user_id', $user->id)->where('vendor_id', $input['vendor_id'])->exists();
            if (!$ck) {
                $fav = new FavoriteSeller();
                $fav->user_id = $user->id;
                $fav->vendor_id = $input['vendor_id'];
                $fav->save();
                return response()->json(['status' => true, 'data' => ['message' => 'Successfully Added To Favorite Seller.'], 'error' => []]);
            } else {
                return response()->json(['status' => true, 'data' => [], 'error' => ['message' => 'Added To Favorite Already.']]);
            }

        } catch (\Exception $e) {
            return response()->json(['status' => true, 'data' => [], 'error' => $e->getMessage()]);
        }
    }

    public function favorites()
    {

        try {
            $user = Auth::guard('api')->user();
            $favorites = FavoriteSeller::where('user_id', '=', $user->id)->get();
            $vendors = array();
            foreach ($favorites as $key => $favorite) {
                $seller = User::find($favorite->vendor_id);
                if ($seller) {
                    $vendors[$key]['id'] = $favorite->id;
                    $vendors[$key]['shop_id'] = $seller->id;
                    $vendors[$key]['shop_name'] = $seller->shop_name;
                    $vendors[$key]['owner_name'] = $seller->owner_name;
                    $vendors[$key]['shop_address'] = $seller->shop_address;
                    $vendors[$key]['shop_link'] = route('front.vendor', str_replace(' ', '-', ($seller->shop_name)));
                }
            }
            return response()->json(['status' => true, 'data' => $vendors, 'error' => []]);
        } catch (\Exception $e) {
            return response()->json(['status' => true, 'data' => [], 'error' => $e->getMessage()]);
        }
    }

    public function favdelete($id)
    {
        try {
            $wish = FavoriteSeller::find($id);
            $wish->delete();
            return response()->json(['status' => true, 'data' => ['message' => 'Successfully Removed The Seller.'], 'error' => []]);
        } catch (\Exception $e) {
            return response()->json(['status' => true, 'data' => [], 'error' => $e->getMessage()]);
        }
    }
  
}
