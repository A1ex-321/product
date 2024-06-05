@extends('admin.layouts.app')

<!-- <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests"> -->

@section('content')
<style type="text/css">
    .ck-editor__editable_inline {
        height: 470px;
    }

    @media (min-width: 1200px) {
        .container {
            width: 996px !important;
        }
    }
</style>


<head>
    <!-- ... (other scripts) ... -->

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Blog</title>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

</head>
<!-- SweetAlert2 CSS -->

<main id="main" class="main">
    <section class="section dashboard" style="margin-left: -260px;
">
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-0">
                        <div class="col-sm-6">
                           


                        </div><!-- /.col -->

                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="{{ route('create-blog') }}" class="btn btn-primary" style="color:black;">Create Blog</a>
</li>




                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->
            


            <section class="section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Enabled Blogs</h5>

                                    <!-- Table with stripped rows -->
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover datatable">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Title</th>
                                                    <th>Thumb Image</th>
                                                    <!-- <th>View Content</th> -->
                                                    <th>Edit & Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @php $counter = 1; @endphp
                                                @foreach ($getRecord as $value)
                                                <tr>
                                                    <td>{{ $counter++ }}</td>
                                                    <td>
    {{ Str::words($value->title, 10, '...') }}
</td>



                                                    <td><img src="{{ asset('public/images/' . $value->image) }}" alt="Thumb Image" style="max-width: 100px; max-height: 100px;"></td>
                                                    <!-- <td>
                                            <button class="btn btn-success">
                                                <a href="{{route('view_blogcontent', ['id' => $value->id])}}" style="color: #fff; text-decoration: none;">
                                                    <i class="fas fa-eye"></i>  Content
                                                </a>
                                            </button>
                                        </td> -->

                                                    <td>

                                                        <a href="{{url('admin/blogseo/edit/'.$value->id)}}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        
                                                        <a onclick="return confirm('Are you sure you want to delete?')" href="{{url('admin/blogseo/delete/'.$value->id)}}" class="btn btn-danger"><i class="fas fa-trash"></i></a>
                                                        

                                                    </td>

                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- End Table with stripped rows -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            @include('admin.layouts.message')

            <!-- Main content -->

            <!-- /.content -->
        </div>






        <script>
            $('#description').summernote({
                placeholder: 'description...',
                tabsize: 1,
                height: 300
            });
        </script>
        </script>

        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <script>
            // Function to check the availability of the slug
            function checkSlugAvailability() {
                const slugInput = $('input[name="slug"]');
                const slugValue = slugInput.val();

                // Make an AJAX request to your Laravel route
                $.ajax({
                    url: '/check-slug-availability',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}', // Ensure proper syntax
                        slug: slugValue
                    },
                    success: function(response) {
                        const messageElement = $('#slugAvailabilityMessage');

                        if (response.available) {} else {
                            messageElement.text('Slug already exists. Please choose another one.');
                        }
                    },
                    error: function(error) {
                        console.error('Error checking slug availability:', error);
                    }
                });
            }
            // Attach the function to the 'change' event of the slug input
            $('input[name="slug"]').on('change', checkSlugAvailability);
        </script>
    </section>
</main>
@endsection




@section('style')
<!-- Include jQuery -->

<!-- Initialize Select2 -->





@endsection