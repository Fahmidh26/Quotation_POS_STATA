@extends('admin.aDashboard')
@section('admins')

<!-- Content Wrapper. Contains page content -->
  
<div class="container-full">
	<!-- Content Header (Page header) -->
	 

	<!-- Main content -->
	<section class="content">
		<form class="insert-form" id="insert_form" method="post" action="{{ route('repeater') }}">
			@csrf
			<div class="input-field">
				<table class="table table-bordered" id="table_field">
					  <tr>
						  <th>Item Information</th>
						  <th>Description</th>
						  <th>Qty</th>
						  <th>Rate</th>
						  <th>Total</th>
						  <th>Add or Remove</th>
					</tr>
					<tr>
						  <td>
							<select id="item" name="item[]" class="form-control" required="" >
								<option value="" selected="" disabled="">Select Product</option>
								@foreach($products as $product)
									 <option value="{{ $product->id }}">{{ $product->product_name }}</option>	
								@endforeach
							</select>

							
							{{-- <input class="form-control" type="text" name="txtFullname[]"
						  required=""> --}}
						</td>
						  <td><input class="form-control" type="text" id="description" name="description[]" required=""></td>
						  <td><input class="form-control unit_price" type="text" id="unit_cost" name="unit_cost[]" required=""></td>
						  <td><input class="form-control qty" type="text" id="qty" name="qty[]" required=""></td>
						  <td><input class="form-control total" type="text" id="amount" name="amount[]" value="0" readonly></td>
						  <td><input class="btn btn-warning" type="button" name="add" id="add" value="Add"></td>
					</tr>
					
				</table>
				<span>Sub Total<input type="text" name="subtotal" id="subtotal" readonly></span><br><br>
				Discount percentage: <input class="dper" type="number" id="discount-percentage"><br><br>
				Discount Flat (TK): <input class="dflat" type="number" id="discount-flat"><br><br>
				{{-- Discounted price: <span id="discounted-price"></span> --}}
				<span>Grand Total<input type="text" name="grandtotal" id="grandtotal" readonly></span><br><br>
					
				<input class="btn btn-success" type="submit" name="save" id="save" value="
					Save Data">
			</div>
	  </form>
	</section>
	<!-- /.content -->
  
  </div>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

  <script>
	$(document).ready(function(){
		var html='<tr><td><select id="item" name="item[]" class="form-control" required=""><option value="" selected="" disabled="">Select Product</option>@foreach($products as $product)<option value="{{ $product->id }}">{{ $product->product_name }}</option>@endforeach</select></td><td><input class="form-control" type="text" id="description" name="description[]" required=""></td><td><input class="form-control unit_price" type="text" id="unit_cost" name="unit_cost[]" required=""></td><td><input class="form-control qty" type="text" id="qty" name="qty[]" required=""><td><input class="form-control total" type="text" id="amount" name="amount[]" value="0" readonly></td></td><td><input class="btn btn-danger" type="button" name="remove" id="remove" value="remove"></td></tr>';

		var x =1;

	  $("#add").click(function(){
		$("#table_field").append(html);
	  });

	  $("#table_field").on('click', '#remove', function () {
    $(this).closest('tr').remove();
	});
	
	$("#table_field tbody").on("input", ".unit_price", function () {
                var unit_price = parseFloat($(this).val());
                var qty = parseFloat($(this).closest("tr").find(".qty").val());
                var total = $(this).closest("tr").find(".total");
                total.val(unit_price * qty);
				totalPrice();
            });
	$("#table_field tbody").on("input", ".qty", function () {
		var qty = parseFloat($(this).val());
		var unit_price = parseFloat($(this).closest("tr").find(".unit_price").val());
		var total = $(this).closest("tr").find(".total");
		total.val(unit_price * qty);
		totalPrice();

	});

	// $("#discount-percentage").on("input", ".dper", function () {
	// 	var discount_value = this.value;
	// 	var grandtotal = document.getElementById("grandtotal").value;
	// 	var discount = grandtotal - (discount_value / 100) * grandtotal;
	// 	$("#grandtotal").val(discount);
	// 	console.log(discount);
	// });

	function totalPrice(){
		var sum = 0;
	
		$(".total").each(function(){
		sum += parseFloat($(this).val());
		});

		$("#grandtotal").val(sum);
		$("#subtotal").val(sum);	
	}

	
	document.querySelector('#discount-percentage').addEventListener('input', function() {
 		var discount_value = this.value;
		var grandtotal = document.getElementById("subtotal").value;
		var discount = grandtotal - (discount_value / 100) * grandtotal;
		$("#grandtotal").val(discount);
		console.log(discount);

  // Now you can use the inputValue variable to access the value of the input element
	});

	document.querySelector('#discount-flat').addEventListener('input', function() {
 		var discount_value = this.value;
		var grandtotal = document.getElementById("subtotal").value;
		var discount = grandtotal - discount_value;
		$("#grandtotal").val(discount);
		console.log(discount);

  // Now you can use the inputValue variable to access the value of the input element
	});

	});
</script>

@endsection