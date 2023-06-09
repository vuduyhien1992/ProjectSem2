<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Banner;
// use App\Models\Banner;
use Illuminate\Http\Request;
use App\Models\TypeProduct;
use App\Models\Product;
use App\Models\Comment;
use Illuminate\Database\Query\Builder;
// use Database\Seeders\banner;
// use App\Models\Comment;

// use Database\Seeders\banner;

class IndexController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $cats = TypeProduct::all();
        // $banners = Banner::all();
        // $products  = Product::with('libraries')->paginate(15);
        // return view('user.index', compact('cats', 'banners', 'products'));
    }

    public function allProduct()
    {
        $products = Product::all();
        return view('user.pages.Products.index', compact('products'));
    }

    public function categoryById($id_type)
    {
        $prods = Product::where('id_type', $id_type)->paginate(12);
        $rate = Comment::all(); 
        $type = TypeProduct::find($id_type);
        $cats = TypeProduct::all();
        
        return view('user.pages.Products.index', compact( 'type','prods','rate','cats'));
    }

    public function product_detail($id = null)
    {
        if($id == null){
            return redirect('/not_found')->with("error","Product Not Found");
        }else{
            $product = Product::find($id);
            if(!$product){
                return redirect('/not-found');
            }
            $related_products = Product::where('id_type', $product->id_type)->where('id_product', '<>', $id)
                ->take(5)
                ->get();
            $comments = Comment::where('id_product', '=', $id)->orderBy('updated_at','desc')->get();
            return view('user.pages.ProductDetails.index', compact('product', 'related_products', 'comments'));
        }
    }


    public function privacy()
    {
        return view('user.pages.PrivacyPolicy.index');
    }
}
