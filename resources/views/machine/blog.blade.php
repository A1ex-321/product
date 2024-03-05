@extends('machine.layout.app')

@section('content')
<!-- CSS for skeleton loading -->


<!-- Start breadcrumb area -->
<section class="breadcrumb-area" style="background-image: url('{{ asset('public/machine/images/tim-mossholder-atgIjoAJdWg-unsplash.jpg') }}');">
    <div class="container text-center">
        <h1>blog</h1>
    </div>
</section>
<!-- End breadcrumb area -->

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
            <!-- Start sidebar Wrapper -->
            <div class="col-lg-3 col-md-4 col-sm-7 col-xs-12">
                <!-- Sidebar content -->
            </div>
            <!-- End Sidebar Wrapper -->
        </div>
    </div>
</section>

<!-- Skeleton Loading -->

@endsection

@push('scripts')
<script>

</script>
@endpush
