@php
  $prefix = Request::route()->getPrefix();
  $route = Route::current()->getName();
 
@endphp


  <aside class="main-sidebar">
    <!-- sidebar-->
    <section class="sidebar">	
		
        <div class="user-profile">
			<div class="ulogo">
				 <a href="index.html">
        
				  <!-- logo for regular state and mobile devices -->
					 <div class="d-flex align-items-center justify-content-center">		
            {{-- <a href="{{ url('admin/dashboard') }}"> 
              <img src="{{ asset('backend/images/logo/stata.png') }}" alt="">
            </a>			 	 --}}
						 
						  <h3><b>Quotation</b></h3>
					 </div>
				</a>
			</div>
        </div>
      
      <!-- sidebar menu-->
      <ul class="sidebar-menu" data-widget="tree">  
		  
		<li class="{{ ($route == 'dashboard')? 'active':'' }}">
          <a href="{{ url('admin/dashboard') }}">
            <i data-feather="pie-chart"></i>
			<span>Add Quotation</span>
          </a>
    </li>  


    @php
    $brand = (auth()->guard('admin')->user()->brand == 1);
    $category = (auth()->guard('admin')->user()->category == 1);
    $product = (auth()->guard('admin')->user()->product == 1);
    $customer = (auth()->guard('admin')->user()->customer == 1);
    $bank = (auth()->guard('admin')->user()->bank == 1);
    $supplier = (auth()->guard('admin')->user()->supplier == 1);
    $quotation = (auth()->guard('admin')->user()->quotation == 1);
    $setting = (auth()->guard('admin')->user()->setting == 1);
    $purchase = (auth()->guard('admin')->user()->purchase == 1);
    $review = (auth()->guard('admin')->user()->review == 1);
    $orders = (auth()->guard('admin')->user()->orders == 1);
    $locations = (auth()->guard('admin')->user()->locations == 1);
    $stock = (auth()->guard('admin')->user()->stock == 1);
    $reports = (auth()->guard('admin')->user()->reports == 1);
    $alluser = (auth()->guard('admin')->user()->alluser == 1);
    $adminuserrole = (auth()->guard('admin')->user()->adminuserrole == 1);
    @endphp

    @if($category == true)
        <li class="treeview {{ ($prefix == '/category')?'active':'' }}  ">
          <a href="#">
            <i data-feather="mail"></i> <span>Category </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
         <li class="{{ ($route == 'category.view')? 'active':'' }}"><a href="{{ route('category.view') }}"><i class="ti-more"></i>All Category</a></li>
         <li class="{{ ($route == 'subCategory.view')? 'active':'' }}"><a href="{{ route('subCategory.view') }}"><i class="ti-more"></i>All SubCategory</a></li>
            </ul>

        </li>
    @else
    @endif

    @if($customer == true)
    <li class="treeview {{ ($prefix == '/customer')?'active':'' }}  ">
     <a href="#">
       <i data-feather="file"></i>
       <span>Customer</span>
       <span class="pull-right-container">
         <i class="fa fa-angle-right pull-right"></i>
       </span>
     </a>
     <ul class="treeview-menu">
       <li class="{{ ($route == 'customer.view')? 'active':'' }}"><a href="{{ route('customer.view') }}"><i class="ti-more"></i>Manage Customer</a></li>
     </ul>
   </li> 
@else
@endif	


		@if($product == true)
        <li class="treeview {{ ($prefix == '/product')?'active':'' }}  ">
          <a href="#">
            <i data-feather="file"></i>
            <span>Products</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="{{ ($route == 'product.add')? 'active':'' }}"><a href="{{ route('product.add') }}"><i class="ti-more"></i>Add Products</a></li>
            <li class="{{ ($route == 'product.add')? 'active':'' }}"><a href="{{ route('manage-product') }}"><i class="ti-more"></i>View Products</a></li>
             
          </ul>
        </li> 
    @else
    @endif		  


    @if($adminuserrole == true)
    <li class="treeview {{ ($prefix == '/adminuserrole')?'active':'' }}  ">
      <a href="#">
        <i data-feather="file"></i>
        <span>Admin User Role </span>
        <span class="pull-right-container">
          <i class="fa fa-angle-right pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
    <li class="{{ ($route == 'all.admin.user')? 'active':'' }}"><a href="{{ route('all.admin.user') }}"><i class="ti-more"></i>All Admin User </a></li>


      </ul>
    </li>    
@else
@endif 


   
    
    @if($quotation == true)
        <li class="treeview {{ ($prefix == '/quotation')?'active':'' }}  ">
          <a href="#">
            <i data-feather="file"></i>
            <span>Quotation</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
        {{-- <li class="{{ ($route == 'admin.quotation')? 'active':'' }}"><a href="{{ route('admin.quotation') }}"><i class="ti-more"></i>Add Quotation</a></li> --}}

        <li class="{{ ($route == 'all.quotation')? 'active':'' }}"><a href="{{ route('all.quotation') }}"><i class="ti-more"></i>Manage Quotaion</a></li>


          </ul>
        </li>
    @else
    @endif 
    
    
    @if($supplier == true)
    <li class="treeview {{ ($prefix == '/supplier')?'active':'' }}  ">
      <a href="#">
        <i data-feather="file"></i>
        <span>Supplier</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-right pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li class="{{ ($route == 'supplier.view')? 'active':'' }}"><a href="{{ route('supplier.view') }}"><i class="ti-more"></i>Add Supplier</a></li>
        <li class="{{ ($route == 'supplier.manage')? 'active':'' }}"><a href="{{ route('supplier.manage') }}"><i class="ti-more"></i>Manage Supplier</a></li>
         
      </ul>
    </li> 
@else
@endif		  


@if($purchase == true)
<li class="treeview {{ ($prefix == '/purchase')?'active':'' }}  ">
  <a href="#">
    <i data-feather="file"></i>
    <span>Purchase</span>
    <span class="pull-right-container">
      <i class="fa fa-angle-right pull-right"></i>
    </span>
  </a>
  <ul class="treeview-menu">
    <li class="{{ ($route == 'purchase.view')? 'active':'' }}"><a href="{{ route('purchase.view') }}"><i class="ti-more"></i>Add Purchase</a></li>
    <li class="{{ ($route == 'purchase.manage')? 'active':'' }}"><a href="{{ route('purchase.manage') }}"><i class="ti-more"></i>Manage Purchase</a></li>
     
  </ul>
</li> 
@else
@endif	


    @if($bank == true)
    <li class="treeview {{ ($prefix == '/bank')?'active':'' }}  ">
     <a href="#">
       <i data-feather="file"></i>
       <span>Bank</span>
       <span class="pull-right-container">
         <i class="fa fa-angle-right pull-right"></i>
       </span>
     </a>
     <ul class="treeview-menu">
       <li class="{{ ($route == 'bank.view')? 'active':'' }}"><a href="{{ route('bank.view') }}"><i class="ti-more"></i>Manage Bank</a></li>
     </ul>
   </li> 
@else
@endif	
        
        
      </ul>
    </section>
	
	{{-- <div class="sidebar-footer">
		<!-- item-->
		<a href="javascript:void(0)" class="link" data-toggle="tooltip" title="" data-original-title="Settings" aria-describedby="tooltip92529"><i class="ti-settings"></i></a>
		<!-- item-->
		<a href="mailbox_inbox.html" class="link" data-toggle="tooltip" title="" data-original-title="Email"><i class="ti-email"></i></a>
		<!-- item-->
		<a href="javascript:void(0)" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i class="ti-lock"></i></a>
	</div> --}}
  </aside>