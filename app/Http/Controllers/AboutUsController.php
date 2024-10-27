<?php

namespace App\Http\Controllers;

use App\Models\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use DB;
use App;
use Session;
use App\Models\User;

class AboutUsController extends Controller
{
    protected $gs;
    protected $curr;
    protected $language_id;
    protected $user;

    public function __construct()
    {
        $this->middleware('auth');

      

        $this->gs = DB::table('generalsettings')->find(1);

        $this->middleware(function ($request, $next) {

     

        $this->user = Auth::user();

         
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
    
            $this->curr = DB::table('currencies')->where('is_default','=',1)->first();
            
    
            return $next($request);
        });
    }
    public function create()
    {
       

        return view('admin.vendor.about.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'description_en' => 'required',
            'title_en' => 'required' ,
            'description_ar' => 'required',
            'title_ar' => 'required' ,
            'description_kr' => 'required',
            'title_kr' => 'required' ,
        ]);

        AboutUs::create([
            'user_id' => Auth::id(),
            'description_en' => $request->description_en,
            'description_ar' => $request->description_ar,
            'description_kr' => $request->description_kr,
            'title_en' =>$request->title_en ,
            'title_ar' =>$request->title_ar ,
            'title_kr' =>$request->title_kr ,
        ]);

                return redirect()->back()->with('success', 'تم إضافه هذه المعلومات بنجاح!');

    }
    public function showd($emailw)
    {
         
        $user = User::where('email', $emailw)->first(); 
    
        $usid = $user ? $user->id : null; 
        $latestAbout = AboutUs::where('user_id', $usid)->latest()->first();
    
        return view('admin.vendor.about.show', compact('latestAbout'));
    }
}