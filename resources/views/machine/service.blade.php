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
    @foreach($content as $service1)
        
        <div class="row">
            <div class="col-md-4 col-sm-5 col-xs-12">
                <div class="section-title">
                    <h2>{{$service1->servicetitle}}</h2>
                </div> 
            </div>
            <div class="col-md-8 col-sm-7 col-xs-12 font-20">
                <p>{{$service1->servicedescription}}</p><br>
            </div>
        </div>
@endforeach
     
        <div class="row">
        @foreach($service as $service)
<div class="col-md-4 col-sm-6">
    <div class="single-our-service">
        <figure class="img-box">
            <a href=""><img src="{{ asset('public/images/'.$service->machineimage) }}" style="width:100%; object-fit:cover;border-radius:5px;" alt="Awesome Image"></a>
        </figure>
        <a><h4>{{ $service->machinetitle }}</h4></a>
        <p>
    {{ substr($service->description, 0, 90) }}{{ strlen($service->description) > 200 ? '...' : '' }}
</p>    </div>
</div>
@endforeach

            
           
        </div>
    </div>
</section>

<!-- <section class="container" style="background-color: rgb(177, 118, 31); margin-bottom: 100px; height: 200px; display: flex; justify-content: center; align-items: center;">
    <div>
        <h3 style="color: aliceblue; margin-bottom: 30px;">For general inquiries, partnership opportunities, or any other questions </h3>
        <div class="row">
            <div class="col-md-6 text-center">
                <a href="contact.html" class="colorful-btn" style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; cursor: pointer; border-radius: 8px;">Contact Us</a>
            </div>
        </div>
    </div>
</section> -->
<section id="gather"class="container" style="background-color: rgb(177, 118, 31); margin-bottom: 100px; height: 200px; display: flex; justify-content: center; align-items: center;">
            <div>
                <h3 id="des"style="color: aliceblue; margin-bottom: 30px;"></h3>
                <div class="row">
                    <div class="col-md-6 text-center">
                        <a href="{{ url('/contact') }}" id="contact" class="colorful-btn" style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; cursor: pointer; border-radius: 8px;"></a>
                    </div>
                </div>
            </div>
        </section>

@endsection

@push('scripts')
<script>

</script>
@endpush
