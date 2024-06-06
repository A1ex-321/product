<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>AAE Machinery</title>
    <!-- <img src="{{ asset('public/pro/img/lo.jpg') }}" alt="Description of the image" title="Title of the image"> -->
    <link rel="icon" type="image/png" href="{{ asset('public/pro/img/lo.jpg') }}">

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('public/pro/lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('public/pro/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('public/pro/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('public/pro/css/style.css') }}" rel="stylesheet">
</head>
<style>
    #late {
        background-color: #e3101e;
        /* Green */
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 8px;
        width: 200px;
    }

    /* Add this style to control z-index */
    /* .dropdown-menu {
        z-index: 1000; /* Adjust the value as needed 
    } */
    .submenu {
        padding: 10px;
        font-size: 17px;
        background-color: white;
        position: absolute;
        width: 400px;
        right: 100%;
        /* Position the submenu to the right of the category title */
        top: 20px;
        /* Added 'px' unit */
    }

    .submenu a {
        display: block;
        /* Display anchor tags as block-level elements */
        margin-bottom: 5px;
        /* Add some spacing between each anchor tag */
        text-decoration: none;
        /* Remove default underline */
        color: black;
        /* Set anchor tag color */
    }

    /* Media query for mobile devices */
    @media (max-width: 767px) {
        .submenu {
            right: auto;
            /* Remove right positioning */
            left: 0;
            /* Position the submenu to the left */
            top: auto;
            /* Remove top positioning */
            bottom: 0;
            /* Position the submenu at the bottom */
        }
    }

    @media (max-width: 767px) {
        .dropdown-item:hover {
            background-color: #db2504 !important;
            /* Change background color on hover */
        }

        .blog-link {
            padding: 4px;
            background-color: #9596de;
            /* Change background color on hover */
            color: black;
            border-radius: 3px;

        }
    }


    .blog-link:hover {
        background-color: #8d9091;
        /* Change background color on hover */
        color: #4648e8;
        border-radius: 3px;
        padding: 4px;

    }

    .dropdown-item:hover {
        color: #4648e8;
    }

    .dropdown-item:hover {
        background-color: #8d9091 !important;
        /* Change background color on hover */
    }
</style>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow border-top border-5 border-primary sticky-top p-0">
        <!-- <a href="{{ url('/') }}" class="navbar-brand bg-primary d-flex align-items-center px-4 px-lg-5" style="background-color:white!important;">
            <img id="al"src="" style="height:75px;width:100%;" alt="">
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button> -->
        <div class="d-flex align-items-center">
            <a href="{{ url('/') }}" class="navbar-brand bg-primary d-flex align-items-center px-4 px-lg-5" style="background-color:white!important;">
                <img id="al" src="" style="height:75px;width:100%;" alt="">
            </a>
            <button type="button" class="navbar-toggler ms-auto" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="{{ url('/') }}" class="nav-item nav-link {{ Request::is('/') ? 'active' : '' }}">Home</a>
                <a href="{{ url('/about1') }}" class="nav-item nav-link {{ Request::is('about1') ? 'active' : '' }}">About</a>
                <div class="nav-item dropdown">
                    <a href="{{ url('/product') }}" class="nav-link nav-link {{ Request::is('product*') ? 'active' : '' }}">
                        Product <i class="fas fa-chevron-down"></i>
                    </a>
                    <div class="dropdown-menu fade-up m-0" id="categoryDropdown">
                        <!-- Dropdown items will be dynamically added here -->
                    </div>
                </div>
                <a href="{{ url('/client') }}" class="nav-item nav-link {{ Request::is('client') ? 'active' : '' }}">Clients</a>
                <a href="{{ url('/contacts') }}" class="nav-item nav-link {{ Request::is('contacts') ? 'active' : '' }}">Contact</a>
            </div>
            <h4 class="m-0 pe-lg-5 d-none d-lg-block"><a href="tel:+919710742032"><i class="fa fa-headphones text-primary me-3"></i>
                    <!-- +91 9710742032 -->
                </a></h4>

        </div>

    </nav>