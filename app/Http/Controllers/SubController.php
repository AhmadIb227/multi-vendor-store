<?php

namespace App\Http\Controllers;

use App\Http\Controllers\User\UserBaseController;
use App\Models\Subcategory;
use App\Models\Subscription;
use Illuminate\Http\Request;

class SubController extends UserBaseController
{
    
    public function package()
    {
        $data['curr'] = $this->curr;
        $data['user'] = $this->user;
        $data['subs'] = Subscription::all();
        $data['package'] = $this->user->subscribes()->where('status',1)->latest('id')->first();
        return view('user.dashboard',$data);
    }

    public function packages()
    {
        $data['curr'] = $this->curr;
        $data['user'] = $this->user;
        $data['subs'] = Subscription::all(); 
        if (Auth::check()) {
            $data['package'] = $this->user->subscribes()->where('status', 1)->latest('id')->first();
    
            if (Auth::user()->isStoreOwner()) {
                return view('user.package.index', $data); 
            } else {
                return view('user.package.index', $data);
            }
        } else {
            $data['package'] = null;
            return view('user.package.index', $data);
        }
    }
    
    


}
