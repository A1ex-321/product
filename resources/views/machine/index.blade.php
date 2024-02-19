@extends('machine.layout.app')

@section('content')

<section class="rev_slider_wrapper">
            <div id="slider1" class="rev_slider" data-version="5.0">
            @php
    $recordCount = count($getRecord);
@endphp

            <ul>
            @for ($i = 0; $i < $recordCount; $i++)
        @php $record = $getRecord->get($i); @endphp
        <li data-transition="slidingoverlayleft">
            <img src="{{ asset('public/images/' . $record->image) }}" alt="" width="1920" height="880" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1">
            <div class="tp-caption tp-resizeme" data-x="right" data-hoffset="15" data-y="center" data-voffset="-50" data-transform_idle="o:1;" data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;" data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-mask_in="x:[100%];y:0;s:inherit;e:inherit;" data-splitin="none" data-splitout="none" data-responsive_offset="on" data-start="700">
                <div class="slide-content-box">
                    <h1>{!! nl2br(json_decode($record->title)->title) !!}</h1>
                    <p>{!! nl2br(json_decode($record->description)->description) !!}</p>
                </div>
            </div>
            <div class="tp-caption tp-resizeme" data-x="right" data-hoffset="390" data-y="center" data-voffset="110" data-transform_idle="o:1;" data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-splitin="none" data-splitout="none" data-responsive_offset="on" data-start="2300">
                <div class="slide-content-box">
                    <div class="button">
                        <a class="thm-btn bg-clr1" href="{{ url('/about') }}">About Us</a>
                    </div>
                </div>
            </div>
            <div class="tp-caption tp-resizeme" data-x="right" data-hoffset="180" data-y="center" data-voffset="110" data-transform_idle="o:1;" data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-splitin="none" data-splitout="none" data-responsive_offset="on" data-start="2600">
                <div class="slide-content-box">
                    <div class="button">
                        <a class="thm-btn bg-clr2" href="{{ url('/contact') }}">Contact Us</a>
                    </div>
                </div>
            </div>
        </li>
    @endfor
</ul>


            </div>
        </section>
        <!--End rev slider wrapper-->

      
        <section class="about-us sec-padd-top">
    <div class="container">
        <div class="row">
            @foreach ($content as $machineService)
                <div class="col-md-6 col-sm-12">
                    <figure class="about-img">
                        <img src="{{ asset('public/images/' . $machineService->image) }}" alt="about titan builders photo">
                    </figure>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="about-text">
                        <h2>
                            {{ $machineService->title }} <span class="thm-color">{{ $machineService->spantitle }}</span>
                        </h2>
                        <div class="text">
                            @if ($machineService->content)
                                <p>{{ $machineService->content }}</p>
                            @else
                                <p>No description available</p>
                            @endif
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>




        <section class="our-services">
            <div class="container">

                <div class="row">
                    <div class="col-md-4 col-sm-5 col-xs-12">
                        <div class="section-title">
                            <h2>Our Services</h2>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-7 col-xs-12 font-20">
                        <p>We have built an enviable reputation in consumer goods, heavy industry, high-tech,
                            <br>manufacturing, medical, recreational vehicle, and transportation sectors.</p><br>
                    </div>
                </div>

                <div class="row">
                @foreach ($service->take(6) as $service)
    <div class="col-md-4 col-sm-6">
        <div class="single-our-service">
            <figure class="img-box">
                <img src="{{ asset('public/images/' . $service->machineimage) }}" style="width:100%; height:200px;object-fit:cover;border-radius:5px;" alt="Awesome Image">
            </figure>
            <h4>{{ $service->machinetitle }}</h4>
            <p>
                {{ substr($service->description, 0, 90) }}{{ strlen($service->description) > 200 ? '...' : '' }}
            </p>
        </div>
    </div>
@endforeach
<a href="{{ url('/service') }}" class="colorful-btn" style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; cursor: pointer; border-radius: 8px; margin-left:1000px;">Read more_</a>




 

                </div>
            </div>
        </section>

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
