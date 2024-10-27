<?php

namespace App\Http\Controllers\User;

use App\Models\FavoriteSeller;
use App\Models\Order;
use App\Models\PaymentGateway;
use App\Models\Subscription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Validator;

class UserController extends UserBaseController
{



    public function index()
    {
        $data['user'] = $this->user;
        $data['subs'] = Subscription::all();
        return view('user.dashboard', $data);
    }



    public function profile()
    {
        $user = $this->user;
        return view('user.profile', compact('user'));
    }

    public function profileupdate1(Request $request)
{
    // --- Validation Section
    $rules = [
        'photo' => 'mimes:jpeg,jpg,png,svg|max:2048', // تحقق من نوع وحجم الصورة
        'email' => 'required|email|unique:users,email,' . $this->user->id, // تحقق من البريد الإلكتروني
        'name' => 'required|string|max:255' // تحقق من الاسم
    ];

    $validator = Validator::make($request->all(), $rules);

    // إذا كان هناك أخطاء في التحقق
    if ($validator->fails()) {
        return response()->json(['errors' => $validator->getMessageBag()->toArray()], 422);
    }

    // استلام البيانات
    $input = $request->all();
    $data = $this->user;

    // معالجة الصورة إذا كانت موجودة
    if ($file = $request->file('photo')) {
        $extensions = ['jpeg', 'jpg', 'png', 'svg'];

        // التحقق من صيغة الصورة
        if (!in_array($file->getClientOriginalExtension(), $extensions)) {
            return response()->json(['errors' => ['Image format not supported']], 422);
        }

        // تعيين اسم جديد للصورة
        $name = time() . '_' . $file->getClientOriginalName();

        // نقل الصورة إلى المسار المحدد
        $file->move(public_path('assets/images/users/'), $name);

        // حذف الصورة القديمة إذا كانت موجودة
        if ($data->photo && file_exists(public_path('assets/images/users/' . $data->photo))) {
            unlink(public_path('assets/images/users/' . $data->photo));
        }

        // تحديث اسم الصورة في المدخلات
        $input['photo'] = $name;
    }

    // تحديث البيانات في قاعدة البيانات
    $data->update($input);

    // رسالة النجاح
    $msg = __('Successfully updated your profile');
    return response()->json(['message' => $msg], 200);
}

        public function profileupdate(Request $request)
        {
            //--- Validation Section

            $rules =
                [
                'photo' => 'mimes:jpeg,jpg,png,svg',
                'email' => 'unique:users,email,' . $this->user->id,
            ];

            $validator = Validator::make($request->all(), $rules);

            if ($validator->fails()) {
                return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
            }
            //--- Validation Section Ends
            $input = $request->all();
            $data = $this->user;
            if ($file = $request->file('photo')) {
                $extensions = ['jpeg', 'jpg', 'png', 'svg'];
                if (!in_array($file->getClientOriginalExtension(), $extensions)) {
                    return response()->json(array('errors' => ['Image format not supported']));
                }

                $name = \PriceHelper::ImageCreateName($file);
                $file->move('assets/images/users/', $name);
                if ($data->photo != null) {
                    if (file_exists(public_path() . '/assets/images/users/' . $data->photo)) {
                        unlink(public_path() . '/assets/images/users/' . $data->photo);
                    }
                }
                $input['photo'] = $name;
            }
            $data->update($input);
            $msg = __('Successfully updated your profile');
            return response()->json($msg);
        }

    public function resetform()
    {
        return view('user.reset');
    }

    public function reset(Request $request)
    {
        $user = $this->user;
        if ($request->cpass) {
            if (Hash::check($request->cpass, $user->password)) {
                if ($request->newpass == $request->renewpass) {
                    $input['password'] = Hash::make($request->newpass);
                } else {
                    return response()->json(array('errors' => [0 => __('Confirm password does not match.')]));
                }
            } else {
                return response()->json(array('errors' => [0 => __('Current password Does not match.')]));
            }
        }
        $user->update($input);
        $msg = __('Successfully changed your password');
        return response()->json($msg);
    }

    public function loadpayment($slug1, $slug2)
    {
        $data['payment'] = $slug1;
        $data['pay_id'] = $slug2;
        $data['gateway'] = '';
        if ($data['pay_id'] != 0) {
            $data['gateway'] = PaymentGateway::findOrFail($data['pay_id']);
        }
        return view('load.payment-user', $data);
    }

    public function favorite($id1, $id2)
    {
        $fav = new FavoriteSeller();
        $fav->user_id = $id1;
        $fav->vendor_id = $id2;
        $fav->save();
        $data['icon'] = '<i class="icofont-check"></i>';
        $data['text'] = __('Favorite');
        return response()->json($data);
    }

    public function favorites()
    {
        $user = $this->user;
        $favorites = FavoriteSeller::where('user_id', '=', $user->id)->get();
        return view('user.favorite', compact('user', 'favorites'));
    }

    public function favdelete($id)
    {
        $wish = FavoriteSeller::findOrFail($id);
        $wish->delete();
        return redirect()->route('user-favorites')->with('success', __('Successfully Removed The Seller.'));
    }

    public function affilate_code()
    {
        $user = $this->user;
        return view('user.affilate.affilate-program', compact('user'));
    }

    public function affilate_history()
    {
        $user = $this->user;
        $affilates = Order::where('status', '=', 'completed')->where('affilate_users', '!=', null)->get();
        $final_affilate_users = array();
        $i = 0;
        foreach ($affilates as $order) {
            $affilate_users = json_decode($order->affilate_users, true);
            foreach ($affilate_users as $key => $auser) {
                if ($auser['user_id'] == $user->id) {
                    $final_affilate_users[$i]['customer_name'] = $order->customer_name;
                    $final_affilate_users[$i]['product_id'] = $auser['product_id'];
                    $final_affilate_users[$i]['charge'] = \PriceHelper::showOrderCurrencyPrice(($auser['charge'] * $order->currency_value), $order->currency_sign);

                    $i++;
                }
            }
        }
        return view('user.affilate.affilate-history', compact('user', 'final_affilate_users'));
    }

}

