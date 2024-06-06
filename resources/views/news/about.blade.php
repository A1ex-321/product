@extends('news.layout.app')

@section('content')

<div class="container-fluid page-header py-5" style="background-image: url('{{ asset('public/pro/img/ab.jpg') }}');margin-bottom: 6rem;height:520px;" style="">
    <div class="container py-5">
        <h1 class="display-3 text-white mb-3 animated slideInDown">About Us</h1>
        <nav aria-label="breadcrumb animated slideInDown">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                <li class="breadcrumb-item text-white active" aria-current="page">About</li>
            </ol>
        </nav>
    </div>
</div>
<!-- Page Header End -->


<!-- About Start -->
<!-- About Start -->
<div class="container-fluid overflow-hidden py-5 px-lg-0">
    <div class="container about py-5 px-lg-0">
        <div class="row g-5 mx-lg-0">
            <div class="col-lg-6 ps-lg-0 wow fadeInLeft" data-wow-delay="0.1s" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100" src="{{ asset('public/pro/img/c1.jpg') }}" style="object-fit: cover;" alt="">
                </div>
            </div>
            <div class="col-lg-6 about-text wow fadeInUp" data-wow-delay="0.3s">
                <h6 class="text-secondary text-uppercase mb-3">About Us</h6>
                <h2 class="mb-5">AA ENGINEERING & FABRICATION WORKS, CHENNAI</h2>
                <p class="mb-5" style="text-align:justify;">With a full range of proven products and service
                    packages, <span style="color: red;">AA ENGINEERING (AAE)</span> is one of India's most
                    experienced equipment and process optimization expert.
                    We supply unparalleled expertise in Mixing, Drying and
                    Milling Process Technology. The company adopts an
                    integrated approach to the design of each product, taking
                    into account preservation of product character,
                    environmental considerations and end user's objectives.
                </p>
                <p style="text-align:justify;">AAE is guarantees that all matters relating to your project
                    will be taken into consideration to ensure a tailor-made
                    solution precisely suited to meet your needs. We constantly
                    upgrade the technology, through continual improvement in
                    Process, Product & Quality Management systems. </p>
                <!-- <div class="row g-4 mb-5">
                        <div class="col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                            <i class="fa fa-globe fa-3x text-primary mb-3"></i>
                            <h5>Global Coverage</h5>
                            <p class="m-0">Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam justo.</p>
                        </div>
                        <div class="col-sm-6 wow fadeIn" data-wow-delay="0.7s">
                            <i class="fa fa-shipping-fast fa-3x text-primary mb-3"></i>
                            <h5>On Time Delivery</h5>
                            <p class="m-0">Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam justo.</p>
                        </div>
                    </div> -->
                <a href="" class="btn btn-primary py-3 px-5">Explore More</a>
            </div>
        </div>
    </div>
</div>
<!-- About End -->
<!-- About End -->


<!-- Fact Start -->
<!-- Fact Start -->
<div class="container-xxl py-5">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="text-secondary text-uppercase mb-3">Some Facts</h6>
                <h1 class="mb-5">SERVICE ,
                    QUALITY, TRUST </h1>
                <p class="mb-5">Experienced craftsmen,All metal types including steel, stainless,
                    galvanized, aluminum & copper,Design, fabrication & installation services </p>
                <div class="d-flex align-items-center">
                    <i class="fa fa-headphones fa-2x flex-shrink-0 bg-primary p-3 text-white"></i>
                    <div class="ps-4">
                        <h6>Call for any query!</h6>
                        <h3 class="text-primary m-0">
                            <a href="tel:+919710742032">+91 9710742032</a>
                        </h3>
                    </div>

                </div>
            </div>
            <div class="col-lg-6">
                <div class="row g-4 align-items-center">
                    <div class="col-sm-6">
                        <div class="bg-primary p-4 mb-4 wow fadeIn" data-wow-delay="0.3s">
                            <i class="fa fa-users fa-2x text-white mb-3"></i>

                            <p class="text-white mb-0">In business for over 12 years</p>
                        </div>
                        <div class="bg-secondary p-4 wow fadeIn" data-wow-delay="0.5s">
                            <i class="fa fa-ship fa-2x text-white mb-3"></i>
                            <p class="text-white mb-0">Quick turn capabilities</p>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="bg-success p-4 wow fadeIn" data-wow-delay="0.7s">
                            <i class="fa fa-star fa-2x text-white mb-3"></i>

                            <p class="text-white mb-0">Servicing all over India</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid overflow-hidden py-5 px-lg-0">
    <div class="container contact-page py-5 px-lg-0">
        <div class="row g-5 mx-lg-0">
            <div class="col-md-6 contact-form wow fadeIn" data-wow-delay="0.1s">
                <h2 class="mb-4 text-primary m-0">MANUFACTURING FACILITY</h2>
                <ul>
                    <li>1,000 Sq. Ft. Land</li>
                    <li>TIG/MIG/ARC Welding Machines</li>
                    <li>Rolling Machines </li>
                    <li>Plasma Cutting Machines</li>
                    <li>Drilling Machines </li>
                    <li>Hack-Saw Cutting Machines </li>
                    <li>Lathe Facility </li>
                </ul>
                <h2 class="mb-4 text-primary m-0">STRENGTH</h2>
                <ul>
                    <li>Ensuring exact requirement of end customers – trial and R&D</li>
                    <li>User Friendly Equipment’s</li>
                    <li>Long Life and High Reliability </li>
                    <li>Senior level team building in our organization over the decades</li>

                </ul>
            </div>
            <div class="col-md-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s">
                <h2 class="mb-4 text-primary m-0">MANUFACTURING PRACTICE</h2>
                <ul>
                    <li>Under ASME Section VIII – DIVISION I & II</li>
                    <li>Qualified Welders under ASME II</li>
                    <li>GMP Standard Equipment’s </li>
                    <li>Pert Chart</li>

                </ul>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid overflow-hidden py-5 px-lg-0">
    <div class="container contact-page py-5 px-lg-0">
        <div class="row g-5 mx-lg-0">
            <div class="col-md-6 contact-form wow fadeIn" data-wow-delay="0.1s">
                <h2 class="mb-4 text-primary m-0">FABRICATION CAPABILITIES</h2>
                <ul>
                    <li>Plasma cutting</li>
                    <li>Press brake forming </li>
                    <li>Shearing </li>
                    <li>Punching</li>
                    <li>Welding (MIG, TIG, stick weld,
                        spot weld) </li>
                    <li>Drilling </li>
                    <li>Rolling </li>
                    <li>Polishing </li>

                </ul>
                <h2 class="mb-4 text-primary m-0">FACILITIES SUPPORTED</h2>
                <ul>
                    <li>Industrial manufacturing</li>
                    <li>Automobiles Industries</li>
                    <li>Chemical & Paint Industries </li>
                    <li>Dairy & Food Industries</li>
                    <li>Pharmaceutical companies</li>
                    <li>Construction site installations </li>


                </ul>

            </div>
            <div class="col-md-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s">
                <h2 class="mb-4 text-primary m-0" >TYPICAL PROJECTS
                </h2>
                <ul>
                    <li>Structural Frames & Pallets </li>
                    <li>Machine guarding</li>
                    <li>Platforms & frames </li>
                    <li>Metal staircases </li>
                    <li>Material handling Equipment’s </li>
                    <li>Storage tanks </li>
                    <li>Machining works </li>
                </ul>
                <h2 class="mb-4 text-primary m-0" style="margin-top:35px !important;">SECTORS WE WORK 
</h2>
                <ul>
                    <li>Pharma pharmaceutical</li>
                  
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection