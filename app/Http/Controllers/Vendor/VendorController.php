<?php

namespace App\Http\Controllers\Vendor;

use App\{
    Models\Category,
    Models\Subcategory,
    Models\VendorOrder,
    Models\Verification,
    Models\Generalsetting
};
use App\Models\Product;
use App\Models\Subscription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use Intervention\Image\Facades\Image;

class VendorController extends VendorBaseController
{

// api 

     public function api_profileupdate(Request $request)
    {
        //--- Validation Section
        $rules = [
            'shop_image' => 'mimes:jpeg,jpg,png,svg',
            'shop_image_left' => 'mimes:jpeg,jpg,png,svg',
            'shop_image_right' => 'mimes:jpeg,jpg,png,svg',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        $input = $request->all();
        $data = $this->user;

        if ($file = $request->file('shop_image')) {
            $extensions = ['jpeg', 'jpg', 'png', 'svg'];
            if (!in_array($file->getClientOriginalExtension(), $extensions)) {
                return response()->json(array('errors' => ['Image format not supported']));
            }
            $name = \PriceHelper::ImageCreateName($file);
            $file->move('assets/images/vendorbanner', $name);
            $input['shop_image'] = $name;
        }

        if ($file = $request->file('shop_image_left')) {
            $extensions = ['jpeg', 'jpg', 'png', 'svg'];
            if (!in_array($file->getClientOriginalExtension(), $extensions)) {
                return response()->json(array('errors' => ['Image format not supported']));
            }
            $name = \PriceHelper::ImageCreateName($file);
            $file->move('assets/images/vendorbanner', $name);
            $input['shop_image_left'] = $name;
        }

        if ($file = $request->file('shop_image_right')) {
            $extensions = ['jpeg', 'jpg', 'png', 'svg'];
            if (!in_array($file->getClientOriginalExtension(), $extensions)) {
                return response()->json(array('errors' => ['Image format not supported']));
            }
            $name = \PriceHelper::ImageCreateName($file);
            $file->move('assets/images/vendorbanner', $name);
            $input['shop_image_right'] = $name;
        }

        $data->update($input);
        $msg = __('Successfully updated your profile');
        return response()->json($msg);
    }
    
    public function api_index()
    {
        $data = [];
        $data2 = [];
        $data['days'] = [];
        $data['sales'] = [];
    
        for($i = 0; $i < 30; $i++) {
            $day = date("d M", strtotime('-'. $i .' days'));
            $salesCount = VendorOrder::where('user_id', $this->user->id)
                ->where('status', 'completed')
                ->whereDate('created_at', date("Y-m-d", strtotime('-'. $i .' days')))
                ->count();
    
            $data['days'][] = $day;
            $data['sales'][] = $salesCount;
        }
    
        $data['pproducts'] = Product::where('user_id', $this->user->id)
            ->latest('id')
            ->take(6)
            ->get();

        
        $data2['itemSold'] = VendorOrder::where('user_id','=',$this->user->id)->where('status','=','completed')->sum('qty');
        $data2['balance'] = Product::vendorConvertPrice( auth()->user()->current_balance );
        $datas = VendorOrder::with('order')->where('user_id',auth()->user()->id);
        $totalPrice =$datas->count() > 0 ? $datas->sum('price') : 0;
        $data2['earning'] = Product::vendorConvertPrice($totalPrice);
        $data2['Commission'] = Product::vendorConvertPrice($this->user->admin_commission);

        $data2['products'] = Product::where('user_id', $this->user->id)->count();
    
        $data['rorders'] = VendorOrder::where('user_id', $this->user->id)
            ->latest('id')
            ->take(10)
            ->get();
    
        $data['user'] = $this->user;  
        
        $data['pending'] = VendorOrder::where('user_id', $this->user->id)
            ->where('status', 'pending')
            ->get(); 

        $data2['pending'] = VendorOrder::where('user_id', $this->user->id)
            ->where('status', 'pending')
            ->get()->count(); 
    
        $data['processing'] = VendorOrder::where('user_id', $this->user->id)
            ->where('status', 'processing')
            ->get(); 

        $data2['processing'] = VendorOrder::where('user_id', $this->user->id)
            ->where('status', 'processing')
            ->get()->count(); 
    
        $data['completed'] = VendorOrder::where('user_id', $this->user->id)
            ->where('status', 'completed')
            ->get(); 

        $data2['completed'] = VendorOrder::where('user_id', $this->user->id)
            ->where('status', 'completed')
            ->get()->count(); 
    
        return response()->json([
            'data' => $data,
            'data2' => $data2
        ]);
    }
    
    //*** GET Request
    public function index()
    {
        $data['days'] = "";
        $data['sales'] = "";
        for($i = 0; $i < 30; $i++) {
            $data['days'] .= "'".date("d M", strtotime('-'. $i .' days'))."',";

            $data['sales'] .=  "'".VendorOrder::where('user_id','=',$this->user->id)->where('status','=','completed')->whereDate('created_at', '=', date("Y-m-d", strtotime('-'. $i .' days')))->count()."',";
        }
        $data['pproducts'] = Product::where('user_id','=',$this->user->id)->latest('id')->take(6)->get();
        $data['rorders'] = VendorOrder::where('user_id','=',$this->user->id)->latest('id')->take(10)->get();
        $data['user'] = $this->user;  
        $data['pending'] = VendorOrder::where('user_id','=',$this->user->id)->where('status','=','pending')->get(); 
        $data['processing'] = VendorOrder::where('user_id','=',$this->user->id)->where('status','=','processing')->get(); 
        $data['completed'] = VendorOrder::where('user_id','=',$this->user->id)->where('status','=','completed')->get(); 
        // $data['subs'] = Subscription::get();
        
        // $data['subs'] = Subscription::all(); 
        return view('vendor.index',$data);
    }



    
    // public function profileupdate(Request $request)
    // {
    //     //--- Validation Section
    //     $rules = [
    //           'shop_image'  => 'mimes:jpeg,jpg,png,svg',
    //           'shop_image_left'  => 'mimes:jpeg,jpg,png,svg',
    //           'shop_image_right'  => 'mimes:jpeg,jpg,png,svg',
    //             ];

    //     $validator = Validator::make($request->all(), $rules);
        
    //     if ($validator->fails()) {
    //       return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
    //     }
    //     //--- Validation Section Ends

    //     $input = $request->all();  
    //     $data = $this->user;    

    //     if ($file = $request->file('shop_image')) 
    //      {  
    //         $extensions = ['jpeg','jpg','png','svg'];       
    //         if(!in_array($file->getClientOriginalExtension(),$extensions)){
    //             return response()->json(array('errors' => ['Image format not supported']));
    //         }   
    //         $name = \PriceHelper::ImageCreateName($file);
    //         $file->move('assets/images/vendorbanner',$name);           
    //         $input['shop_image'] = $name;
    //     }

    //     if ($file = $request->file('shop_image_left')) 
    //      {  
    //         $extensions = ['jpeg','jpg','png','svg'];       
    //         if(!in_array($file->getClientOriginalExtension(),$extensions)){
    //             return response()->json(array('errors' => ['Image format not supported']));
    //         }   
    //         $name = \PriceHelper::ImageCreateName($file);
    //         $file->move('assets/images/vendorbanner',$name);           
    //         $input['shop_image_left'] = $name;
    //     }

    //     if ($file = $request->file('shop_image_right')) 
    //      {  
    //         $extensions = ['jpeg','jpg','png','svg'];       
    //         if(!in_array($file->getClientOriginalExtension(),$extensions)){
    //             return response()->json(array('errors' => ['Image format not supported']));
    //         }   
    //         $name = \PriceHelper::ImageCreateName($file);
    //         $file->move('assets/images/vendorbanner',$name);           
    //         $input['shop_image_right'] = $name;
    //     }

    //     $data->update($input);
    //     $msg = __('Successfully updated your profile');
    //     return response()->json($msg); 
    // }

    public function profileupdate(Request $request)
    {
        //--- Validation Section
        $rules = [
            'shop_image' => 'mimes:jpeg,jpg,png,svg',
            'shop_image_left' => 'mimes:jpeg,jpg,png,svg',
            'shop_image_right' => 'mimes:jpeg,jpg,png,svg',
        ];
    
        $validator = Validator::make($request->all(), $rules);
    
        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends
    
        $input = $request->all();  
        $data = $this->user;    
    
        if ($file = $request->file('shop_image')) {  
            $name = $this->processImage($file, 'shop_image');
            $input['shop_image'] = $name;
        }
    
        if ($file = $request->file('shop_image_left')) {  
            $name = $this->processImage($file, 'shop_image_left');
            $input['shop_image_left'] = $name;
        }
    
        if ($file = $request->file('shop_image_right')) {  
            $name = $this->processImage($file, 'shop_image_right');
            $input['shop_image_right'] = $name;
        }
    
        $data->update($input);
        $msg = __('Successfully updated your profile');
        return response()->json($msg); 
    }
    
    private function processImage($file, $imageType)
    {
        $extensions = ['jpeg', 'jpg', 'png', 'svg'];       
        if (!in_array($file->getClientOriginalExtension(), $extensions)) {
            return response()->json(array('errors' => ['Image format not supported']));
        }   
    
        $name = \PriceHelper::ImageCreateName($file);
    
        // Compress and save the image using Intervention Image
        $img = Image::make($file->getRealPath());
        $img->resize(800, 800, function ($constraint) {
            $constraint->aspectRatio();
        })->save(public_path('assets/images/vendorbanner/') . $name);
    
        return $name;
    }


    // Spcial Settings All post requests will be done in this method
    public function socialupdate(Request $request)
    {
        //--- Logic Section
        $input = $request->all(); 
        $data = $this->user;   
        if ($request->f_check == ""){
            $input['f_check'] = 0;
        }
        if ($request->t_check == ""){
            $input['t_check'] = 0;
        }

        if ($request->g_check == ""){
            $input['g_check'] = 0;
        }

        if ($request->l_check == ""){
            $input['l_check'] = 0;
        }
        $data->update($input);
        //--- Logic Section Ends
        //--- Redirect Section        
        $msg = __('Data Updated Successfully.');
        return response()->json($msg);      
        //--- Redirect Section Ends                

    }

    //*** GET Request
    public function profile()
    {
        $data = $this->user;  
        return view('vendor.profile',compact('data'));
    }

    //*** GET Request
    public function ship()
    {
        $gs = Generalsetting::find(1);
        if($gs->vendor_ship_info == 0) {
            return redirect()->back();
        }
        $data = $this->user;  
        return view('vendor.ship',compact('data'));
    }

    //*** GET Request
    public function banner()
    {
        $data = $this->user;  
        return view('vendor.banner',compact('data'));
    }

    //*** GET Request
    public function social()
    {
        $data = $this->user;  
        return view('vendor.social',compact('data'));
    }

    //*** GET Request
    public function subcatload($id)
    {
        $cat = Category::findOrFail($id);
        return view('load.subcategory',compact('cat'));
    }

    //*** GET Request
    public function childcatload($id)
    {
        $subcat = Subcategory::findOrFail($id);
        return view('load.childcategory',compact('subcat'));
    }

    //*** GET Request
    public function verify()
    {
        $data = $this->user;  
        if($data->checkStatus())
        {
            return redirect()->back();
        }
        return view('vendor.verify',compact('data'));
    }

    //*** GET Request
    public function warningVerify($id)
    {
        $verify = Verification::findOrFail($id);
        $data = $this->user;  
        return view('vendor.verify',compact('data','verify'));
    }

    //*** POST Request
    public function verifysubmit(Request $request)
    {
        //--- Validation Section
        $rules = [
          'attachments.*'  => 'mimes:jpeg,jpg,png,svg|max:10000'
           ];
        $customs = [
            'attachments.*.mimes' => __('Only jpeg, jpg, png and svg images are allowed'),
            'attachments.*.max' => __('Sorry! Maximum allowed size for an image is 10MB'),
                   ];

        $validator = Validator::make($request->all(), $rules,$customs);
        
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        $data = new Verification();
        $input = $request->all();

        $input['attachments'] = '';
        $i = 0;
                if ($files = $request->file('attachments')){
                    foreach ($files as  $key => $file){
                        $name = \PriceHelper::ImageCreateName($file);
                        if($i == count($files) - 1){
                            $input['attachments'] .= $name;
                        }
                        else {
                            $input['attachments'] .= $name.',';
                        }
                        $file->move('assets/images/attachments',$name);

                    $i++;
                    }
                }
        $input['status'] = 'Pending';        
        $input['user_id'] = $this->user->id;
        if($request->verify_id != '0')
        {
            $verify = Verification::findOrFail($request->verify_id);
            $input['admin_warning'] = 0;
            $verify->update($input);
        }
        else{

            $data->fill($input)->save();
        }

        //--- Redirect Section        
        $msg = '<div class="text-center"><i class="fas fa-check-circle fa-4x"></i><br><h3>'.__("Your Documents Submitted Successfully.").'</h3></div>';
        return response()->json($msg);      
        //--- Redirect Section Ends     
    }

}