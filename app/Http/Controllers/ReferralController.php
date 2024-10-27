<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Referral;
use App\Models\User;

class ReferralController extends Controller
{
   public function list($referralCode)
    {
      
        $users = User::whereNotNull('referral_link')->get();

        return view('referrals.list', ['users' => $users, 'referralCode' => $referralCode]);
    }

}
