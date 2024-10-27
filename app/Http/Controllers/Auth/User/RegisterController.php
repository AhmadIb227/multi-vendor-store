<?php

namespace App\Http\Controllers\Auth\User;
use Illuminate\Support\Str;
use App\{
	Models\User,
	Models\Notification,
	Classes\MasMailer,
	Models\Generalsetting,
	Http\Controllers\Controller
};
use App\Models\Referral;
use App\Models\Subscription;
use App\Models\UserSubscription;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Validator;

class RegisterController extends Controller
{
    protected $curr;
	public function showRegistrationForm(Request $request)
    {
        if ($request->has('referral_code')) {
            session(['referral_code' => $request->input('referral_code')]);
        }
		// Log::info('Referral Code in session: ' . session('referral_code'));
        return view('auth.register');
      }
      
      
      // Controller method
public function showPage($slug)
{
    $page = Page::find(1); // يمكنك تعديل هذا الرقم بناءً على الصفحة المطلوبة
    return view('frontend.vendor-register', ['page' => $page]);
}


    public function register(Request $request)
    {

    	$gs = Generalsetting::findOrFail(1);

    	if($gs->is_capcha == 1)
        {
            $rules = [
                'g-recaptcha-response' => 'required|captcha'
            ];
            $customs = [
                'g-recaptcha-response.required' => "Please verify that you are not a robot.",
                'g-recaptcha-response.captcha' => "Captcha error! try again later or contact site admin..",
            ];
            $validator = Validator::make($request->all(), $rules, $customs);
            if ($validator->fails()) {
              return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
            }
        }

        //--- Validation Section

        $rules = [
		        'email'   => 'required|email|unique:users',
		        'password' => 'required|confirmed' ,
				'gender' => 'required',
				'birthdate' => 'required|date',
                ];
        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends
		    $referralCode = Str::random(10);
            $referralLink = url('/user/vendor-register?referral_code=' . $referralCode);

	        $user = new User;
	        $input = $request->all();
	        $input['password'] = bcrypt($request['password']);
			$input['referral_code'] = $referralCode;
            $input['referral_link'] = $referralLink;
	        $token = md5(time().$request->name.$request->email);
	        $input['verification_link'] = $token;
	        $input['affilate_code'] = md5($request->name.$request->email);
	        $input['shop_address'] = $request->shop_address." - ".$request->customer_city." - ".$request->customer_state." - ".$request->customer_country;
			$input['gender'] = $request->gender;
			$input['birthdate'] = $request->birthdate;
			$user->fill($input)->save();
            // -------------
            DB::table('user_subscriptions')->insert([
                'user_id' => $user->id,
                'subscription_id' => 8,
                'title' => 'Basic',
                'currency_sign' => '$',
                'currency_code' => 'USD',
                'currency_value' => '1',
                'price' => 0,
                'days' => 50,
                'allowed_products' => 10,
                'details' => 'Basic subscription details',
                'method' => 'Free',
                'txnid' => null,
                'charge_id' => null,
                'flutter_id' => null,
                'created_at' => now(),
                'updated_at' => now(),
                'status' => 1,
                'payment_number' => null,
            ]);
            DB::table('shippings')->insert([
                'user_id'=>  $user->id, 
                'title'=>'Default shippings',
                'subtitle'=>'shippings',
                'price'=>0,
            ]);
             DB::table('packages')->insert([
                'user_id'=>  $user->id, 
                'title'=>'Default packages',
                'subtitle'=>'packages',
                'price'=>0,
            ]);
			//  // طباعة كود الإحالة من الحقل المخفي للتحقق
			//  Log::info('Referral Code from session: ' . session('referral_code'));

			$sessionReferralCode = $request->input('referral_code');
			// $sessionReferralCode = session('referral_code');
			// $sessionReferralCode = $request->input('referral_code'); // استخدام الحقل المخفي للحصول على كود الإحالة
        if ($sessionReferralCode) {
            $referrer = User::where('referral_code', $sessionReferralCode)->first();
            if ($referrer) {
                Referral::create([
                    'user_id' => $user->id,
                    'parrent_user_id' => $referrer->id,
                    'referral_code' => $referrer->referral_code,
                    'referral_link' => $referrer->referral_link,
                ]);


					if ($user->is_vendor == 0) {
						$referrer->increment('points_user', 1);
					} else {
						$referrer->increment('points_vendor', 10);
					}
				} else {
					Log::info('No referrer found for referral code: ' . $sessionReferralCode);
				}
			}
	          if(!empty($request->vendor))
	          {
					//--- Validation Section
					$rules = [
						// 'shop_name' => 'users',
						'shop_number'  => 'max:10'
							];
					$customs = [
						'shop_name.unique' => __('This Shop Name has already been taken.'),
						'shop_number.max'  => __('Shop Number Must Be Less Then 10 Digit.')
					];

					$validator = Validator::make($request->all(), $rules, $customs);
					if ($validator->fails()) {
					return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
					}
					$input['is_vendor'] = 2;

			  }

			$user->fill($input)->save();
	        if($gs->is_verification_email == 1)
	        {
	        $to = $request->email;
	        $subject = 'Verify your email address.';
	        $msg = "Dear Customer,<br>We noticed that you need to verify your email address.<br>Simply click the link below to verify. <a href=".url('user/register/verify/'.$token).">".url('user/register/verify/'.$token)."</a>";
	        //Sending Email To Customer

	        $data = [
	            'to' => $to,
	            'subject' => $subject,
	            'body' => $msg,
	        ];

	        $mailer = new MasMailer();
	        $mailer->sendCustomMail($data);


          	return response()->json('We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.');
	        }
	        else {

            $user->email_verified = 'Yes';
            $user->update();
	        $notification = new Notification;
	        $notification->user_id = $user->id;
			$notification->save();

			// Welcome Email For User

			$data = [
				'to' => $user->email,
				'type' => "new_registration",
				'cname' => $user->name,
				'oamount' => "",
				'aname' => "",
				'aemail' => "",
				'onumber' => "",
			];
			$mailer = new MasMailer();
			$mailer->sendAutoMail($data);


            Auth::login($user);
          	return response()->json(1);
	        }

    }

    public function token($token)
    {
        $gs = Generalsetting::findOrFail(1);

        if($gs->is_verification_email == 1)
	    {
			$user = User::where('verification_link','=',$token)->first();
			if(isset($user))
			{
				$user->email_verified = 'Yes';
				$user->update();
				$notification = new Notification;
				$notification->user_id = $user->id;
				$notification->save();

				// Welcome Email For User

				$data = [
					'to' => $user->email,
					'type' => "new_registration",
					'cname' => $user->name,
					'oamount' => "",
					'aname' => "",
					'aemail' => "",
					'onumber' => "",
				];
				$mailer = new MasMailer();
				$mailer->sendAutoMail($data);


				Auth::login($user);
				return redirect()->route('user-packages')->with('success',__('Email Verified Successfully'));
			}
    	}
    	else {
    		return redirect()->back();
    	}
    }
}
