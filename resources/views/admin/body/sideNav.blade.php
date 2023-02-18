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
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="256" height="256" viewBox="0 0 256 256" xml:space="preserve">

              <defs>
              </defs>
              <g style="stroke: none; stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: none; fill-rule: nonzero; opacity: 1;" transform="translate(1.4065934065934016 1.4065934065934016) scale(2.81 2.81)">
                <path d="M 45 49.519 L 45 49.519 c -7.68 0 -13.964 -6.284 -13.964 -13.964 v -5.008 c 0 -7.68 6.284 -13.964 13.964 -13.964 h 0 c 7.68 0 13.964 6.284 13.964 13.964 v 5.008 C 58.964 43.236 52.68 49.519 45 49.519 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 52.863 51.438 c -2.362 1.223 -5.032 1.927 -7.863 1.927 s -5.501 -0.704 -7.863 -1.927 C 26.58 53.014 18.414 62.175 18.414 73.152 v 14.444 c 0 1.322 1.082 2.403 2.403 2.403 h 48.364 c 1.322 0 2.403 -1.082 2.403 -2.403 V 73.152 C 71.586 62.175 63.42 53.014 52.863 51.438 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 71.277 34.854 c -2.362 1.223 -5.032 1.927 -7.863 1.927 c -0.004 0 -0.007 0 -0.011 0 c -0.294 4.412 -2.134 8.401 -4.995 11.43 c 10.355 3.681 17.678 13.649 17.678 24.941 v 0.263 h 11.511 c 1.322 0 2.404 -1.082 2.404 -2.404 V 56.568 C 90 45.59 81.834 36.429 71.277 34.854 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 63.414 0 c -7.242 0 -13.237 5.589 -13.898 12.667 c 8 2.023 13.947 9.261 13.947 17.881 v 2.385 c 7.657 -0.027 13.914 -6.298 13.914 -13.961 v -5.008 C 77.378 6.284 71.094 0 63.414 0 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 13.915 73.152 c 0 -11.292 7.322 -21.261 17.677 -24.941 c -2.861 -3.029 -4.702 -7.019 -4.995 -11.43 c -0.004 0 -0.007 0 -0.011 0 c -2.831 0 -5.5 -0.704 -7.863 -1.927 C 8.166 36.429 0 45.59 0 56.568 v 14.444 c 0 1.322 1.082 2.404 2.404 2.404 h 11.511 V 73.152 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 26.536 32.932 v -2.385 c 0 -8.62 5.946 -15.858 13.947 -17.881 C 39.823 5.589 33.828 0 26.586 0 c -7.68 0 -13.964 6.284 -13.964 13.964 v 5.008 C 12.622 26.635 18.879 32.905 26.536 32.932 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
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
  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 122.88 94.18" style="enable-background:new 0 0 122.88 94.18" xml:space="preserve"><style type="text/css"><![CDATA[
    .st0{fill-rule:evenodd;clip-rule:evenodd;}
  ]]></style><g><path class="st0" d="M34.02,65.66c5.81,12.12,23.43,12.54,28.99,0.07c-1.51-1.54-2.64-3.19-3.76-4.82 c-0.18-0.26-0.37-0.54-0.56-0.8c-2.69,2.13-5.94,3.49-10.19,3.48c-4.58-0.01-8.03-1.77-10.86-4.35c-0.17-0.15-0.34-0.31-0.5-0.47 c-0.4,1.13-0.92,2.47-1.47,3.73C35.13,63.69,34.56,64.84,34.02,65.66L34.02,65.66L34.02,65.66z M104.88,56.89V78.4l-8.6-5.04 l-8.66,5.47V56.89H75.39c-1.16,0-2.12,0.95-2.12,2.12v29.34c0,1.16,0.96,2.11,2.12,2.11h41.73c1.16,0,2.11-0.96,2.11-2.11V59 c0-1.16-0.95-2.12-2.11-2.12H104.88L104.88,56.89z M91.27,56.89v15.34l4.94-3.12l5.03,2.95V56.89H91.27L91.27,56.89z M75.39,53.24 h12.24h17.26h12.24c1.58,0,3.01,0.65,4.06,1.69l0.01,0.01c1.04,1.04,1.69,2.48,1.69,4.06v29.34c0,1.57-0.65,3.01-1.69,4.05 l-0.01,0.01c-1.05,1.04-2.49,1.69-4.05,1.69H93.79c-0.06,0.03-0.13,0.06-0.19,0.08H2.51c-3.54-0.7-5.39-13.17,8.9-21.14 c5.77-3.22,14.63-4.28,20.86-8.63c0.46-0.69,0.95-1.69,1.43-2.77c0.71-1.64,1.37-3.42,1.79-4.63c-1.75-2.05-3.23-4.37-4.67-6.66 l-4.73-6.14c-1.73-2.58-2.62-4.94-2.68-6.86c-0.03-0.91,0.13-1.74,0.46-2.46c0.36-0.76,0.89-1.39,1.63-1.89 c0.34-0.23,0.72-0.42,1.15-0.58c-0.31-4.07-0.42-7.83-0.23-12.14c0.1-1.02,0.3-2.04,0.58-3.06c5.72-20.36,35.63-22.69,39.84-6.77 c2.62,2.84,4.27,6.6,4.63,11.58L71.17,32.9l0,0c1.31,0.4,2.15,1.23,2.49,2.58c0.38,1.49-0.03,3.59-1.3,6.46l0,0 c-0.02,0.05-0.05,0.1-0.08,0.15l-5.39,7.49c-1.97,3.26-3.99,6.53-6.61,9.1c0.23,0.34,0.47,0.69,0.71,1.02 c1.07,1.56,2.14,3.13,3.53,4.53c0.05,0.04,0.08,0.08,0.11,0.13l0,0c1.57,1.11,3.25,2,4.99,2.77V59c0-1.59,0.65-3.03,1.69-4.07 C72.36,53.89,73.8,53.24,75.39,53.24L75.39,53.24z M29.38,34.6c-1.04,0.04-1.84,0.25-2.38,0.62c-0.31,0.21-0.54,0.47-0.69,0.79 c-0.16,0.35-0.24,0.78-0.23,1.27c0.04,1.44,0.8,3.32,2.25,5.48l0.02,0.03l0,0l4.73,6.14c1.89,3.02,3.88,6.08,6.35,8.34 c2.38,2.17,5.26,3.64,9.06,3.65c4.13,0.01,7.15-1.51,9.59-3.81c2.55-2.39,4.56-5.65,6.54-8.91l5.32-7.39 c1-2.27,1.35-3.78,1.13-4.66c-0.13-0.53-0.71-0.79-1.71-0.84c-0.21-0.01-0.43-0.01-0.65-0.01c-0.24,0.01-0.49,0.02-0.74,0.05 c-0.14,0.01-0.28,0-0.41-0.03c-0.47,0.03-0.96-0.01-1.46-0.08l1.82-6.69c-13.53,2.13-23.65-7.92-37.95-2.01l1.03,8.13 C30.42,34.69,29.89,34.67,29.38,34.6L29.38,34.6L29.38,34.6L29.38,34.6z"/></g></svg>
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
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="256" height="256" viewBox="0 0 256 256" xml:space="preserve">

              <defs>
              </defs>
              <g style="stroke: none; stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: none; fill-rule: nonzero; opacity: 1;" transform="translate(1.4065934065934016 1.4065934065934016) scale(2.81 2.81)">
                <path d="M 38.877 40.375 L 38.877 40.375 c -9.415 0 -17.118 -7.703 -17.118 -17.118 v -6.139 C 21.759 7.703 29.462 0 38.877 0 h 0 c 9.415 0 17.118 7.703 17.118 17.118 v 6.139 C 55.995 32.672 48.292 40.375 38.877 40.375 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 50.103 75.603 c 0 -10.209 7.969 -18.535 18.022 -19.154 c -3.98 -7.222 -11.159 -12.461 -19.609 -13.722 c -2.896 1.499 -6.169 2.363 -9.639 2.363 c -3.47 0 -6.743 -0.863 -9.639 -2.363 C 16.296 44.659 6.286 55.889 6.286 69.347 v 17.707 C 6.286 88.674 7.612 90 9.232 90 h 47.391 C 52.633 86.479 50.103 81.342 50.103 75.603 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 69.317 71.603 c -2.209 0 -4 1.791 -4 4 c 0 2.209 1.791 4 4 4 c 2.209 0 4 -1.791 4 -4 C 73.317 73.394 71.526 71.603 69.317 71.603 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
                <path d="M 69.317 61.206 c -7.951 0 -14.397 6.446 -14.397 14.397 C 54.92 83.554 61.366 90 69.317 90 c 7.951 0 14.397 -6.446 14.397 -14.397 C 83.714 67.652 77.268 61.206 69.317 61.206 z M 77.912 77.408 c 0 0.137 -0.111 0.249 -0.249 0.249 h -1.138 c -0.159 0.56 -0.379 1.095 -0.657 1.593 l 0.803 0.803 c 0.097 0.097 0.097 0.255 0 0.352 l -2.552 2.552 c -0.097 0.097 -0.255 0.097 -0.352 0 l -0.803 -0.803 c -0.499 0.278 -1.033 0.498 -1.593 0.657 v 1.138 c 0 0.137 -0.111 0.249 -0.249 0.249 h -3.61 c -0.137 0 -0.249 -0.111 -0.249 -0.249 v -1.138 c -0.56 -0.159 -1.095 -0.379 -1.593 -0.657 l -0.803 0.803 c -0.097 0.097 -0.255 0.097 -0.352 0 l -2.552 -2.552 c -0.097 -0.097 -0.097 -0.255 0 -0.352 l 0.803 -0.803 c -0.278 -0.499 -0.498 -1.033 -0.657 -1.593 h -1.138 c -0.137 0 -0.249 -0.111 -0.249 -0.249 v -3.61 c 0 -0.137 0.111 -0.249 0.249 -0.249 h 1.138 c 0.159 -0.56 0.379 -1.095 0.657 -1.593 l -0.803 -0.803 c -0.097 -0.097 -0.097 -0.255 0 -0.352 l 2.552 -2.552 c 0.097 -0.097 0.255 -0.097 0.352 0 l 0.803 0.803 c 0.499 -0.278 1.033 -0.498 1.593 -0.657 v -1.138 c 0 -0.137 0.111 -0.249 0.249 -0.249 h 3.61 c 0.137 0 0.249 0.111 0.249 0.249 v 1.138 c 0.56 0.159 1.095 0.379 1.593 0.657 l 0.803 -0.803 c 0.097 -0.097 0.255 -0.097 0.352 0 l 2.552 2.552 c 0.097 0.097 0.097 0.255 0 0.352 l -0.803 0.803 c 0.278 0.499 0.498 1.033 0.657 1.593 h 1.138 c 0.137 0 0.249 0.111 0.249 0.249 V 77.408 z" style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #3a416f; fill-rule: nonzero; opacity: 1;" transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round"/>
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