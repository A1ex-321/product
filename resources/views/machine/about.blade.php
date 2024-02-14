@extends('machine.layout.app')

@section('content')

<section class="about-us sec-padd-top">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                
                <figure class="about-img">
                <img src="{{ asset('public/machine/images/about.png') }}" alt="about titan builders photo">
                </figure>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="about-text">
                    <h2>
                        about our <span class="thm-color">Factory & industries</span>
                    </h2>
                    <div class="text">
                        <p>Thank you for being a friend. Travelled down the road and back again. Your heart is true you're a pal and a confidant. It's time to put on makeup. It's time to dress up right.They're all together ooky the Addams Family doin' it our way. There's nothing we wont try. Never heard the word impossible. This time there's no stopping us.</p>
                    </div>
                    <!-- <div class="fact-counter">
                        <ul>
                            <li class="single-fact-counter">
                                <div class="icon-holder"><span class="flaticon-social"></span></div>
                                <span class="timer" data-from="1" data-to="2456" data-speed="5000" data-refresh-interval="50">2456</span>
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <h3>Engineers & Workers</h3>    
                            </li>
                            <li class="single-fact-counter">
                                <div class="icon-holder"><span class="flaticon-landscape"></span></div>
                                <span class="timer" data-from="1" data-to="640" data-speed="5000" data-refresh-interval="50">640</span>
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <h3>Factory in Worldwide</h3>
                            </li>
                            <li class="single-fact-counter">
                                <div class="icon-holder"><span class="flaticon-innovation"></span></div>
                                <span class="timer" data-from="1" data-to="3250" data-speed="5000" data-refresh-interval="50">3250</span>
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <h3>Projects Completed</h3>
                            </li>    
                        </ul>
                    </div> -->

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
