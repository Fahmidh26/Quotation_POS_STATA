@extends('admin.aDashboard')
@section('admins')

<!-- Content Wrapper. Contains page content -->
  
<div class="container-full">
	<!-- Content Header (Page header) -->
	 


	<!-- Main content -->
	<section class="content">
		<form class="insert-form" id="insert_form" method="post" action="{{ route('purchase.store') }}">
			@csrf
			<div class="row">
				<div class="col">
					<div class="row mb-3">
						<div class="col-2"><label for="mySelect">Supplier</label></div>
						<div class="col">
							<select id="mySelect" name="supplier_id" class="form-control">
							<option value="{{ $purchase->supplier_id }}" selected="">{{ $purchase->supplier->supplier_name }}</option>
							<!-- More options -->
							</select></div>
						</div>
	
						<div class="row mb-3">
							<div class="col-2"><label>Chalan No.</label></div>
							<div class="col"><input value="{{ $purchase->chalan_no }}" class="form-control mb-3" type="text" id="chalan" name="chalan"></div>
						</div>
	
						{{-- <div class="row mb-3">
							<div class="col-2"><label>Address</label></div>
							<div class="col"><input class="form-control mb-3" type="text" id="address" name="address" readonly></div>
						</div> --}}
				</div>
				<div class="col">
					<div class="row mb-3">
						<div class="col-2"><label>Quotation Date</label></div>
						<div class="col"><input value="{{ $purchase->purchase_date }}" class="form-control mb-3" type="date" id="quoDate" name="quoDate"></div>
					</div>
					<div class="row mb-3">
						<div class="col-2"><label>Details</label></div>
						<div class="col"><input value="{{ $purchase->details }}"  class="form-control mb-3" type="text" id="details" name="details"></div>
					</div>
					<div class="row mb-3">
						<div class="col"><input class="form-control mb-3" type="hidden" id="auth_id" name="auth_id"  value="{{ Auth::id()}}">
						</div>
					</div>
			
				</div>
			</div>
			<div class="input-field">
				<table class="table table-bordered" id="table_field">
					  <tr>
						<th>Item Information</th>
						<th>Stock/Qnt</th> 
						<th>Batch No.</th>
						<th>Qnty</th>
						<th>Rate</th>
						{{-- <th>Discount</th>
						<th>Dis. Value</th>
						<th>Vat %</th>
						<th>VAT Value</th> --}}
						<th>Total</th>
						<th>Action</th>
					</tr>
					@foreach ($purchaseItems as $item)
					<tr>
						<td>
							<select id="item" name="item[]" class="form-control" required="" >
								<option value="{{ $item->product->id }}" selected="" disabled="">{{ $item->product->product_name }}</option>
								{{-- @foreach($products as $product)
									 <option value="{{ $product->id }}">{{ $product->product_name }} ({{$product->product_code}})</option>	
								@endforeach --}}
							</select>

						</td>
						  <td><input class="form-control stock" type="text" id="stock" name="stock[]" required="" value="{{ $item->product->qty }}" readonly></td>
						  <td><input class="form-control batch" value="{{ $item->batch_no }}" type="text" id="batch" name="batch[]" required=""></td>
						  <td><input class="form-control qnty" value="{{ $item->qty }}"  type="number" id="qnty" name="qnty[]" required=""></td>
						  <td><input class="form-control rate" value="{{ $item->rate }}"  type="number" id="rate" name="rate[]" required=""></td>
						  <td><input class="form-control total" value="{{ $item->amount }}"  type="number" id="amount" name="amount[]" value="0" readonly></td>
						  <td><input class="btn btn-warning" type="button" name="add" id="add" value="Add"></td>
					</tr>
					@endforeach
				</table>
				
					<div class="row">
					<div class="col">
					</div>

					<div class="col-4">
						<div class="row mb-3">
							<div class="col-4"><label>Sub Total</label></div>
							<div class="col"><span><input value="{{ $purchase->sub_total }}"  class="form-control" type="text" name="subtotal" id="subtotal" readonly></span>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Discount (%)</label></div>
							<div class="col"><input value="{{ $purchase->purchase_discount }}" class="dper form-control" type="number" id="discount-percentage" name="dper">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>VAT (%)</label></div>
							<div class="col"><input value="{{ $purchase->total_vat }}"  class="vper form-control" type="number" id="vat-percentage" name="vper" readonly>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Discount (TK)</label></div>
							<div class="col"><input value="{{ $purchase->discount_flat }}"  class="dflat form-control" name="dflat" type="number" id="discount-flat">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Grand Total</label></div>
							<div class="col"><input value="{{ $purchase->grand_total }}"  class="form-control" type="text" name="grandtotal" id="grandtotal" readonly>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Paid Amount</label></div>
							<div class="col"><input value="{{ $purchase->p_paid_amount }}"  class="form-control" type="number" name="paidamount" id="paidamount">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Due Amount</label></div>
							<div class="col"><input value="{{ $purchase->due_amount }}"  class="form-control" type="text" name="dueamount" id="dueamount" readonly>
							</div>
						</div>

					
					</div>
				</div>
				<div class="row">
					<div class="col">
						<table class="table table-bordered" id="table_fieldpayment">
							<tr>
							  <th>Payment Type</th>
							  <th>Paid Amount</th>
							  <th>Action</th>
						  </tr>
						  @foreach ($paymentItems as $item)
						  <tr>
								<td>
								  <select id="payitem" name="payitem[]" class="form-control" required="" >
									  <option value="{{$item->bank_id}}" selected="" disabled="">{{$item->payment->bank_name}}</option>
									  {{-- @foreach($banks as $payment)
										   <option value="{{ $payment->id }}">{{ $payment->bank_name }}</option>	
									  @endforeach --}}
								  </select>	  
							  </td>
								<td><input class="form-control pay_amount" type="number" id="pay_amount" name="pay_amount[]" value="{{$item->b_paid_amount}}" required=""></td>
								<td><input class="btn btn-warning" type="button" name="addpay" id="addpay" value="Add"></td>

						  </tr>
						  @endforeach
					  </table>
					</div>
					<div class="col">				
					</div>
				</div>

					<input class="btn btn-success" type="submit" name="save" id="save" value="
					Save Quotation">
	
			</div>
	  </form>
	</section>
	<!-- /.content -->
  
  </div>




@endsection