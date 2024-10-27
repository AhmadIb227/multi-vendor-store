<?php

namespace App\Http\Controllers\Auth\User;

use App\{
    Models\User,
    Models\Notification,
    Models\Socialsetting,
    Models\SocialProvider,
    Http\Controllers\Controller
};
use Auth;
use Config;
use Socialite;

class SocialRegisterController extends Controller
{

    public function __construct()
    {
      $link = Socialsetting::findOrFail(1);
      Config::set('services.google.client_id', $link->gclient_id);
      Config::set('services.google.client_secret', $link->gclient_secret);
      Config::set('services.google.redirect', url('/auth/google/callback'));

      Config::set('services.facebook.client_id', $link->fclient_id);
      Config::set('services.facebook.client_secret', $link->fclient_secret);
      $url = url('/auth/facebook/callback');
      
      $url = preg_replace("/^http:/i", "https:", $url);
      Config::set('services.facebook.redirect', $url);
    }

    public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    public function handleProviderCallback($provider)
    {
        try
        {
            $socialUser = Socialite::driver($provider)->user();
        }
        catch(\Exception $e)
        {
            return redirect('/');
        }

        $socialProvider = SocialProvider::where('provider_id',$socialUser->getId())->first();
        if(!$socialProvider)
        {
            $ck = User::where('email','=',$socialUser->email)->count();
            if($ck > 0)
            {
                $user = User::where('email','=',$socialUser->email)->first();
                Auth::login($user); 
                return redirect()->route('user-dashboard');
            }
            $user = new User;
            $user->email = $socialUser->email;
            $user->name = $socialUser->name;
            $user->photo = $socialUser->avatar_original;
            $user->email_verified = 'Yes';
            $user->is_provider = 1;
            $user->affilate_code = $socialUser->name.$socialUser->email;
            $user->affilate_code = md5($user->affilate_code);
            $user->save();
            $user->socialProviders()->create(
                ['provider_id' => $socialUser->getId(), 'provider' => $provider]
            );
            $notification = new Notification;
            $notification->user_id = $user->id;
            $notification->save();
        }
        else
        {
            
            $user = $socialProvider->user;
        }

        Auth::login($user); 
        return redirect()->route('user-dashboard');

    }
    
    
    
    // ------------------------------------------------------------------------------------------
// public function redirectToFacebook()
// {
//     return Socialite::driver('facebook')->redirect();
    
// }

// public function handleFacebookCallback()
// {
//     try {
//         $user = Socialite::driver('facebook')->user();
//         $finduser = User::where('social_id', $user->id)->first();
    
//         if ($finduser) {
//             Auth::login($finduser);
//             return redirect()->route('user-dashboard');
//         } else {
//             $newUser = User::create([
//                 'name' => $user->name,
//                 'email' => $user->email,
//                 'social_id' => $user->id,
//                 'social_type' => 'facebook',
//                 'email_verified' => 'Yes',
//             ]);
          
//             Auth::login($newUser);
//             return redirect()->route('user-dashboard');
//         }

//     } catch (\Exception $e) {
//         \Log::error('Facebook authentication error: ' . $e->getMessage());
//         return redirect()->route('login')->with('error', 'Authentication failed.');
//     }
// }




// public function redirectToGoogle()
// {
//     return Socialite::driver('google')->redirect();
    
// }


// public function handleGoogleCallback()
// {
//     try {
//         $user = Socialite::driver('google')->user();
//         $finduser = User::where('social_id', $user->id)->first();
    
//         if ($finduser) {
//             Auth::login($finduser);
//             return redirect()->route('user-dashboard');
//         } else {
//             $newUser = User::create([
//                 'name' => $user->name,
//                 'email' => $user->email,
//                 'social_id' => $user->id,
//                 'social_type' => 'google',
//                 'email_verified' => 'Yes',
//             ]);
          
//             Auth::login($newUser);
//             return redirect()->route('user-dashboard');
//         }

//     } catch (\Exception $e) {
//         \Log::error('google authentication error: ' . $e->getMessage());
//         return redirect()->route('login')->with('error', 'Authentication failed.');
//     }
// }






}
