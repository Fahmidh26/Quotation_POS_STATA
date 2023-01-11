@extends('admin.aDashboard')
@section('admins')

	  <div class="container-full">
		<!-- Content Header (Page header) -->
		  

		<!-- Main content -->
		<section class="content">

		 <!-- Basic Forms -->
		  <div class="box">
			<div class="box-header with-border">
			  <h4 class="box-title">Edit Product </h4>
			   
			</div>
			<!-- /.box-header -->
			<div class="box-body">
			  <div class="row">
				<div class="col">

  <form method="post" action="{{ route('product-update') }}">
		 	@csrf

					  <div class="row">
	<div class="col-12">	


		<div class="row"> <!-- start 1st row  -->
			<div class="col-md-4">

	 <div class="form-group">
	<h6>Category<span class="text-danger">*</span></h6>
	<div class="controls">
		<select name="category_id" class="form-control" required="" >
			<option value="{{ $products->category->id }}" selected="" disabled="">{{ $products->category->category_name }}</option>
			@foreach($categories as $category)
 <option value="{{ $category->id }}">{{ $category->category_name }}</option>	
			@endforeach
		</select>
		@error('category_id') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror 
	 </div>
		 </div>
				
			</div> <!-- end col md 4 -->

			<div class="col-md-4">	
				<div class="form-group">
					<h6>Product Name<span class="text-danger">*</span></h6>
					<div class="controls">
						<input type="text" value="{{$products->product_name}}" name="product_name" class="form-control" required="">
			 @error('product_name') 
			 <span class="text-danger">{{ $message }}</span>
			 @enderror
				   </div>
				</div>
			</div> <!-- end col md 4 -->
 <!-- end col md 4 -->
			
		</div> <!-- end 1st row  -->

<div class="row"> <!-- start 3RD row  -->
			<div class="col-md-4">

	  <div class="form-group">
			<h6>Product Code <span class="text-danger">*</span></h6>
			<div class="controls">
				<input type="text" value="{{$products->product_code}}" name="product_code" class="form-control" required="">
     @error('product_code') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror
	 	  </div>
		</div>
				
			</div> <!-- end col md 4 -->

			<div class="col-md-4">	
				<div class="form-group">
					<h6>Product Selling Price <span class="text-danger">*</span></h6>
					<div class="controls">
						<input type="text" value="{{$products->selling_price}}" name="selling_price" class="form-control" required="">
			 @error('selling_price') 
			 <span class="text-danger">{{ $message }}</span>
			 @enderror
				   </div>
				</div>			
			</div> <!-- end col md 4 -->


			<div class="col-md-4">


				
			</div> <!-- end col md 4 -->
			
		</div> <!-- end 3RD row  -->
		 
<div class="row"> <!-- start 6th row  -->
			<div class="col-md-4">

	    <div class="form-group">
			<h6>Product Discount Price <span class="text-danger">*</span></h6>
			<div class="controls">
	 <input type="text" value="{{$products->discount_price}}" name="discount_price" class="form-control" >
     @error('discount_price') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror
	 		 </div>
		</div>
				
			</div> <!-- end col md 4 -->

			<div class="col-md-4">
			</div> <!-- end col md 4 -->

			
		</div> <!-- end 6th row  -->

	 
	 <hr>				 
						<div class="text-xs-right">
<input type="submit" class="btn btn-rounded btn-primary mb-5" value="Update Product">
						</div>
					</form>

				</div>
				<!-- /.col -->
			  </div>
			  <!-- /.row -->
			</div>
			<!-- /.box-body -->
		  </div>
		  <!-- /.box -->

		</section>
		<!-- /.content -->
	  </div>

@endsection