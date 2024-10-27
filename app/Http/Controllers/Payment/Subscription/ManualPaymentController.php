<?php

namespace App\Http\Controllers\Payment\Subscription;

use App\{
    Models\Subscription,
    Classes\MasMailer,
    Models\UserSubscription
};

use Illuminate\Http\Request;

class ManualPaymentController extends SubscriptionBaseController
{
    public function store(Request $request){
        $this->validate($request, [
            'shop_name'   => 'unique:users',
            'txnid' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',

           ],[ 
               'shop_name.unique' => __('This shop name has already been taken.'),
            ]);
        $user = $this->user;

        $subs = Subscription::findOrFail($request->subs_id);
        $input = $request->all();  

        // Handle the image upload
        if ($request->hasFile('txnid')) {
            $image = $request->file('txnid');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images'), $imageName);
        }

        // $input['txnid'] = "images/".$imageName;
        $user->update($input);

        $sub = new UserSubscription;
        $sub->user_id = $user->id;
        $sub->subscription_id = $subs->id;
        $sub->title = $subs->title;
        $sub['currency_sign'] = $this->curr->sign;
        $sub['currency_code'] = $this->curr->name;
        $sub['currency_value'] = $this->curr->value;
        $sub['price'] = $subs->price * $this->curr->value;
        $sub['price'] = $sub['price'] / $this->curr->value;
        $sub->days = $subs->days;
        $sub->allowed_products = $subs->allowed_products;
        $sub->details = $subs->details;
        $sub->method = $request->method;
        $sub->txnid = "images/".$imageName;
        // $sub->txnid = $request->txnid;
        $sub->status = 0;
        $sub->save();

            $data = [
                'to' => $user->email,
                'type' => "vendor_accept",
                'cname' => $user->name,
                'oamount' => "",
                'aname' => "",
                'aemail' => "",
                'onumber' => "",
            ];
            $mailer = new MasMailer();
            $mailer->sendAutoMail($data);        

        return redirect()->route('user-dashboard')->with('success',__('Vendor Account Activated Successfully'));
    }   
}