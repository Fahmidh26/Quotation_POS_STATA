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

              
            });

	$("#table_field tbody").on("input", ".qty", function () {
		var qty = parseFloat($(this).val());
		var unit_price = parseFloat($(this).closest("tr").find(".unit_price").val());
		var total = $(this).closest("tr").find(".total");
		total.val(unit_price * qty);
		
	});


	});
</script>

@endsection