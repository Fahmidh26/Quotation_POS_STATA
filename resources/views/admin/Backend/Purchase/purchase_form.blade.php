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
						<div class="col"><input type="text" id="mySearch" class="form-control mb-3" placeholder="Search Supplier">
							<select id="mySelect" name="supplier_id" class="form-control" required="">
							<option value="" selected="" disabled="">Select Supplier</option>
							@foreach($suppliers as $supplier)
									 <option value="{{ $supplier->id }}">{{ $supplier->supplier_name }}</option>	
							@endforeach
							<!-- More options -->
							</select></div>
						</div>
	
						<div class="row mb-3">
							<div class="col-2"><label>Chalan No.</label></div>
							<div class="col"><input class="form-control mb-3" type="text" id="chalan" name="chalan" required=""></div>
						</div>
	
						{{-- <div class="row mb-3">
							<div class="col-2"><label>Address</label></div>
							<div class="col"><input class="form-control mb-3" type="text" id="address" name="address" readonly></div>
						</div> --}}
				</div>
				<div class="col">
					<div class="row mb-3">
						<div class="col-2"><label>Quotation Date</label></div>
						<div class="col"><input class="form-control mb-3" type="date" id="quoDate" name="quoDate" required=""></div>
					</div>
					<div class="row mb-3">
						<div class="col-2"><label>Details</label></div>
						<div class="col"><input class="form-control mb-3" type="text" id="details" name="details"></div>
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
					<tr>
						  <td>
							<select id="item" name="item[]" class="form-control" required="" >
								<option value="" selected="" disabled="">Select Product</option>
								@foreach($products as $product)
									 <option value="{{ $product->id }}">{{ $product->product_name }} ({{$product->product_code}})</option>	
								@endforeach
							</select>

						</td>
						  <td><input class="form-control stock" type="text" id="stock" name="stock[]" required="" readonly></td>
						  <td><input class="form-control batch" type="text" id="batch" name="batch[]" required=""></td>
						  <td><input class="form-control qnty" type="number" id="qnty" name="qnty[]" required=""></td>
						  <td><input class="form-control rate" type="number" id="rate" name="rate[]" required=""></td>
						  <td><input class="form-control total" type="number" id="amount" name="amount[]" value="0" readonly></td>
						  <td><i class="fa-solid fa-circle-plus display-4 text-success" type="button" name="add" id="add" ></i></td>
					</tr>
				</table>
				
					<div class="row">
					<div class="col">
					</div>

					<div class="col-4">
						<div class="row mb-3">
							<div class="col-4"><label>Sub Total</label></div>
							<div class="col"><span><input class="form-control" type="text" name="subtotal" id="subtotal" readonly></span>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Discount (%)</label></div>
							<div class="col"><input class="dper form-control" type="number" id="discount-percentage" name="dper">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>VAT (%)</label></div>
							<div class="col"><input class="vper form-control" type="number" id="vat-percentage" name="vper" readonly>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Discount (TK)</label></div>
							<div class="col"><input class="dflat form-control" name="dflat" type="number" id="discount-flat">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Grand Total</label></div>
							<div class="col"><input class="form-control" type="text" name="grandtotal" id="grandtotal" readonly>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Paid Amount</label></div>
							<div class="col"><input class="form-control" type="number" name="paidamount" id="paidamount">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4"><label>Due Amount</label></div>
							<div class="col"><input class="form-control" type="text" name="dueamount" id="dueamount" readonly>
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
						  <tr>
								<td>
								  <select id="payitem" name="payitem[]" class="form-control" required="" >
									  <option value="" selected="" disabled="">Select Product</option>
									  @foreach($banks as $payment)
										   <option value="{{ $payment->id }}">{{ $payment->bank_name }}</option>	
									  @endforeach
								  </select>	  
							  </td>
								<td><input class="form-control pay_amount" type="number" id="pay_amount" name="pay_amount[]" required=""></td>
								<td><i class="fa-solid fa-circle-plus display-4 text-success" type="button" name="addpay" id="addpay"></i></td>
								<input class="form-control sumPayment" type="text" name="sumPayment" id="sumPayment" hidden readonly>
						  </tr>
					  </table>
					</div>
					<div class="col">				
					</div>
				</div>
					{{-- <i class="btn fa-solid fa-floppy-disk h2 text-info" type="submit" name="save" id="save"> Save Purchase</i> --}}
					<input class="btn btn-success" type="submit" name="save" id="save" value="
					Save Quotation">
	
			</div>
	  </form>
	</section>
	<!-- /.content -->
  
  </div>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

  <script>
	// Add a search field to the dropdown
	$("#mySearch").on("keyup", function() {
	  var value = $(this).val().toLowerCase();
	  $("#mySelect option").filter(function() {
		$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	  });
	});
  </script>
  
  <script>
	$(document).ready(function(){
		var html='<tr> <td><select id="item" name="item[]" class="form-control" required="" ><option value="" selected="" disabled="">Select Product</option>@foreach($products as $product) <option value="{{ $product->id }}">{{ $product->product_name }} ({{$product->product_code}})</option>	@endforeach</select></td><td><input class="form-control stock" type="text" id="stock" name="stock[]" required="" readonly></td><td><input class="form-control batch" type="text" id="batch" name="batch[]" required=""></td><td><input class="form-control qnty" type="number" id="qnty" name="qnty[]" required=""></td><td><input class="form-control rate" type="number" id="rate" name="rate[]" required=""></td><td><input class="form-control total" type="number" id="amount" name="amount[]" value="0" readonly></td><td><i class="fa-solid fa-circle-xmark display-4 text-danger" type="button" name="remove" id="remove"></i></td></tr>';
	
		// var x =1;
	  $("#add").click(function(){
		$("#table_field").append(html);
	  });
	  $("#table_field").on('click', '#remove', function () {
    $(this).closest('tr').remove();
	totalPrice();
	duePrice();
	});

	var htmlpay='<tr><td><select id="payitem" name="payitem[]" class="form-control" required="" ><option value="" selected="" disabled="">Select Product</option>@foreach($banks as $payment)<option value="{{ $payment->id }}">{{ $payment->bank_name }}</option>@endforeach</select></td><td><input class="form-control pay_amount" type="number" id="pay_amount" name="pay_amount[]" required=""></td><td><i class="fa-solid fa-circle-xmark display-4 text-danger" type="button" name="payremove" id="payremove"></i></td></tr>';

		// var x =1;
	  $("#addpay").click(function(){
		$("#table_fieldpayment").append(htmlpay);
	  });
	  $("#table_fieldpayment").on('click', '#payremove', function () {
    $(this).closest('tr').remove();
	totalPayment()
	duePrice();
	});
	
	$("#table_field tbody").on("input", ".rate", function () {
                var rate = parseFloat($(this).val());
                var qnty = parseFloat($(this).closest("tr").find(".qnty").val());
                var total = $(this).closest("tr").find(".total");
                total.val(qnty * rate);
				totalPrice();
				duePrice();
            });
	$("#table_field tbody").on("input", ".qnty", function () {
		var qnty = parseFloat($(this).val());
		var rate = parseFloat($(this).closest("tr").find(".rate").val());
		var total = $(this).closest("tr").find(".total");
		total.val(rate * qnty);
		totalPrice();
		duePrice();
	});
	// $("#discount-percentage").on("input", ".dper", function () {
	// 	var discount_value = this.value;
	// 	var grandtotal = document.getElementById("grandtotal").value;
	// 	var discount = grandtotal - (discount_value / 100) * grandtotal;
	// 	$("#grandtotal").val(discount);
	// 	console.log(discount);
	// });

	$("#table_fieldpayment tbody").on("input", ".pay_amount", function () {
                // var amount = parseFloat($(this).val());
                // var qnty = parseFloat($(this).closest("tr").find(".qnty").val());
                // var total = $(this).closest("tr").find(".total");
                // total.val(qnty * rate);
				// totalPrice();
				totalPayment();
				duePrice();

	      });

		  function duePrice(){
			$("#paidamount").val($("#sumPayment").val());
			$("#dueamount").val(($("#grandtotal").val()) - ($("#sumPayment").val()));
		  }

	function totalPrice(){
		var sum = 0;
	
		$(".total").each(function(){
		sum += parseFloat($(this).val());
		});
		$("#grandtotal").val(sum);
		$("#subtotal").val(sum);	
	}

	function totalPayment(){
		var sum = 0;
	
		$(".pay_amount").each(function(){
		sum += parseFloat($(this).val());
		});

		$("#sumPayment").val(sum);
	}
	
	document.querySelector('#discount-percentage').addEventListener('input', function() {
		$("#discount-flat").val("");
 		var discount_value = this.value;
		var grandtotal = document.getElementById("subtotal").value;
		var discount = grandtotal - (discount_value / 100) * grandtotal;
		$("#grandtotal").val(discount);
		duePrice();
		console.log(discount);
  // Now you can use the inputValue variable to access the value of the input element
	});
	document.querySelector('#discount-flat').addEventListener('input', function() {
		$("#discount-percentage").val("");
 		var discount_value = this.value;
		var grandtotal = document.getElementById("subtotal").value;
		var discount = grandtotal - discount_value;
		$("#grandtotal").val(discount);
		console.log(discount);
		duePrice();
  // Now you can use the inputValue variable to access the value of the input element
	});

	document.querySelector('#vat-percentage').addEventListener('input', function() {
 		var vat_value = this.value;
		var grandtotal = document.getElementById("subtotal").value;
		var vat = ((vat_value / 100) * grandtotal) + parseInt(grandtotal);
		$("#grandtotal").val(vat);
		console.log(vat);
  // Now you can use the inputValue variable to access the value of the input element
	});

	$("#mySelect").change(function() {
      // get the selected option value
      var selectedOption = $(this).val();

      // make an AJAX request to the server
      $.get('/get-data', { option: selectedOption }, function(data) {
        // update the field with the response data
        $("#address").val(data.address);
		$("#phone").val(data.phone);
		console.log(data);
      });
    });

	$("#item").change(function() {
      // get the selected option value
      var selectedOption = $(this).val();
		// console.log('hello');
      // make an AJAX request to the server
      $.get('/get-data-product', { option: selectedOption }, function(data) {
        // update the field with the response data
        $("#stock").val(data.qty);
      });
    });

	$("#table_field tbody").on("change", "select[name='item[]']", function () {
		var product_id = $(this).val();
		var stock = $(this).closest("tr").find(".stock");
		$.get('/get-data-product', { option: product_id }, function(data) {
        // update the field with the response data
		console.log('Hello');
		if(data.qty == null){
			stock.val(0);
		}else{
			stock.val(data.qty);
		}
			
      });
		// price.val(product_id);
               
    });

	document.querySelector('#paidamount').addEventListener('input', function() {
		$("#dueamount").val("");
 		var paidamount = this.value;
		var grandtotal = document.getElementById("grandtotal").value;
		var duetotal = grandtotal - paidamount;
		$("#dueamount").val(duetotal);
  // Now you can use the inputValue variable to access the value of the input element
	});
	

	// $("select[name='item[]']").each(function() {
	// 	var selectedOption = $(this).val();
	// 	console.log('hello');
		
	// });

	});
</script>

@endsection