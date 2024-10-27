<?php

namespace App\Http\Controllers\User;
use Illuminate\Http\Request;
use App\Models\User;

use App\Http\Controllers\Controller;
use DB;
use App;
use Auth;
use Session;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Mail;
use App\Mail\MessageMail;

class UserBaseController extends Controller
{
    
     public function submitTicket(Request $request)
    {
        $request->validate([
            'subject' => 'required|string|max:191',
            'message' => 'required|string',
        ]);

        $user_id = Auth::id();

        DB::table('admin_user_conversations')->insert([
            'subject' => $request->subject,
            'user_id' => $user_id,
            'message' => $request->message,
            'type' => 'Ticket',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect()->back()->with('success', 'تم إرسال التذكرة بنجاح.');
    }
    public function sendMessage(Request $request)
    {
        // التحقق من صحة البيانات
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'message' => 'required|string',
        ]);

        $sent_user = Auth::id();
 $senderName = auth()->user()->name;
        $recipient = User::where('email', $request->email)->first();

        $conversation_id = DB::table('messages')
            ->where('sent_user', $sent_user)
            ->count() + 1;

        DB::table('messages')->insert([
            'conversation_id' => $conversation_id,
            'message' => $request->message,
            'sent_user' => $sent_user,
            'recieved_user' => $recipient->id,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
                    Mail::to($recipient->email)->send(new MessageMail($request->message, $senderName));


        // إعادة التوجيه مع رسالة نجاح
        return redirect()->back()->with('success', 'تم إرسال الرسالة بنجاح.');
    }
    
    protected $gs;
    protected $curr;
    protected $language_id;
    protected $user;

    public function __construct()
    {
        $routeName = Route::currentRouteName();
        
        if (!in_array($routeName, [
            'user-packages',"user-vendor-request"
        ])) {
            
            $this->middleware('auth');
        }

        // Set Global GeneralSettings
        $this->gs = DB::table('generalsettings')->find(1);

        $this->middleware(function ($request, $next) {

        // Set Global Users
        $this->user = Auth::user();

            // Set Global Language

            if (Session::has('language')) 
            {
                $this->language = DB::table('languages')->find(Session::get('language'));
            }
            else
            {
                $this->language = DB::table('languages')->where('is_default','=',1)->first();
            }  
            view()->share('langg', $this->language);
            App::setlocale($this->language->name);
    
            // Set Global Currency
    
            if (Session::has('currency')) {
                $this->curr = DB::table('currencies')->find(Session::get('currency'));
            }
            else {
                $this->curr = DB::table('currencies')->where('is_default','=',1)->first();
            }
    
            return $next($request);
        });
    }

}
