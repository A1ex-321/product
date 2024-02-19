@extends('machine.layout.app')

@section('content')

<!--Start breadcrumb area-->     
<section class="breadcrumb-area" style="background-image: url('{{ asset('public/machine/images/tim-mossholder-atgIjoAJdWg-unsplash.jpg') }}');"
>
	<div class="container text-center">
		<h1>blog</h1>
	</div>
</section>
<!--End breadcrumb area-->




<section id="blog-area" class="blog-with-sidebar-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
            

                <div class="single-sidebar">
                    <div class="sec-title">
                      
                        <span class="border"></span>
                    </div>
                    <ul class="recent-post">
                    @foreach($getRecord as $blog)
<li>
    <div class="img-holder">
    <a href="{{ url('singleblog', ['id' => $blog->id, 'slug' => $blog->slug]) }}">
    <img src="{{ asset('public/images/' . $blog->image) }}" alt="Awesome Image">
</a>


        <!-- <div class="overlay-style-two">
            <div class="box">
                <div class="content">
                    <a >
                        <i class="fa fa-link" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div> -->
    </div>
    <div class="title-holder">
    <a href="{{ url('singleblog', ['id' => $blog->id, 'slug' => $blog->slug]) }}">
            <h5 class="post-title">{{ $blog->title }}</h5>
        </a>
        <h6 class="post-date">
            <i class="-with-spring-binder-and-date-blocks"></i>
            {{ $blog->description }}
        </h6>
    </div>
</li>
@endforeach

                    
                    </ul>
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
                            <h3></h3>
                            <span class="border"></span>
                        </div>
                        <ul class="categories clearfix">
                            

                        </ul>
                    </div>
                    <!--End single sidebar-->
                    <!--Start single sidebar--> 
                 
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

<!-- <div class="call-out2">
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
</div> -->
@endsection

@push('scripts')
<script>

</script>
@endpush
