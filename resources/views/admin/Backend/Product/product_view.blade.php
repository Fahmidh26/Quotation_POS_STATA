@extends('admin.aDashboard')
@section('admins')

  <!-- Content Wrapper. Contains page content -->

 {{-- TRIAL START --}}
 <div class="container-fluid">
	<div class="row mt-4">
	  <div class="col-lg-12 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
							<!-- /.box-header -->
							{{-- <div class="box-body"> --}}
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
					<td><h6 class="mb-0 text-sm">{{ $item->product_code }}</h6></td>
					<td>{{ $item->product_name }}</td>
					 <td class="text-sm font-weight-bold mb-0">TK {{ $item->selling_price }} </td>
					 <td class="text-sm font-weight-bold mb-0">
						@if($item->discount_price == NULL)
						<span>TK 0</span>
			
						@else
			
						  <h6 class="mb-0 text-sm">TK {{ $item->discount_price }} </h6>
			
						@endif
					</td>
					 <td class="align-middle text-center text-sm"> 
						 @if($item->discount_price == NULL)
						 <h6 class="badge badge-sm bg-gradient-success">No Discount</h6>
			
						 @else
						 @php
						 $amount = $item->selling_price - $item->discount_price;
						 $discount = ($amount/$item->selling_price) * 100;
						 @endphp
						   <span class="mb-0 text-sm">{{ round($discount)  }} %</span>
			
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
							{{-- </div> --}}
			</div>
		  </div>
		</div>
	  </div>

	</div>

	@include('admin.body.footer')

	{{-- TRIAL END --}}


@endsection