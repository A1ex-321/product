@extends('machine.layout.app')

@section('content')
<style>
    /* Define fixed width and height for images within the CKEditor content */
    #ck1 img {
        width: 100%;
        /* Adjust width as needed */
        height: 350px;
        /* Maintain aspect ratio */
    }
    @media only screen and (max-width: 767px) {
    /* Add your mobile styles here */
    #ck1 img {
        width: 100%;
        /* Adjust width as needed */
        height: 300px;
        object-fit:cover;
        /* Maintain aspect ratio */
    }
    #im img
    {
        height: 250px;
        object-fit:cover;
    }
}

</style>
<!--Start breadcrumb area-->
<section class="breadcrumb-area" style="background-image: url('{{ asset('public/machine/images/dmitriy-demidov-iuuJC_pjLU0-unsplash.jpg') }}');
">
    <div class="container text-center">
        <h1>Blogs</h1>
    </div>
</section>
<!--End breadcrumb area-->

<section id="blog-area" class="blog-with-sidebar-area blog-single-area">
    <div class="container">
        <div class="row" id="ck">
            <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                <div class="blog-post">
                    <div class="single-blog-post">
                        <div class="img-holder"id="im">
                            <img src="{{ asset('public/images/' . $blog->image) }}" style="width:100%;height:380px;object-fit:cover;border-radius:8px;" alt="Awesome Image">
                        </div>
                        <div class="text-holder">
                            <h3 class="blog-title">{{ $blog->title }}</h3>
                            <div class="text">
                                <p>{{ $blog->description }}</p>
                            </div>
                            <div id="ck1">{!! $blog->content !!}</div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Start sidebar Wrapper-->
            <div class="col-lg-3 col-md-4 col-sm-7 col-xs-12">
                <div class="sidebar-wrapper">
                    <!--Start single sidebar-->
                    <div class="single-sidebar">
                        <div class="sec-title">
                            <h3>Recent Blogs</h3>
                            <span class="border"></span>
                        </div>
                        <ul class="recent-post">
                            @foreach ($getRecord as $blog1)
                            <li>
                                <div class="img-holder">
                                    <img src="{{ asset('public/images/' . $blog->image) }}" alt="Awesome Image">
                                    <div class="overlay-style-two">
                                        <div class="box">
                                            <div class="content">
                                                <a href="{{ url('singleblog', ['id' => $blog->id, 'slug' => $blog1->slug]) }}">
                                                    <i class="fa fa-link" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="title-holder">
                                    <a href="{{ url('singleblog', ['id' => $blog1->id, 'slug' => $blog1->slug]) }}">
                                        <h5 class="post-title">{{ $blog1->title }}</h5>
                                    </a>
                                    <h6 class="post-date">
                                        <i class="icon-calendar-with-spring-binder-and-date-blocks"></i>
                                        {{ $blog1->created_at->format('M d, Y') }}
                                    </h6>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <!--End Sidebar Wrapper-->
        </div>
    </div>
</section>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const blogListContainer = document.getElementById('ck');

        const oembedContainers = blogListContainer.querySelectorAll('oembed');
        console.log("fddf", oembedContainers);
        oembedContainers.forEach(oembed => {
            const outerHtml = oembed.outerHTML;
            const urlMatch = outerHtml.match(/url="(.*?)"/);

            if (urlMatch) {
                const url = urlMatch[1];

                const iframe = document.createElement('iframe');
                iframe.setAttribute('src', url);
                iframe.setAttribute('width', '100%');
                iframe.setAttribute('height', '400');
                iframe.setAttribute('frameborder', '0');
                iframe.setAttribute('allowfullscreen', 'true');

                oembed.replaceWith(iframe);
            }
        });
    });
</script>
<script>
    // Display JSON response in console
    console.log("this",@json($jsonResponse));



    // Convert PHP $blog object to JSON and escape HTML entities
        var jsonData = {!! json_encode($blog) !!};
        console.log("data",jsonData);
        console.log("Metatitle:", jsonData.metatitle);

        // Set JSON data to HTML attributes
         $('title').text(jsonData.metatitle);
         $('meta[name="description"]').attr('content', jsonData.metadescription);
         $('meta[property="og:title"]').attr('content', jsonData.ogtitle);
         $('meta[property="og:description"]').attr('content', jsonData.ogdescription);
         $('meta[property="og:image"]').attr('content', jsonData.ogimage);
         $('meta[property="og:url"]').attr('content', jsonData.ogurl);
         $('meta[property="og:type"]').attr('content', jsonData.ogtype);

        // Display JSON data in console
</script>


@endsection
