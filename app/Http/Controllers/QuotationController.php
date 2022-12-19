<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Quotation;
use Illuminate\Http\Request;

class QuotationController extends Controller
{
    public function index() 
    {
        $products = Product::orderBy('product_name','ASC')->get();
        return view('admin.Backend.Quotation.quotation_form', compact('products'));
    }

    public function saveUser(Request $request)
    {
        $txtFullname = $request->input('txtFullname');
        $txtEmail = $request->input('txtEmail');
        $txtPhone = $request->input('txtPhone');
        $txtAddress = $request->input('txtAddress');
    
        foreach ($txtFullname as $key => $value) {
            Quotation::create([
                'fullname' => $value,
                'email' => $txtEmail[$key],
                'phone' => $txtPhone[$key],
                'address' => $txtAddress[$key],
            ]);
        }
    
		return redirect()->back();
    }
}
