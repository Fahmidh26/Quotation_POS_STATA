@php
  $prefix = Request::route()->getPrefix();
  $route = Route::current()->getName();
 
@endphp

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
$expense = (auth()->guard('admin')->user()->expense == 1);
$hr = (auth()->guard('admin')->user()->hr == 1);
$locations = (auth()->guard('admin')->user()->locations == 1);
$stock = (auth()->guard('admin')->user()->stock == 1);
$reports = (auth()->guard('admin')->user()->reports == 1);
$alluser = (auth()->guard('admin')->user()->alluser == 1);
$adminuserrole = (auth()->guard('admin')->user()->adminuserrole == 1);
@endphp

<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 " id="sidenav-main">
  <div class="sidenav-header">
    <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
    <a class="navbar-brand m-0" href="https://demos.creative-tim.com/soft-ui-dashboard/pages/dashboard.html" target="_blank">
      <img src="../assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
      <span class="ms-1 font-weight-bold">STATA UI Dashboard</span>
    </a>
  </div>
  <hr class="horizontal dark mt-0">

  <div class="collapse navbar-collapse  w-auto  max-height-vh-100 h-100" id="sidenav-collapse-main">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link {{ ($route == 'admin.dashboard')? 'active':'' }}" href="{{ url('admin/dashboard') }}">
          <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
            <svg width="12px" height="12px" viewBox="0 0 45 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <title>shop </title>
              <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g transform="translate(-1716.000000, -439.000000)" fill="#FFFFFF" fill-rule="nonzero">
                  <g transform="translate(1716.000000, 291.000000)">
                    <g transform="translate(0.000000, 148.000000)">
                      <path class="color-background opacity-6" d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z"></path>
                      <path class="color-background" d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z"></path>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </div>
          <span class="nav-link-text ms-1">Dashboard</span>
        </a>
      </li>


  @if($category == true)
      <li class="nav-item">
<a data-bs-toggle="collapse" href="#ecommerceExamples" class="nav-link  {{ ($prefix == '/category')?'active':'' }}" aria-controls="ecommerceExamples" role="button">
<div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center  me-2">
<svg class="text-dark" width="12px" height="12px" viewBox="0 0 42 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<title>basket</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-1869.000000, -741.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(1716.000000, 291.000000)">
<g id="basket" transform="translate(153.000000, 450.000000)">
<path class="color-background" d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z" opacity="0.595377604"></path>
<path class="color-background" d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"></path>
</g>
</g>
</g>
</g>
</svg>
</div>

<span class="nav-link-text ms-1">Category</span>
</a>
<div class="collapse hide" id="ecommerceExamples" style="">
<ul class="nav ms-4 ps-3">
<li class="nav-item ">
<a class="nav-link {{ ($route == 'category.view')? 'active':'' }}" href="{{ route('category.view') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal"> Category View </span>
</a>
<a class="nav-link {{ ($route == 'subCategory.view')? 'active':'' }}" href="{{ route('subCategory.view') }}">
  <span class="sidenav-mini-icon"></span>
  <span class="sidenav-normal">SubCategory View </span>
  </a>
</li>
</ul>
</div>
</li>
@else
@endif

@if($product == true)
<li class="nav-item">
<a data-bs-toggle="collapse" href="#product" class="nav-link  {{ ($prefix == '/product')?'active':'' }}" aria-controls="ecommerceExamples" role="button">
<div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center  me-2">
<svg class="text-dark" width="12px" height="12px" viewBox="0 0 42 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<title>basket</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-1869.000000, -741.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(1716.000000, 291.000000)">
<g id="basket" transform="translate(153.000000, 450.000000)">
<path class="color-background" d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z" opacity="0.595377604"></path>
<path class="color-background" d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"></path>
</g>
</g>
</g>
</g>
</svg>
</div>

<span class="nav-link-text ms-1">Product</span>
</a>
<div class="collapse hide" id="product" style="">
<ul class="nav ms-4 ps-3">
<li class="nav-item ">
<a class="nav-link {{ ($route == 'product.add')? 'active':'' }}" href="{{ route('product.add') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Product Add </span>
</a>
<a class="nav-link {{ ($route == 'manage-product')? 'active':'' }}" href="{{ route('manage-product') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Product Manage </span>
</a>
</li>
</ul>
</div>
</li>
@else
@endif

@if($customer == true)
      <li class="nav-item">
        <a class="nav-link {{ ($route == 'customer.view')? 'active':'' }}" href="{{ route('customer.view') }}">
          <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
            <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <title>credit-card</title>
              <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                  <g transform="translate(1716.000000, 291.000000)">
                    <g transform="translate(453.000000, 454.000000)">
                      <path class="color-background opacity-6" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"></path>
                      <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </div>
          <span class="nav-link-text ms-1">Customer</span>
        </a>
      </li>
      @else
      @endif



      @if($quotation  == true)
<li class="nav-item">
<a data-bs-toggle="collapse" href="#quotation" class="nav-link  {{ ($prefix == '/quotation')?'active':'' }}" aria-controls="ecommerceExamples" role="button">
<div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center  me-2">
<svg class="text-dark" width="12px" height="12px" viewBox="0 0 42 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<title>basket</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-1869.000000, -741.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(1716.000000, 291.000000)">
<g id="basket" transform="translate(153.000000, 450.000000)">
<path class="color-background" d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z" opacity="0.595377604"></path>
<path class="color-background" d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"></path>
</g>
</g>
</g>
</g>
</svg>
</div>

<span class="nav-link-text ms-1">Quotation </span>
</a>
<div class="collapse hide" id="quotation" style="">
<ul class="nav ms-4 ps-3">
<li class="nav-item">
<a class="nav-link {{ ($route == 'admin.quotation')? 'active':'' }}" href="{{ route('admin.quotation') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Add Quotation</span>
</a>
<a class="nav-link {{ ($route == 'all.quotation')? 'active':'' }}" href="{{ route('all.quotation') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Manage Quotaion</span>
</a>
</li>
</ul>
</div>
</li>
@else
@endif


@if($purchase == true)
<li class="nav-item">
<a data-bs-toggle="collapse" href="#purchase" class="nav-link  {{ ($prefix == '/purchase')?'active':'' }}" aria-controls="ecommerceExamples" role="button">
<div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center  me-2">
<svg class="text-dark" width="12px" height="12px" viewBox="0 0 42 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<title>basket</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-1869.000000, -741.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(1716.000000, 291.000000)">
<g id="basket" transform="translate(153.000000, 450.000000)">
<path class="color-background" d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z" opacity="0.595377604"></path>
<path class="color-background" d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"></path>
</g>
</g>
</g>
</g>
</svg>
</div>

<span class="nav-link-text ms-1">Purchase</span>
</a>
<div class="collapse hide" id="purchase" style="">
<ul class="nav ms-4 ps-3">
<li class="nav-item">
<a class="nav-link {{ ($route == 'purchase.view')? 'active':'' }}" href="{{ route('purchase.view') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Add Purchase</span>
</a>
<a class="nav-link {{ ($route == 'purchase.manage')? 'active':'' }}" href="{{ route('purchase.manage') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Manage Purchase</span>
</a>
</li>
</ul>
</div>
</li>
@else
@endif


@if($hr == true)
<li class="nav-item">
<a data-bs-toggle="collapse" href="#hr" class="nav-link  {{ ($prefix == '/hr')?'active':'' }}" aria-controls="ecommerceExamples" role="button">
<div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center  me-2">
<svg class="text-dark" width="12px" height="12px" viewBox="0 0 42 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<title>basket</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-1869.000000, -741.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(1716.000000, 291.000000)">
<g id="basket" transform="translate(153.000000, 450.000000)">
<path class="color-background" d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z" opacity="0.595377604"></path>
<path class="color-background" d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"></path>
</g>
</g>
</g>
</g>
</svg>
</div>

<span class="nav-link-text ms-1">HR</span>
</a>
<div class="collapse hide" id="hr" style="">
<ul class="nav ms-4 ps-3">
<li class="nav-item">
<a class="nav-link {{ ($route == 'employee.add')? 'active':'' }}" href="{{ route('employee.add') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Add Employee</span>
</a>
<a class="nav-link {{ ($route == 'purchase.manage')? 'active':'' }}" href="{{ route('purchase.manage') }}">
  <span class="sidenav-mini-icon"></span>
  <span class="sidenav-normal">Manage Employee</span>
  </a>
<a class="nav-link {{ ($route == 'designation.add')? 'active':'' }}" href="{{ route('designation.add') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Add Designation</span>
</a>
</li>
</ul>
</div>
</li>
@else
@endif


@if($expense == true)
<li class="nav-item">
<a data-bs-toggle="collapse" href="#expense" class="nav-link  {{ ($prefix == '/expense')?'active':'' }}" aria-controls="ecommerceExamples" role="button">
<div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center  me-2">
<svg class="text-dark" width="12px" height="12px" viewBox="0 0 42 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<title>basket</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-1869.000000, -741.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(1716.000000, 291.000000)">
<g id="basket" transform="translate(153.000000, 450.000000)">
<path class="color-background" d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z" opacity="0.595377604"></path>
<path class="color-background" d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"></path>
</g>
</g>
</g>
</g>
</svg>
</div>

<span class="nav-link-text ms-1">Expense</span>
</a>
<div class="collapse hide" id="expense" style="">
<ul class="nav ms-4 ps-3">
<li class="nav-item">
<a class="nav-link {{ ($route == 'expenseType.view')? 'active':'' }}" href="{{ route('expenseType.view') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Add Expense Type</span>
</a>
<a class="nav-link {{ ($route == 'purchase.manage')? 'active':'' }}" href="{{ route('purchase.manage') }}">
  <span class="sidenav-mini-icon"></span>
  <span class="sidenav-normal">Manage Expense Type</span>
  </a>
<a class="nav-link {{ ($route == 'designation.add')? 'active':'' }}" href="{{ route('designation.add') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Manage Expense</span>
</a>
</li>
</ul>
</div>
</li>
@else
@endif


@if($supplier == true)
<li class="nav-item">
<a data-bs-toggle="collapse" href="#supplier" class="nav-link  {{ ($prefix == '/supplier')?'active':'' }}" aria-controls="ecommerceExamples" role="button">
<div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center d-flex align-items-center justify-content-center  me-2">
<svg class="text-dark" width="12px" height="12px" viewBox="0 0 42 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<title>basket</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-1869.000000, -741.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(1716.000000, 291.000000)">
<g id="basket" transform="translate(153.000000, 450.000000)">
<path class="color-background" d="M34.080375,13.125 L27.3748125,1.9490625 C27.1377583,1.53795093 26.6972449,1.28682264 26.222716,1.29218729 C25.748187,1.29772591 25.3135593,1.55890827 25.0860125,1.97535742 C24.8584658,2.39180657 24.8734447,2.89865282 25.1251875,3.3009375 L31.019625,13.125 L10.980375,13.125 L16.8748125,3.3009375 C17.1265553,2.89865282 17.1415342,2.39180657 16.9139875,1.97535742 C16.6864407,1.55890827 16.251813,1.29772591 15.777284,1.29218729 C15.3027551,1.28682264 14.8622417,1.53795093 14.6251875,1.9490625 L7.919625,13.125 L0,13.125 L0,18.375 L42,18.375 L42,13.125 L34.080375,13.125 Z" opacity="0.595377604"></path>
<path class="color-background" d="M3.9375,21 L3.9375,38.0625 C3.9375,40.9619949 6.28800506,43.3125 9.1875,43.3125 L32.8125,43.3125 C35.7119949,43.3125 38.0625,40.9619949 38.0625,38.0625 L38.0625,21 L3.9375,21 Z M14.4375,36.75 L11.8125,36.75 L11.8125,26.25 L14.4375,26.25 L14.4375,36.75 Z M22.3125,36.75 L19.6875,36.75 L19.6875,26.25 L22.3125,26.25 L22.3125,36.75 Z M30.1875,36.75 L27.5625,36.75 L27.5625,26.25 L30.1875,26.25 L30.1875,36.75 Z"></path>
</g>
</g>
</g>
</g>
</svg>
</div>

<span class="nav-link-text ms-1">Supplier</span>
</a>
<div class="collapse hide" id="supplier" style="">
<ul class="nav ms-4 ps-3">
<li class="nav-item">
<a class="nav-link {{ ($route == 'supplier.view')? 'active':'' }}" href="{{ route('supplier.view') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Add Supplier</span>
</a>
<a class="nav-link {{ ($route == 'supplier.manage')? 'active':'' }}" href="{{ route('supplier.manage') }}">
<span class="sidenav-mini-icon"></span>
<span class="sidenav-normal">Manage Supplier</span>
</a>
</li>
</ul>
</div>
</li>
@else
@endif



      @if($adminuserrole  == true)
      <li class="nav-item">
        <a class="nav-link {{ ($route == 'all.admin.user')? 'active':'' }}" href="{{ route('all.admin.user') }}">
          <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
            <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <title>credit-card</title>
              <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                  <g transform="translate(1716.000000, 291.000000)">
                    <g transform="translate(453.000000, 454.000000)">
                      <path class="color-background opacity-6" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"></path>
                      <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </div>
          <span class="nav-link-text ms-1">Admin User</span>
        </a>
      </li>
      @else
      @endif


      @if($bank == true)
      <li class="nav-item">
        <a class="nav-link {{ ($route == 'bank.view')? 'active':'' }}" href="{{ route('bank.view') }}">
          <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
            <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <title>credit-card</title>
              <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                  <g transform="translate(1716.000000, 291.000000)">
                    <g transform="translate(453.000000, 454.000000)">
                      <path class="color-background opacity-6" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"></path>
                      <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </div>
          <span class="nav-link-text ms-1">Manage Bank</span>
        </a>
      </li>
      @else
      @endif

      {{-- <li class="nav-item mt-3">
        <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account pages</h6>
      </li> --}}

    </ul>
  </div>
  <div class="sidenav-footer mx-3 ">
    <div class="card card-background shadow-none card-background-mask-secondary" id="sidenavCard">
      <div class="full-background" style="background-image: url('../assets/img/curved-images/white-curved.jpeg')"></div>
      <div class="card-body text-start p-3 w-100">
        <div class="icon icon-shape icon-sm bg-white shadow text-center mb-3 d-flex align-items-center justify-content-center border-radius-md">
          <i class="ni ni-diamond text-dark text-gradient text-lg top-0" aria-hidden="true" id="sidenavCardIcon"></i>
        </div>
        <div class="docs-info">
          <h6 class="text-white up mb-0">Need help?</h6>
          <p class="text-xs font-weight-bold">Please check our docs</p>
          <a href="https://www.creative-tim.com/learning-lab/bootstrap/license/soft-ui-dashboard" target="_blank" class="btn btn-white btn-sm w-100 mb-0">Documentation</a>
        </div>
      </div>
    </div>
    <a class="btn bg-gradient-primary mt-4 w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard-pro?ref=sidebarfree" type="button">Upgrade to pro</a>
  </div>
</aside>