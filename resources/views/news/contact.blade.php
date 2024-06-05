@extends('news.layout.app')

@section('content')

    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;background-image: url('{{ asset('public/pro/img/cc.jpg') }}');height:500px;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Contact Us</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    @include('news.layout.message')

    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden py-5 px-lg-0">
        <div class="container contact-page py-5 px-lg-0">
            <div class="row g-5 mx-lg-0">
                <div class="col-md-6 contact-form wow fadeIn" data-wow-delay="0.1s">
                    <h6 class="text-secondary text-uppercase">Get In Touch</h6>
                    <h1 class="mb-4">Contact For Any Query</h1>
                    <p class="mb-4">We are reliable manufacturer for last 12 years, we use high quality material, our pricing are competitive, and we offer after sales service 24X7. </p>
                    <div class="bg-light p-4">
                    <form id="" name="" class="default-form" action="{{ route('contact.store1') }}" method="post">
                        @csrf                            <div class="row g-3">
                                <div class="col-md-12">
                                    <div class="form-floating">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                                        <label for="name">Your Name</label>
                                    </div>
                                </div>
                              
                                <div class="col-12">
                                    <div class="form-floating">
                                        <input type="text" name="phone"class="form-control" id="subject" placeholder="Subject" required>
                                        <label for="subject">Phone Number</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control" placeholder="Leave a message here" name="msg" id="message" style="height: 100px" required></textarea>
                                        <label for="message">Message</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s">
                    <div class="position-relative h-100">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3888.2188841187767!2d80.09159487507624!3d12.957841087356265!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTLCsDU3JzI4LjIiTiA4MMKwMDUnMzkuMCJF!5e0!3m2!1sen!2sin!4v1717582526403!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
@endsection
