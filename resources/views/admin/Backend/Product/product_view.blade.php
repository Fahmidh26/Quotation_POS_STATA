@extends('admin.aDashboard')
@section('admins')

  <!-- Content Wrapper. Contains page content -->
  
	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 
		<!-- Main content -->
		<section class="content">
		  <div class="row">
			<div class="col-12">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Product List <span class="badge badge-pill badge-danger"> {{ count($products) }} </span></h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
							
								<th>Code</th>
								<th>Name</th>
								<th>Price </th>
								<th>Discount Price</th>
								<th>Discount %</th>
								<th>Action</th>
								 
							</tr>
						</thead>
						<tbody>
	 @foreach($products as $item)
	 <tr>
		<td>{{ $item->product_code }}</td>
		<td>{{ $item->product_name }}</td>
		 <td>TK {{ $item->selling_price }} </td>
		 <td>
			@if($item->discount_price == NULL)
			<span>TK 0</span>

			@else

			  <span >TK {{ $item->discount_price }} </span>

			@endif
		</td>
		 <td> 
		 	@if($item->discount_price == NULL)
		 	<span class="badge badge-pill badge-danger">No Discount</span>

		 	@else
		 	@php
		 	$amount = $item->selling_price - $item->discount_price;
		 	$discount = ($amount/$item->selling_price) * 100;
		 	@endphp
  			 <span class="badge badge-pill badge-danger">{{ round($discount)  }} %</span>

		 	@endif



		 </td>


		<td width="30%">
 <a href="{{ route('product.edit',$item->id) }}" class="btn btn-primary" title="Product Details Data"><i class="fa fa-eye"></i> </a>

 <a href="{{ route('product.edit',$item->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i> </a>

 <a href="{{ route('product.delete',$item->id) }}" class="btn btn-danger" title="Delete Data" id="delete">
 	<i class="fa fa-trash"></i></a>

		</td>
							 
	 </tr>
	  @endforeach
						</tbody>
						 
					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->

			          
			</div>
			<!-- /.col -->

 
 


		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	  
	  </div>
  
 {{-- TRIAL START --}}
 <div class="container-fluid">
	<div class="row mt-4">
	  <div class="col-lg-7 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
			  <form method="post" action="{{ route('product-store') }}" enctype="multipart/form-data" >
				  @csrf
	 
	 
					 <div class="form-group">
						 <h6>Product Name<span class="text-danger">*</span></h6>
						 <div class="controls">
							 <input type="text" name="product_name" class="form-control" required="">
				  @error('product_name') 
				  <span class="text-danger">{{ $message }}</span>
				  @enderror
						</div>
					 </div>
	  
		   <div class="form-group">
				 <h6>Product Code <span class="text-danger">*</span></h6>
				 <div class="controls">
					 <input type="text" name="product_code" class="form-control" required="">
		  @error('product_code') 
		  <span class="text-danger">{{ $message }}</span>
		  @enderror
				</div>
			 </div>
					 
				 <div class="col">	
				  <div class="row">
					  <div class="col">	
					  <div class="form-group">
						  <h6>Product Discount Price <span class="text-danger">*</span></h6>
						  <div class="controls">
				   <input type="text" name="discount_price" class="form-control" >
				   @error('discount_price') 
				   <span class="text-danger">{{ $message }}</span>
				   @enderror
							</div>
					  </div></div>
					  <div class="col">
						  
						  <div class="form-group">
							  <h6>Product Selling Price <span class="text-danger">*</span></h6>
							  <div class="controls">
								  <input type="text" name="selling_price" class="form-control" required="">
					   @error('selling_price') 
					   <span class="text-danger">{{ $message }}</span>
					   @enderror
							 </div>
						  </div>	
					  </div>
				  </div>	
				 </div>

			 </div> <!-- end row  -->
		  
							 <div class="text-xs-right">
	 <input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add Product">
							 </div>
						 </form>
			</div>
		  </div>
		</div>
	  </div>

	</div>

	@include('admin.body.footer')

	{{-- TRIAL END --}}


@endsection