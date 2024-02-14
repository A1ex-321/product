@extends('machine.layout.app')

@section('content')
<!--Start breadcrumb area-->     
<section class="breadcrumb-area" style="background-image: url('{{ asset('public/machine/images/dmitriy-demidov-iuuJC_pjLU0-unsplash.jpg') }}');
">
	<div class="container text-center">
		<h1>blog Single Post</h1>
	</div>
</section>
<!--End breadcrumb area-->




<section id="blog-area" class="blog-with-sidebar-area blog-single-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                <div class="blog-post">
                    <div class="single-blog-post">
                        <div class="img-holder">
                        <img src="{{ asset('public/machine/images/zanelle-lofty-eaton-2SjhIreAIN4-unsplash.jpg') }}" alt="Awesome Image">

                        </div>
                        <div class="text-holder">
                            <h3 class="blog-title">Got A Dream And We Just Know Now We're Gonna Make</h3>
                            <div class="text">
                                <p>The great explorer of the truth, the master-builder of human happiness one rejects, dislikes, avoids seds pleasure itself, because it is pleasure, but because those sedswho do not know how to pursue pleasure rationally works of encounter consequences works seds that are extremely painfull the master-builder of human seds happiness because it is pursue pleasure ationally works of encounter.</p>
                                <p>Who loves or pursues or desires to obtain pain of itself because pain because occasionally circumtance circumstances occur in which toil and pain can procure him some great pleasure. To take a which of us ever uts undertakes laborious  encounter consequences seds that are extremely ocassionaly painful.</p>
                            </div>
                            <div class="middle-content-box">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="img-holder">
                                        <img src="{{ asset('public/machine/images/cecep-rahmat-p6w82CYxq0c-unsplash.jpg') }}" alt="Awesome Image">

                                        </div>
                                        <div class="text-box">
                                            <p>They have got my project time with competition sedswith a highly skilled, well-organized  encounter consequences seds that are extremely painful the builder of human happiness. </p>
                                            <h3>Dohn Gaskel</h3>
                                            <h5>Manager</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bottom-content-box">
                                <p>Know how to pursue pleasure rationally encounter consequences that seds are extremely painful seds or again is there anyone who loves us or pursues or desires to obtain pain of itself, because seds our it pain, but because occasionally circumstances encounter consequences that seds are extremely painful circumstances..</p>
                            </div>
                            <div class="meta-info clearfix">
                                <div class="left pull-left">
                                    <ul class="post-info">
                                        <li>By <a href="#">Fletcher</a></li>
                                        <li><a href="#">Financial, Consulting</a></li>    
                                        <li><a href="#">22 Comments</a></li>    
                                        <li><a href="#">54 Likes</a></li>    
                                    </ul>    
                                </div>
                                <div class="right pull-right">
                                    <a class="post-share" href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>  
                                </div>
                            </div> 
                        </div>
                    </div>
                    
                    <div class="comment-box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="sec-title">
                                    <h3>Read Comments</h3>
                                    <span class="border"></span>
                                </div>
                                <!--Start single comment box-->
                                <div class="single-comment-box">
                                    <div class="img-holder">
                                    <img src="{{ asset('public/machine/images/avatar2.png') }}" alt="Awesome Image">

                                    </div>
                                    <div class="text-holder">
                                        <div class="top">
                                            <div class="date pull-left">
                                                <h5>Steven Rich – Sep 17, 2023:</h5>
                                            </div>
                                            <div class="review-box pull-right">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="text">
                                            <p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--End single comment box-->
                                <!--Start single comment box-->
                                <div class="single-comment-box">
                                    <div class="img-holder">
                                    <img src="{{ asset('public/machine/images/avatar1.png') }}" alt="Awesome Image">

                                    </div>
                                    <div class="text-holder">
                                        <div class="top">
                                            <div class="date pull-left">
                                                <h5>William Cobus – Aug 21, 2023:</h5>
                                            </div>
                                            <div class="review-box pull-right">
                                                <ul>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star-half-o"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="text">
                                            <p>There anyone who loves or pursues or desires to obtain pain itself, because it is pain, because occasionally circumstances occur some great pleasure.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--End single comment box-->
                            </div>
                        </div>
                    </div>
                    
                    <div class="add-comment-box">
                        <div class="sec-title">
                            <h3>Leave Your Reply</h3>
                            <span class="border"></span>
                        </div>

                        <form id="add-comment-form" action="#" novalidate="novalidate">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-6">

                                            <input type="text" name="form_name" value="" placeholder="Your Name*" required="" aria-required="true">
                                        </div>
                                        <div class="col-md-6">
                                            <input type="email" name="form_email" value="" placeholder="Your Email*" required="" aria-required="true">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <input type="text" name="website" value="" placeholder="Website">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <textarea name="comment" placeholder="Your Comments*" required="" aria-required="true"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button class="thm-btn bg-clr1" type="submit">Post Comments</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </form>
                    </div>
                    
                    
                </div>
            </div>
            <!--Start sidebar Wrapper-->
            <div class="col-lg-3 col-md-4 col-sm-7 col-xs-12">
                <div class="sidebar-wrapper">
                    <!--Start single sidebar-->
                    <!-- <div class="single-sidebar">
                        <form class="search-form" action="#">
                            <input placeholder="Search..." type="text">
                            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </div> -->
                    <!--End single sidebar-->
                    <!--Start single sidebar-->
                    <div class="single-sidebar">
                        <div class="sec-title">
                            <h3>Categories</h3>
                            <span class="border"></span>
                        </div>
                        <ul class="categories clearfix">
                            <li>
                                <a href="#">
                                    Precision Machining Solutions
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    CNC Machining Services
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Custom Metal Fabrication
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Prototyping and Production Machining
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Specialty Machining Services
                                </a>
                            </li>

                        </ul>
                    </div>
                    <!--End single sidebar-->
                    <!--Start single sidebar--> 
                    <div class="single-sidebar">
                        <div class="sec-title">
                            <h3>Recent News</h3>
                            <span class="border"></span>
                        </div>
                        <ul class="recent-post">
                            <li>
                                <div class="img-holder">
                                <img src="{{ asset('public/machine/images/p1.png') }}" alt="Awesome Image">

                                    <div class="overlay-style-two">
                                        <div class="box">
                                            <div class="content">
                                                <a href="#">
                                                    <i class="fa fa-link" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>   
                                </div>
                                <div class="title-holder">
                                    <a href="#">
                                        <h5 class="post-title">
                                            Finance &amp; legal<br> throughout project.
                                        </h5>
                                    </a>
                                    <h6 class="post-date">
                                        <i class="icon-calendar-with-spring-binder-and-date-blocks"></i>
                                        Jan 08, 2023
                                    </h6>
                                </div>
                            </li>
                            <li>
                                <div class="img-holder">
                                <img src="{{ asset('public/machine/images/p2.png') }}" alt="Awesome Image">
                                    <div class="overlay-style-two">
                                        <div class="box">
                                            <div class="content">
                                                <a href="#">
                                                    <i class="fa fa-link" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>   
                                </div>
                                <div class="title-holder">
                                    <a href="#">
                                        <h5 class="post-title">
                                            What makes us best<br> in the world?
                                        </h5>
                                    </a>
                                    <h6 class="post-date">
                                        <i class="icon-calendar-with-spring-binder-and-date-blocks"></i>
                                        Dec 18, 2023
                                    </h6>
                                </div>
                            </li>
                            <li>
                                <div class="img-holder">
                                <img src="{{ asset('public/machine/images/p3.png') }}" alt="Awesome Image">
                                    <div class="overlay-style-two">
                                        <div class="box">
                                            <div class="content">
                                                <a href="#">
                                                    <i class="fa fa-link" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>    
                                </div>
                                <div class="title-holder">
                                    <a href="#">
                                        <h5 class="post-title">
                                            Why experts go with<br> Builder.
                                        </h5>
                                    </a>
                                    <h6 class="post-date">
                                        <i class="icon-calendar-with-spring-binder-and-date-blocks"></i>
                                        Nov 21, 2023
                                    </h6>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--End single sidebar-->
                    <!--Start single-sidebar-->
                    <!-- <div class="single-sidebar popular-tag">
                        <div class="sec-title">
                            <h3>Tag Cloud</h3>
                            <span class="border"></span>
                        </div>
                        <ul class="popular-tag">
                            <li><a href="#">Active</a></li>
                            <li><a href="#">Building </a></li>
                            <li><a href="#">Ideas</a></li>
                            <li><a href="#">Energy</a></li>
                            <li><a href="#">Engines</a></li>
                            <li><a href="#">Chemical</a></li>
                            <li><a href="#">Industry</a></li>
                            <li><a href="#">Drilling</a></li>
                        </ul>      
                    </div>  -->
                    <!--End single-sidebar-->

                </div>    
            </div>
            <!--End Sidebar Wrapper-->  
        </div>
    </div>
</section>

<div class="call-out2">
    <div class="container">
        <div class="clearfix">
            <div class="float_left">
                <h4>Have any question or need any business consultation?</h4>
            </div>
            <div class="float_right">
                <a href="contact.html" class="thm-btn bg-clr2">Contact Us</a>
            </div>
        </div>
                
    </div>
</div>
@endsection

@push('scripts')
<script>

</script>
@endpush