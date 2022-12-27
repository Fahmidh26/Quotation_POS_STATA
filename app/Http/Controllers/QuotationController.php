<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Product;
use App\Models\Quotation;
use App\Models\QuotationItem;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class QuotationController extends Controller
{
    public function index() 
    {
        $customers = Customer::orderBy('customer_name','ASC')->get();
        $products = Product::orderBy('product_name','ASC')->get();
        return view('admin.Backend.Quotation.quotation_form', compact('products','customers'));
    }

    public function saveUser(Request $request)
    {
        $quotation_id = Quotation::insertGetId([
            'customer_id' => $request->customer_id,
            'quotation_date' => $request->quoDate,
            'expire_date' => $request->expDate,
            'sub_total' => $request->subtotal,
            'grand_total' => $request->grandtotal,
            'discount_percentage' => $request->dper,
            'discount_flat' => $request->dflat,
            'vat_percentage' => $request->vper,
            'vat_amount' => $request->vper,
            'total_discount' => $request->dflat,
            'details' => $request->details,
            'created_at' => Carbon::now(),   
  
        ]);

        $item = $request->input('item');
        $description = $request->input('description');
        $unit_cost = $request->input('unit_cost');
        $qty = $request->input('qty');
        $amount = $request->input('amount');
    
        foreach ($item as $key => $value) {
            QuotationItem::create([
                'product_id' => $value,
                'quotation_id' => $quotation_id,
                'qty' => $qty[$key],
                'price' => $unit_cost[$key],
                // 'description' => $description[$key],
                'amount' => $amount[$key],
            ]);
        }
    
		// return redirect()->back();
        $notification = array(
			'message' => 'Quotation Inserted Successfully',
			'alert-type' => 'success'
		);

        return redirect()->back()->with($notification);

    }

    public function getData(Request $request){

    $selectedOption = $request->input('option');
    $data = Customer::findOrFail($selectedOption);

    return $data;

    }

    
    public function getDataProduct(Request $request){

        $selectedOption = $request->input('option');
        $data = Product::findOrFail($selectedOption);
    
        return $data;
    
    }

    public function getProductPrice(Request $request){

        $selectedOption = $request->input('option');
        $data = Product::findOrFail($selectedOption);
    
        return $data;
    
    }

    

}
