<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image as Image;

class CustomerController extends Controller
{
    public function SliderView(){
		$customer = Customer::latest()->get();
		return view('admin.Backend.Brand.customer' ,compact('customer'));
	}


     public function SliderStore(Request $request){

    	$request->validate([
    		 
    		'slider_img' => 'required',
    	],[
    		'slider_img.required' => 'Plz Select One Image',
    		 
    	]);

    	$image = $request->file('slider_img');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->resize(869,370)->save('upload/slider/'.$name_gen);
    	$save_url = 'upload/slider/'.$name_gen;

        Customer::insert([
		'title' => $request->title,
        // 'subTitle' => $request->subTitle,
        // 'startingPrice' => $request->startingPrice,
        // 'slideStyle' => $request->slideStyle,
        'slider_img' => $save_url,

    	]);

	    $notification = array(
			'message' => 'Slider Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method

	public function SliderEdit($id){
		$customer = Customer::findOrFail($id);
			return view('admin.Backend.Brand.Slider.slider_edit',compact('customer'));
		}
	
	
	public function SliderUpdate(Request $request){
			
			$slider_id = $request->id;
			$old_img = $request->old_image;
	
			if ($request->file('slider_img')) {
	
			unlink($old_img);
			$image = $request->file('slider_img');
			$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
			Image::make($image)->resize(869,370)->save('upload/slider/'.$name_gen);
			$save_url = 'upload/slider/'.$name_gen;
	
            Customer::findOrFail($slider_id)->update([
			'title' => $request->title,
			// 'description' => $request->description,
			'slider_img' => $save_url,
	
			]);
	
			$notification = array(
				'message' => 'Slider Updated Successfully',
				'alert-type' => 'info'
			);
	
			return redirect()->route('slider.view')->with($notification);
	
			}else{
	
                Customer::findOrFail($slider_id)->update([
			'title' => $request->title,
			// 'description' => $request->description,
			
	
			]);
	
			$notification = array(
				'message' => 'Slider Updated Without Image Successfully',
				'alert-type' => 'info'
			);
	
			return redirect()->route('slider.view')->with($notification);
	
			} // end else 
		} // end method 
	
	
		public function SliderDelete($id){
			$customer = Customer::findOrFail($id);
			$img = $customer->slider_img;
			unlink($img);
			Customer::findOrFail($id)->delete();
	
			$notification = array(
				'message' => 'Slider Delectd Successfully',
				'alert-type' => 'info'
			);
	
			return redirect()->back()->with($notification);
	
		} // end method
	
}
