<?php

namespace App\Http\Controllers\Front;

use App\{
  Models\User,
  Models\Message,
  Models\Product,
  Classes\MasMailer,
  Models\Conversation,
  Models\Category
};
use App\Models\Subcategory;
use Illuminate\{
  Http\Request,
  Support\Facades\DB
};
use Illuminate\Support\Facades\Auth;
use Session;
class VendorController extends FrontBaseController
{
  
  public function vendorColorForm()
  {
      $vendor = Auth::user(); 
      return view('admin.vendor.backgroundColor.vendor_color_self', compact('vendor'));
  }
  
  public function updateVendorColor(Request $request)
  {
    
      $request->validate([
          'background_color' => 'required|string|max:7',
      ]);
  
      $user = Auth::user();
      $user->background_color = $request->input('background_color');
      $user->save();
    
    return redirect()->back()->with('success', 'تم اضافه اللون بنجاح !' );

  
  }

  public function index(Request $request, $slug)
  {
      $in_azrar = $request->query('instore', 0);
      $minprice = $request->min;
      $maxprice = $request->max;
      $sort = $request->sort;
      $string = str_replace('-', ' ', $slug);
      $vendor = User::where('shop_name', '=', $string)->first();
      $pageby = $request->pageby;
  
      if (empty($vendor)) {
          $page = DB::table('pages')->where('slug', $slug)->first();
          if (empty($page)) {
              return response()->view('errors.404', [], 404);
          }
          return view('frontend.page', compact('page'));
      }
  
      Session::forget('shop_name');
      Session::forget('shop_id');
      Session::forget('in_azrar');
      Session::put('in_azrar', $in_azrar);
      Session::put('shop_name', $vendor->shop_name);
      Session::put('shop_id', $vendor->id);
  
      $data['vendor'] = $vendor;
      $data['services'] = DB::table('services')->where('user_id', '=', $vendor->id)->get();
  
      $data['latest_products'] = Product::with('user')->whereStatus(1)->whereLatest(1)
          ->get()
          ->reject(function ($item) {
              if ($item->user_id != 0) {
                  if ($item->user->is_vendor != 2) {
                      return true;
                  }
              }
              return false;
          });
  
      $gs = $this->gs;
  
      $prods = Product::when($minprice, function ($query, $minprice) {
          return $query->where('price', '>=', $minprice);
      })
          ->when($maxprice, function ($query, $maxprice) {
              return $query->where('price', '<=', $maxprice);
          })
          ->when($sort, function ($query, $sort) {
              if ($sort == 'date_desc') {
                  return $query->latest('id');
              } elseif ($sort == 'date_asc') {
                  return $query->oldest('id');
              } elseif ($sort == 'price_desc') {
                  return $query->latest('price');
              } elseif ($sort == 'price_asc') {
                  return $query->oldest('price');
              }
          })
          ->when(empty($sort), function ($query, $sort) {
              return $query->latest('id');
          })
          ->where('status', 1)
          ->where('user_id', $vendor->id)
          ->get()
          ->reject(function ($item) {
              if ($item->user_id != 0) {
                  if ($item->user->is_vendor != 2) {
                      return true;
                  }
              }
              if (isset($_GET['max'])) {
                  if ($item->vendorSizePrice() >= $_GET['max']) {
                      return true;
                  }
              }
              return false;
          })
          ->map(function ($item) {
              $item->price = $item->vendorSizePrice();
              return $item;
          })
          ->paginate(isset($pageby) ? $pageby : $this->gs->vendor_page_count);
  
      $data['vprods'] = $prods;
      $data['trending_products'] = Product::whereStatus(1)->whereTrending(1)
          ->take($gs->trending_count)
          ->with(['user' => function ($query) {
              $query->select('id', 'is_vendor');
          }])
          ->when('user', function ($query) {
              foreach ($query as $q) {
                  if ($q->is_vendor == 2) {
                      return $q;
                  }
              }
          })
          ->withCount('ratings')
          ->withAvg('ratings', 'rating')
          ->orderby('id', 'desc')
          ->where('user_id', $vendor->id)
          ->get();
  
      if ($request->ajax()) {
          $data['ajax_check'] = 1;
          return view('frontend.ajax.vendor', $data);
      }
  
      $data['latest_products'] = Product::whereLatest(1)->whereStatus(1)
          ->take($gs->new_count)
          ->with(['user' => function ($query) {
              $query->select('id', 'is_vendor');
          }])
          ->when('user', function ($query) {
              foreach ($query as $q) {
                  if ($q->is_vendor == 2) {
                      return $q;
                  }
              }
          })
          ->withCount('ratings')
          ->withAvg('ratings', 'rating')
          ->orderby('id', 'desc')
          ->where('user_id', $vendor->id)
          ->get();
  
      $data['categories'] = Product::with('category')->where('user_id', $vendor->id)->where('status', 1)->pluck('category_id')->toArray();
      $data['categories'] = Category::whereIn('id', $data['categories'])->get();
      $data['subcategories'] = Subcategory::with(['products' => function ($query) use ($vendor) {
          $query->where('user_id', $vendor->id);
      }])->get();
  
      return view('frontend.vendor', $data);
  }
  

  //Send email to user
  public function vendorcontact(Request $request)
  {
    $gs = $this->gs;
    $user = User::findOrFail($request->user_id);
    $vendor = User::findOrFail($request->vendor_id);

    $subject = $request->subject;
    $to = $vendor->email;
    $name = $request->name;
    $from = $request->email;
    $msg = "Name: " . $name . "\nEmail: " . $from . "\nMessage: " . $request->message;
    if ($gs->is_smtp) {
      $data = [
        'to' => $to,
        'subject' => $subject,
        'body' => $msg,
      ];

      $mailer = new MasMailer();
      $mailer->sendCustomMail($data);
    } else {
      $headers = "From: " . $gs->from_name . "<" . $gs->from_email . ">";
      mail($to, $subject, $msg, $headers);
    }

    $conv = Conversation::where('sent_user', '=', $user->id)->where('subject', '=', $subject)->first();
    if (isset($conv)) {
      $msg = new Message();
      $msg->conversation_id = $conv->id;
      $msg->message = $request->message;
      $msg->sent_user = $user->id;
      $msg->save();
      return response()->json(__('Message Sent!'));
    } else {
      $message = new Conversation();
      $message->subject = $subject;
      $message->sent_user = $request->user_id;
      $message->recieved_user = $request->vendor_id;
      $message->message = $request->message;
      $message->save();
      $msg = new Message();
      $msg->conversation_id = $message->id;
      $msg->message = $request->message;
      $msg->sent_user = $request->user_id;;
      $msg->save();
      return response()->json(__('Message Sent!'));
    }
  }
}
