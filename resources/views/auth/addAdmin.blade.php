<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Add Admin</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/navbars-offcanvas/">

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
          
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: black rgba(0, 0, 0, .1);
        border: solid black rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    
<!-- <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Next</a>
  
  
  <div class="navbar-nav">
  
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="{{ route('adminlogout') }}">Sign out</a>
    </div>
  </div>
</header> -->
<nav class="navbar navbar-dark bg-dark" aria-label="Dark offcanvas navbar">
    <div class="container-fluid">
      <p class="navbar-brand" >ZEST</p>
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbarDark" aria-controls="offcanvasNavbarDark">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbarDark" aria-labelledby="offcanvasNavbarDarkLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel">ADMIN</h5>
          <button  type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div  class="offcanvas-body">
          <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
            <li class="nav-item">
              <a style='color: black;' class="nav-link active" aria-current="page" href="{{ route('adminhome') }}">Home</a>
            </li>
            <li class="nav-item">
              <a style='color: black;' class="nav-link" href="{{ route('addAdmin') }}">Add New Admin</a>
            </li>
            <li class="nav-item dropdown">
              <a style='color: black;' class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Account
              </a>
              <ul class="dropdown-menu">
                <li><a style='color: black;' class="dropdown-item" href="{{ route('adminProfile') }}">Admin Profile</a></li>
                <li><a style='color: black;' class="dropdown-item" href="{{ route('adminlogout') }}">Sign Out</a></li>
                <!-- <li>
                  <hr class="dropdown-divider">
                </li>
                <li><a style='color: black;' class="dropdown-item" href="#">Something else here</a></li> -->
              </ul>
            </li>
          </ul>
          
        </div>
      </div>
    </div>
  </nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{ route('inventory') }}">
              <span data-feather="home" class="align-text-bottom"></span>
              Inventory
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('addCategory') }}">
              <span data-feather="shopping-cart" class="align-text-bottom"></span>
              Add Category
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('showCustomers') }}">
              <span data-feather="users" class="align-text-bottom"></span>
              Registered Customers
            </a>
          </li>
          
        </ul>

        <!-- <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
          <span>Saved reports</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle" class="align-text-bottom"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Current month
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Last quarter
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Social engagement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text" class="align-text-bottom"></span>
              Year-end sale
            </a>
          </li>
        </ul> -->
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add New Admin</h1>
        <!-- <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar" class="align-text-bottom"></span>
            This week
          </button>
        </div> -->
      </div>
      <form class="row g-3" method="POST" action="{{ route('addnewadmin') }}" enctype="multipart/form-data">
      @csrf
  <div class="col-md-2">
    <label for="fname" class="form-label">First Name</label>
    <input type="text" class="form-control" id="fname" name="fname" >
    @if ($errors->has('fname'))
    <span class="text-danger">{{ $errors->first('fname') }}</span>
    @endif
  </div>
  <div class="col-md-2">
    <label for="lname" class="form-label">Last Name</label>
    <input type="text" class="form-control" id="lname" name="lname" >
    @if ($errors->has('lname'))
    <span class="text-danger">{{ $errors->first('lname') }}</span>
    @endif
  </div>
  <div class="col-md-4">
    <label for="email" class="form-label">Email</label>
    <input type="text" class="form-control" id="email" name="email" >
    @if ($errors->has('email'))
    <span class="text-danger">{{ $errors->first('email') }}</span>
    @endif
  </div>
  <div class="col-md-4">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" name="password" >
    @if ($errors->has('password'))
    <span class="text-danger">{{ $errors->first('password') }}</span>
    @endif
  </div>
  <div class="col-md-4">
    <label for="birthday" class="form-label">Date Of Birth</label>
    <input type="date" class="form-control" id="birthday" name="birthday" >
    @if ($errors->has('birthday'))
    <span class="text-danger">{{ $errors->first('birthday') }}</span>
    @endif
  </div>
  <div class="col-md-4">
    <label for="contact" class="form-label">Contact</label>
    <input type="text" class="form-control" id="contact" name="contact" >
    @if ($errors->has('contact'))
    <span class="text-danger">{{ $errors->first('contact') }}</span>
    @endif
  </div>
  <div class="col-md-6">
    <label for="house_no" class="form-label">House No.</label>
    <input type="text" class="form-control" id="house_no" name="house_no" >
    @if ($errors->has('house_no'))
    <span class="text-danger">{{ $errors->first('house_no') }}</span>
    @endif
  </div>
  
  <div class="col-md-2">
    <label for="postal_code" class="form-label">Postal Code</label>
    <input type="text" class="form-control" id="postal_code" name="postal_code" >
    @if ($errors->has('postal_code'))
    <span class="text-danger">{{ $errors->first('postal_code') }}</span>
    @endif
  </div>
  
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Add This Admin</button>
  </div>
</form>

      

      
    </main>
  </div>
</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
  </body>
</html>
