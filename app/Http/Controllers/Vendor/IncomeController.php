<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use App\Models\VendorOrder;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
use App;
use Session;
class IncomeController extends Controller
{
    protected $gs;
    protected $curr;
    protected $language_id;
    protected $user;

    public function __construct()
    {
        $this->middleware('auth');

        // Set Global GeneralSettings

        $this->gs = DB::table('generalsettings')->find(1);

        $this->middleware(function ($request, $next) {

        // Set Global Users

        $this->user = Auth::user();

            // Set Global Language

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

            $this->curr = DB::table('currencies')->where('is_default','=',1)->first();
            
    
            return $next($request);
        });
    }
      public function api_index(Request $request)
    {
        // تحقق من تواريخ البداية والنهاية في الطلب
        if ($request->has('start_date') && $request->has('end_date')) {
            try {
                $start_date = Carbon::parse($request->start_date);
                $end_date = Carbon::parse($request->end_date);
                // تأكد من أن التواريخ صحيحة
                if ($start_date->gt($end_date)) {
                    return response()->json(['errors' => ['Start date cannot be after end date.']], 400);
                }
                $datas = VendorOrder::with('order')
                    ->whereDate('created_at', '>=', $start_date)
                    ->whereDate('created_at', '<=', $end_date)
                    ->where('user_id', Auth::user()->id);
            } catch (\Exception $e) {
                return response()->json(['errors' => ['Invalid date format.']], 400);
            }
        } else {
            // إذا لم يتم توفير التواريخ، قم بجلب جميع الطلبات للمستخدم
            $datas = VendorOrder::with('order')
                ->where('user_id', Auth::user()->id);
        }
    
        // حساب المجموع الإجمالي
        $total = $datas->sum('price');
        $currency_sign = $datas->count() > 0 ? $datas->first()->order->currency_sign : '';
    
        // استرجاع بيانات الطلبات
        $orders = $datas->get();
    
        return response()->json([
            'datas' => $orders,
            'total' => $currency_sign . number_format($total, 2),
            'start_date' => $request->start_date ?? '',
            'end_date' => $request->end_date ?? '',
        ]);
    }
    public function index(Request $request)
    {
       
        $user = Auth::user();

        if($request->start_date && $request->end_date){
            $start_date = Carbon::parse($request->start_date);
            $end_date = Carbon::parse($request->end_date);
            $datas = VendorOrder::with('order')->where('user_id', $user->id)
                        ->whereDate('created_at','>=',$start_date)
                        ->whereDate('created_at','<=',$end_date);
        } else {
            $datas = VendorOrder::with('order')->where('user_id', $user->id);
        }

        return view('vendor.earning',[
            'datas' => $datas->get(),
            'total' => $datas->sum('price'),
            'start_date' => isset($start_date) ? $start_date : '',
            'end_date' => isset($end_date) ? $end_date : '',
            'user' => $user 
        ]);
    }

}
