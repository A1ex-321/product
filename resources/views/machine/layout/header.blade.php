<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Indusrial Business</title>

    <!-- responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- For IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- master stylesheet -->
    <link rel="stylesheet" href="{{ asset('public/machine/css/style.css') }}">
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="{{ asset('public/machine/css/responsive.css') }}">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('public/machine/images/favicon/apple-touch-icon.png') }}">

    <link rel="icon" type="image/png" href="{{ asset('public/machine/images/favicon/favicon-32x32.png') }}" sizes="32x32">

    <link rel="icon" type="image/png" href="{{ asset('public/machine/images/favicon/favicon-16x16.png') }}" sizes="16x16">


    <!-- Fixing Internet Explorer-->
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="js/html5shiv.js"></script>
    <![endif]-->

</head>

<body>
    <div class="boxed_wrapper">
        <!--Start Preloader -->

        <!--End Preloader -->

        <!--Start Top bar area -->
        <section class="top-bar-area">
            <div class="container">
                <div class="clearfix">
                    <div class="pull-left">
                        <p>Welcome to our buisness</p>
                    </div>
                    <div class="pull-right">
                        <!-- <p><i class="fa fa-clock-o"></i>Monday - friday : 8:00 AM to 7:00 Pm</p> -->
                    </div>
                </div>

            </div>
        </section>
        <!--End Top bar area -->

        <!--Start header area-->
        <header class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-3 col-sm-12 col-xs-12">
                        <div class="logo">
                            <a href="{{ url('/') }}">
                                <img src="{{ asset('public/machine/images/logo/logo.png') }}" alt="Awesome Logo">
                            </a>
                        </div>
                    </div>
                    <!-- <div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">
                <div class="header-contact-info">
                    <ul>
                        <li>
                            <div class="iocn-holder">
                                <span class="fa fa-home"></span>
                            </div>
                            <div class="text-holder">

                                <h6>321,North Street,</h6>
                                <p>Chennai</p>
                            </div>
                        </li>
                        <li>
                            <div class="iocn-holder">
                                <span class="icon-technology-1"></span>
                            </div>
                            <div class="text-holder">
                                <h6>Call Us On</h6>
                                <p>+91 96854742545</p>
                            </div>
                        </li>
                        <li>
                            <div class="iocn-holder">
                                <span class="icon-letter-1"></span>
                            </div>
                            <div class="text-holder">
                                <h6>Mail Us @</h6>
                                <a href="#"><p>demo@gmail.com</p></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div> -->


                </div>
            </div>
        </header>
        <!--End header area-->

        <!--Start mainmenu area-->
        <section class="mainmenu-area stricky">
            <div class="container">
                <div class="mainmenu-bg">
                    <div class="row">
                        <div class="col-md-9 col-sm-12 col-xs-12">
                            <!--Start mainmenu-->
                            <nav class="main-menu">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div class="navbar-collapse collapse clearfix">
                                    <ul class="navigation clearfix">

                                        <li class="dropdown"> <a href="{{ url('/') }}">
                                                home</a>

                                        </li>
                                        <li class="dropdown">                        <a href="{{ url('/about') }}">
About us</a>

                                        </li>
                                        <li class="dropdown">                        <a href="{{ url('service') }}">
Services</a>
                                            <!-- <ul>
                                        <li><a href="service.html">service</a></li>
                                        <li><a href="single-service.html">single service</a></li>
                                    </ul> -->
                                        </li>

                                        <li class="dropdown">                        <a href="{{ url('/blog') }}">
Blogs</a>
                                            <!-- <ul>
                                        <li><a href="blog.html">Blog Default</a></li>
                                        <li><a href="blog-single.html">Blog Single Post</a></li>
                                    </ul> -->
                                        </li>
                                        <!-- <li class="dropdown"><a href="shop.html">Shop</a>
                                    <ul>
                                        <li><a href="shop.html">Shop Products</a></li>
                                        <li><a href="shop-single.html">Single Product</a></li>
                                        <li><a href="shopping-cart.html">Shopping Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="account.html">My Account</a></li>
                                    </ul>
                                </li> -->
                                        <li><a href="{{ url('/contact') }}">Contact Us</a></li>
                                    </ul>
                                    <ul class="mobile-menu clearfix">

                                        <li class="dropdown"><a href="index.html">home</a>

                                        </li>
                                        <li class="dropdown"><a href="about.html">About us</a>

                                        </li>
                                        <li class="dropdown"><a href="service.html">Services</a>

                                        </li>

                                        <li class="dropdown"><a href="blog.html">Blogs</a>
                                            <!-- <ul>
                                        <li><a href="blog.html">Blog Default</a></li>
                                        <li><a href="blog-single.html">Blog Single Post</a></li>
                                    </ul> -->
                                        </li>

                                        <li><a href="{{ url('/contact') }}">Contact Us</a></li>
                                    </ul>
                                </div>
                            </nav>
                            <!--End mainmenu-->

                        </div>

                    </div>
                    <div class="right-column">
                        <div class="right-area">
                            <div class="nav_side_content">
                                <!-- <div class="search_option">
                            <button class="search tran3s dropdown-toggle color1_bg" id="searchDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search" aria-hidden="true"></i></button>
                            <form action="#" class="dropdown-menu" aria-labelledby="searchDropdown">
                                <input type="text" placeholder="Search...">
                                <button><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                       </div> -->

                            </div>
                            <div class="link_btn float_right">
                                <a href="{{ url('/contact') }}" class="thm-btn bg-clr1">Call Us</a>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </section>