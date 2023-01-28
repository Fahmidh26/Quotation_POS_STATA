<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Bank;
use App\Models\PaymentItem;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\PurchaseItem;
use App\Models\Supplier;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class PurchaseController extends Controller
{
    public function PurchaseForm() 
    {
        // $id = Auth::user()->id;
		// $adminData = Admin::find($id);
        $banks = Bank::orderBy('bank_name','ASC')->get();
        $suppliers = Supplier::orderBy('supplier_name','ASC')->get();
        $products = Product::orderBy('product_name','ASC')->get();
        return view('admin.Backend.Purchase.purchase_form', compact('products','suppliers','banks'));
    }

    public function PurchaseStore(Request $request)
    {
        $purchased_id = Purchase::insertGetId([
            'supplier_id' => $request->supplier_id,
            'chalan_no' => $request->chalan,
            'purchase_date' => $request->quoDate,
            'details' => $request->details,
            'sub_total' => $request->subtotal,
            'grand_total' => $request->grandtotal,
            'purchase_discount' => $request->dper,
            'discount_flat' => $request->dflat,
            // 'total_discount' => null,
            'total_vat' => $request->vper,
            'p_paid_amount' => $request->paidamount,
            'due_amount' => $request->dueamount,
            'status' => 1,
            'created_at' => Carbon::now(),   
  
        ]);

        $item = $request->input('item');
        $stock = $request->input('stock');
        $batch = $request->input('batch');
        $qty = $request->input('qnty');
        $rate = $request->input('rate');
        $amount = $request->input('amount');

       
        foreach ($item as $key => $value) {

            $matchProduct = Product::where('id',$value)->get();

            $productIDs = $matchProduct->pluck('id')->toArray();
            
            foreach($productIDs as $product) {
                // dd($product);
                // print($product.',');
                $match1Product = Product::where('id',$product)->get();

                if(isset($product->qty) && $product->qty == null){
                    Product::findOrFail($product)->update([
                        'qty' => $qty[$key],
                    ]);
                }else{
                    Product::findOrFail($product)->update([
                        'qty' => $qty[$key] + $stock[$key],
                    ]);
                }
            }

            PurchaseItem::create([
                'product_id' => $value,
                'purchase_id' => $purchased_id,
                'batch_no' => $batch[$key],
                'qty' => $qty[$key],
                'rate' => $rate[$key],
                'amount' => $amount[$key],
            ]);
        }


        $payitem = $request->input('payitem');
        $pay_amount = $request->input('pay_amount');
     
        foreach ($payitem as $key => $value) {

            PaymentItem::create([
                'bank_id' => $value,
                'purchase_id' => $purchased_id,
                'b_paid_amount' => $pay_amount[$key],
            ]);
        }
    
		// return redirect()->back();
        $notification = array(
			'message' => 'Purchased Successfully',
			'alert-type' => 'success'
		);

        return redirect()->back()->with($notification);

    }

    public function ManageQuotation(Request $request){
       
        $quotations = Quotation::latest()->get();
		return view('admin.Backend.Quotation.manage_quotation',compact('quotations'));

    }

    	// Quotation View 
	    public function viewQuotation($quotation_id){

            $quotation = Quotation::findOrFail($quotation_id);
            $quotationItems = QuotationItem::where('quotation_id',$quotation_id)->get();
            $customers = Customer::orderBy('customer_name','ASC')->get();
            $products = Product::orderBy('product_name','ASC')->get();

            return view('admin.Backend.Quotation.quotation_view',compact('quotation','customers','products','quotationItems'));

	} // end method 

    public function AdminInvoiceDownload($quotation_id){

		$quotation = Quotation::with('customer','auth')->where('id',$quotation_id)->first();
    	$quotationItem = QuotationItem::with('product','quotation')->where('quotation_id',$quotation_id)->orderBy('id','DESC')->get();

		$pdf = PDF::loadView('admin.Backend.Quotation.quotation_invoice',compact('quotation','quotationItem'))->setPaper('a4')->setOptions([
				'tempDir' => public_path(),
				'chroot' => public_path(),
		]);
		return $pdf->download('Quotation.pdf');

	} // end method 

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
    
        public function getProductStock(Request $request){
    
            $selectedOption = $request->input('option');
            $data = Product::findOrFail($selectedOption);

            return $data;
        
        }
}
