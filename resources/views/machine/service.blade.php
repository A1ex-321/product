@extends('machine.layout.app')

@section('content')

<!--Start breadcrumb area-->     
<section class="breadcrumb-area" style="background-image: url('{{ asset('public/machine/images/banner2.png') }}');"
>
	<div class="container text-center">
		<h1>Our service</h1>
	</div>
</section>
<!--End breadcrumb area-->


<section class="our-services">
    <div class="container">
        
        <div class="row">
            <div class="col-md-4 col-sm-5 col-xs-12">
                <div class="section-title">
                    <h2>Our Services</h2>
                </div> 
            </div>
            <div class="col-md-8 col-sm-7 col-xs-12 font-20">
                <p>We have built an enviable reputation in consumer goods, heavy industry, high-tech, <br>manufacturing, medical, recreational vehicle, and transportation sectors.</p><br>
            </div>
        </div>
     
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="single-our-service">
                    <figure class="img-box">
                        <a href="single-service.html"><img src="{{ asset('public/machine/images/p1.png') }}" alt="Awesome Image">
</a>
                    </figure>
                    <a href="single-service.html"><h4>Precision Machining Solutions</h4></a>
                    <p>We develop and design new procedures, tools <br>
                    systems for agricultural products environments. </p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="single-our-service">
                    <figure class="img-box">
                        <a href="single-service.html"><img src="{{ asset('public/machine/images/p2.png') }}" alt="Awesome Image">
</a>
                    </figure>
                    <a href="single-service.html"><h4>CNC Machining Services</h4></a>
                    <p>Chemical Research expertise in producing and <br>
                    manipulating chemicals to energy properties.</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="single-our-service">
                    <figure class="img-box">
                        <a href="single-service.html"><img src="{{ asset('public/machine/images/p3.png') }}" alt="Awesome Image">
</a>
                    </figure>
                    <a href="single-service.html"><h4>Custom Metal Fabrication</h4></a>
                    <p>Materials Engineering should include scientific and <br>
                    engineering strength relationships of materials. </p>
                </div>
            </div>

            <div class="col-md-4 col-sm-6">
                <div class="single-our-service">
                    <figure class="img-box">
                        <a href="#single-service.html"><img src="{{ asset('public/machine/images/p4.png') }}" alt="Awesome Image">
</a>
                    </figure>
                    <a href="#single-service.html"><h4>Prototyping and Production Machining</h4></a>
                    <p>Creating a dynamic company for the continuous <br>
                    exploration and develop opportunities. </p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="single-our-service">
                    <figure class="img-box">
                        <a href="#single-service.html"><img src="{{ asset('public/machine/images/p5.png') }}" alt="Awesome Image">
</a>
                    </figure>
                    <a href="#single-service.html"><h4>Specialty Machining Services</h4></a>
                    <p>Petroleum Engineers are concerned with the <br>
                     exploration, discovery and production.</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="single-our-service">
                    <figure class="img-box">
                        <a href="#single-service.html"><img src="{{ asset('public/machine/images/p6.png') }}" alt="Awesome Image">
</a>
                    </figure>
                    <a href="#single-service.html"><h4>Industrial Machining Solutions</h4></a>
                    <p>Ensuring high reliability and optimal performance <br>of 
                    rotating power equipment.</p>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="container" style="background-color: rgb(177, 118, 31); margin-bottom: 100px; height: 200px; display: flex; justify-content: center; align-items: center;">
    <div>
        <h3 style="color: aliceblue; margin-bottom: 30px;">For general inquiries, partnership opportunities, or any other questions </h3>
        <div class="row">
            <div class="col-md-6 text-center">
                <a href="contact.html" class="colorful-btn" style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; cursor: pointer; border-radius: 8px;">Contact Us</a>
            </div>
        </div>
    </div>
</section>

@endsection

@push('scripts')
<script>

</script>
@endpush
