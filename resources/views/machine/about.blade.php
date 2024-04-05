@extends('machine.layout.app')

@section('content')
<style>#gather {
    background-color: rgb(177, 118, 31);
    margin-bottom: 100px;
    height: 200px;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center; /* Center text horizontally */
}

#contact {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    border-radius: 8px;
}
</style>
<section class="about-us sec-padd-top">
    <div class="container">
    <div class="row">
    @foreach($service as $service)
    <div class="col-md-6 col-sm-12">
        <figure class="about-img">
            <img src="{{ asset('public/images/' . $service->image) }}" alt="about titan builders photo" width="100%" height="auto">
        </figure>
    </div>
    <div class="col-md-6 col-sm-12">
        <div class="about-text">
            <h2>
                {{ $service->title }} <span class="thm-color">{{ $service->spantitle }}</span>
            </h2>
            <div class="text">
                <p>{{ $service->content }}</p>
            </div>
            <!-- Additional HTML content can be added here if needed -->
        </div>
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
                <a href="{{ url('/contact') }}" class="colorful-btn" style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; cursor: pointer; border-radius: 8px;">Contact Us</a>
            </div>
        </div>
    </div>
</section> -->
<section id="gather" class="container" style="">
    <div>
        <h3 id="des" style="color: aliceblue; margin-bottom: 30px;"></h3>
        <div class="row justify-content-center"> <!-- Center the content horizontally -->
            <div class="col-md-6 text-center">
                <a href="{{ url('/contact') }}" id="contact" class="colorful-btn"></a>
            </div>
        </div>
    </div>
</section>
@endsection

@push('scripts')
<script>

</script>
@endpush
