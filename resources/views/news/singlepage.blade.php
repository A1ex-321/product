@extends('news.layout.app')

@section('content')
<style>
    .dropdown-menu1 {
        display: none;
        position: absolute;
        z-index: 1000;
    }

    .dropdown1:hover .dropdown-menu1 {
        display: block;
    }

    /* Adjust dropdown behavior for smaller screens */
    @media (max-width: 767px) {
        .dropdown1:hover .dropdown-menu1 {
            display: none;
        }
        .dropdown1:hover .dropdown-menu1.show-on-hover {
            display: block;
        }
    }

    /* Add hover effect to list items */
    .list-group-item:hover .hover-bg {
        background-color: #f0f0f0 !important;
    }
</style>
<div class="container-fluid py-5">
    <div class="container py-5">
        <ol class="breadcrumb justify-content-start mb-4">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Pages</a></li>
            <li class="breadcrumb-item active text-dark">Single Page</li>
        </ol>
        <div class="row g-4">
           
            <div class="col-lg-8">
                <div class="mb-4">
                    <a href="#" class="h1 display-5">{{ $getRecord->title }}</a>
                </div>
                <div class="position-relative rounded overflow-hidden mb-3">
                    <!-- <img src="{{ asset('public/images/' . $getRecord->image) }}" class="img-zoomin img-fluid rounded w-100" style="height:400px;" alt=""> -->
                    <div class="position-absolute text-white px-4 py-2 bg-primary rounded" style="top: 20px; right: 20px;">
                        Business
                    </div>
                </div>
                <div class="summernote-output">
                    {!! $getRecord->content !!}
                </div>
            </div>

            <div class="col-lg-4">
                <div class="row g-4">
                    <div class="col-12">
                        <div class="p-3 rounded border">

                            <h4 class="mb-4">Our Products</h4>

                            @foreach($service as $detail)
                            <ul class="list-group">
                                <li class="list-group-item active">{{ $detail->category }}</li>
                            </ul>
                            <ul class="list-group">
                                @foreach($detail->blogscos as $blog)
                                <li class="list-group-item">
                                    <a href="/blog/{{ $blog->id }}" class="hover-bg">{{ $blog->title }}</a>
                                </li>
                                @endforeach


                            </ul>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('#parentDropdown').hover(
            function() {
                $('.dropdown-menu1', this).stop(true, true).fadeIn('fast');
            },
            function() {
                $('.dropdown-menu1', this).stop(true, true).fadeOut('fast');
            }
        );
    });
    $(document).on('mouseenter', '.list-group-item', function() {
        $(this).addClass('hover-bg');
    });

    $(document).on('mouseleave', '.list-group-item', function() {
        $(this).removeClass('hover-bg');
    });
</script>
@endsection