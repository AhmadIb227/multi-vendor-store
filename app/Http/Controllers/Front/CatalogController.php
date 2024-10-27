<?php

namespace App\Http\Controllers\Front;

use App\{
  Models\Product,
  Models\Category,
  Models\Subcategory,
  Models\Childcategory,
  Models\Report
};
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CatalogController extends FrontBaseController
{

  // CATEGORIES SECTOPN

  public function categories()
  {

    return view('frontend.products');
  }

  public function getVendorProducts($vendorId)
  {
      $vendorProducts = Product::where('user_id', $vendorId)->latest()->get();
      return response()->json($vendorProducts);
  }

  // -------------------------------- CATEGORY SECTION ----------------------------------------
  public function category(Request $request, $slug = null, $slug1 = null, $slug2 = null, $slug3 = null)
  {
      $cat = null;
      $subcat = null;
      $childcat = null;
      $flash = null;
      $minprice = $request->min;
      $maxprice = $request->max;
      $sort = $request->sort;
      $search = $request->search;
      $pageby = $request->pageby;
      $type = $request->has('type') ?? '';
  
      if ($request->view_check) {
          session::put('view', $request->view_check);
      }
  
      $userId = auth()->id(); // الحصول على معرف المستخدم الحالي
  
      if (!empty($slug)) {
          $cat = Category::where('slug', $slug)->firstOrFail();
          $data['cat'] = $cat;
      }
  
      if (!empty($slug1)) {
          $subcat = Subcategory::where('slug', $slug1)->firstOrFail();
          $data['subcat'] = $subcat;
      }
  
      if (!empty($slug2)) {
          $childcat = Childcategory::where('slug', $slug2)->firstOrFail();
          $data['childcat'] = $childcat;
      }
  
      $data['latest_products'] = Product::with('user')->whereStatus(1)->whereLatest(1)
          ->whereHas('user', function ($q) {
              $q->where('is_vendor', 2);
          })
          ->withCount('ratings')
          ->withAvg('ratings', 'rating')
          ->get()
          ->chunk(4);
  
      $prods = Product::with('user')
      
          ->when($cat, function ($query, $cat) {
              return $query->where('category_id', $cat->id);
          })
          ->when($subcat, function ($query, $subcat) {
              return $query->where('subcategory_id', $subcat->id);
          })
          ->when($type, function ($query, $type) {
              return $query->with('user')->whereStatus(1)->whereIsDiscount(1)
                  ->where('discount_date', '>=', date('Y-m-d'))
                  ->whereHas('user', function ($user) {
                      $user->where('is_vendor', 2);
                  });
          })
          ->when($childcat, function ($query, $childcat) {
              return $query->where('childcategory_id', $childcat->id);
          })
          ->when($search, function ($query, $search) {
              return $query->where('name', 'like', '%' . $search . '%')->orWhere('name', 'like', $search . '%');
          })
          ->when($minprice, function ($query, $minprice) {
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
          ->withCount('ratings')
          ->withAvg('ratings', 'rating');
  
      $prods = $prods->where('status', 1)->get()
          ->map(function ($item) {
              $item->price = $item->vendorSizePrice();
              return $item;
          })->paginate(isset($pageby) ? $pageby : $this->gs->page_count);
  
      $data['prods'] = $prods;
  
      if ($request->ajax()) {
          $data['ajax_check'] = 1;
          return view('frontend.ajax.category', $data);
      }
  
      return view('frontend.products', $data);
  }
  
  public function getsubs(Request $request)
{
    $category = Category::where('slug', $request->category)->firstOrFail();
    $subcategories = Subcategory::where('category_id', $category->id)->get();
    
    $userId = auth()->id(); // الحصول على معرف المستخدم الحالي
    $filteredSubcategories = $subcategories->filter(function($subcategory) use ($userId) {
        return $subcategory->products()->where('user_id', $userId)->exists(); // تحقق إذا كان للمستخدم منتجات في الفئة الفرعية
    });

    return $filteredSubcategories;
}


  public function report(Request $request)
  {

    //--- Validation Section
    $rules = [
      'note' => 'max:400',
    ];
    $customs = [
      'note.max' => 'Note Must Be Less Than 400 Characters.',
    ];
    $validator = Validator::make($request->all(), $rules, $customs);
    if ($validator->fails()) {
      return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
    }
    //--- Validation Section Ends

    //--- Logic Section
    $data = new Report;
    $input = $request->all();
    $data->fill($input)->save();
    //--- Logic Section Ends

    //--- Redirect Section
    $msg = 'New Data Added Successfully.';
    return response()->json($msg);
    //--- Redirect Section Ends

  }
}
