@extends('news.layout.app')

@section('content')
<style>
  @media (max-width: 767.98px) {
    .col-6 {
        flex: 0 0 50%; /* Set the column width to 50% for mobile devices */
        max-width: 50%;
    }
}

    .image-container {
        border: 2px solid #1e6deb;
        /* Border style */
        padding: 10px;
        /* Padding around the image */
        border-radius: 10px;
        /* Border radius for rounded corners */
        overflow: hidden;
        /* Hide overflow content (if any) */
        margin-top: 10px;
    }

    .image-container img {
        width: 100%;
        /* Ensure the image fills the container */
        height: 110px;
        /* Maintain aspect ratio */
        /* Scale the image while preserving aspect ratio */
    }
</style>
<div class="container-fluid page-header py-5" style="background-image: url('{{ asset('public/pro/img/client.jpg') }}');margin-bottom: 0px;" style="">
    <div class="container py-5">
        <h1 class="display-3 text-white mb-3 animated slideInDown">Clients</h1>
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

<!-- About End -->
<!-- About End -->


<!-- Fact Start -->
<!-- Fact Start -->
<div class="container-xxl py-5">
    <div class="container py-5">
        <div class="row g-5">

            <div class="col-lg-12">

                <div class="row g-4 align-items-center">
                    <h3 class="text-secondary text-uppercase mb-3">Some of our clients</h3>
                    <div class="row">
    @foreach($getRecord as $record)
    <div class="col-6 col-md-4 col-lg-3"> <!-- Display 2 columns on mobile, 3 columns on tablets, and 4 columns on larger screens -->
        <div class="image-container">
            <img class="img-fluid" src="{{ asset('public/images/' . $record->machineimage) }}" alt="">
        </div>
    </div>
    @endforeach
</div>
                </div>



            </div>
        </div>
    </div>
</div>
</div>


@endsection