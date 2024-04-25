@extends('admin.layouts.app')


@section('content')
<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">

<style type="text/css">
    .ck-editor__editable_inline {
        height: 480Px;
    }

    li.select2-selection__choice {
        color: black !important;
    }

    .switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 34px;
    }

    /* Hide default HTML checkbox */
    .switch input {
        opacity: 0;
        width: 0;
        height: 0;
    }

    /* The slider */
    .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;
    }

    .slider:before {
        position: absolute;
        content: "";
        height: 26px;
        width: 26px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
    }

    input:checked+.slider {
        background-color: #2196F3;
    }

    input:focus+.slider {
        box-shadow: 0 0 1px #2196F3;
    }

    input:checked+.slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
        border-radius: 34px;
    }

    .slider.round:before {
        border-radius: 50%;
    }
</style>
<style>
    /* Add your custom styles for the modal and input text boxes here */
    #feedback-modal .modal-dialog {
        max-width: 800px;
        /* Set your desired modal width */
    }

    .modal-body input[type="text"],
    .modal-body input[type="email"] {
        width: 100%;
        /* Set your desired input text box width */
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Blog</title>

    <!-- Include jQuery -->





    <!-- Include TinyMCE from CDN -->
    <!-- <script src="https://cdn.ckeditor.com/4.16.2/full/ckeditor.js"></script> -->
    <!-- <script src="https://cdn.ckeditor.com/4.16.2/standard-all/ckeditor.js"></script> -->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Include Select2 from CDN -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
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
                            <h1 class="m-0">Edit blog</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item active">

                                    <button id="errorsco" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#feedback-modal">SEO</button>

                                </li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->
            <div id="feedback-modal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3>Edit SEO</h3>
                            <a href="#" class="btn" data-dismiss="modal">×</a>

                        </div>
                        <div class="modal-body" style="overflow-y: auto;">
                            <form action="{{ route('sco-update', ['id' => $getRecord->id])}}" method="post" enctype="multipart/form-data" id="sco">
                                {{csrf_field()}}
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Meta Title<span style="color:red"></span></label>
                                            <input type="text" name="metatitle" class="form-control" id="exampleInputEmail1" placeholder="metatitle" value="{{$getRecord->metatitle}}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">OG Title<span style="color:red"></span></label>
                                            <input type="text" name="ogtitle" class="form-control" id="exampleInputEmail1" placeholder="ogtitle" value="{{$getRecord->ogtitle}}">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Meta Description<span style="color:red"></span></label>
                                            <textarea name="metadescription" class="form-control" id="exampleInputEmail1" placeholder="Description" style="height: 100px;">{{$getRecord->metadescription}}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">OG Description<span style="color:red"></span></label>
                                            <textarea name="ogdescription" class="form-control" id="exampleInputEmail1" placeholder="Description" style="height: 100px;">{{$getRecord->ogdescription}}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">OG Image<span style="color:red"></span></label>
                                            <input type="file" name="ogimage" class="form-control" id="exampleInputEmail1" placeholder="ogimage" value="{{$getRecord->ogimage}}">
                                        </div>
                                        @if ($getRecord->ogimage)
                                        <div class="form-group">
                                            <img src="{{ asset('public/images/' . $getRecord->ogimage) }}" alt="Uploaded Image" style="max-width: 100px; max-height: 70px;">
                                        </div>
                                        @endif
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">OG URL<span style="color:red"></span></label>
                                            <input type="text" name="ogurl" class="form-control" id="exampleInputEmail1" placeholder="ogurl" value="{{$getRecord->ogurl}}">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Slug<span style="color:red"></span></label>
                                    <input type="text" name="slug" class="form-control" id="slug" placeholder="slug" value="{{$getRecord->slug}}">
                                    <p id="slug-error" style="color: red;"></p>
                                    @error('slug')
                                    <p style="color: red;">{{ $message }}</p>
                                    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
                                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

                                    <script>
                                        $(document).ready(function() {
                                            console.log('Script executed');

                                            $('#feedback-modal').modal('show');

                                            // Scroll to the element with the ID 'slug' within the modal using animate
                                            var modalBody = $('#feedback-modal .modal-body');
                                            var slugElement = $('#slug');

                                            // Calculate the difference between the top of the slug element and the top of the modal body
                                            var scrollOffset = slugElement.offset().top - modalBody.offset().top;

                                            // Use animate for smooth scrolling
                                            modalBody.animate({
                                                scrollTop: scrollOffset
                                            }, 1000); // You can adjust the duration as needed
                                            $('.toast').toast({
                                                delay: 5000
                                            }); // Set the duration of the toast
                                            $('.toast-body').text('slug already exist'); // Set the error message
                                            $('.toast').toast('show');
                                        });
                                    </script>

                                    <!-- Placeholder for the toast -->
                                    <!-- Placeholder for the toast -->
                                    <div aria-live="polite" aria-atomic="true" style="position: fixed; bottom: 0; right: 0; min-width: 320px; height: -50px;">
                                        <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="3000" style="background-color: red;">
                                            <div class="toast-header" style="background-color: red;">
                                                <strong class="mr-auto text-white">Error</strong>
                                                <small class="text-muted">just now</small>
                                                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                                    <span aria-hidden="true" class="text-white">&times;</span>
                                                </button>
                                            </div>
                                            <div class="toast-body text-white">
                                                slug already exists <!-- Update the error message here -->
                                            </div>
                                        </div>
                                    </div>




                                    @enderror

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">OG Type<span style="color:red"></span></label>
                                    <input type="text" name="ogtype" class="form-control" id="exampleInputEmail1" placeholder="ogtype" value="{{$getRecord->ogtype}}">
                                </div>

                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success" id="submit">Update SEO</button>
                            <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

                            <!-- Your JavaScript code -->
                            <!-- <script>
    // Function to check the availability of the slug
    function checkSlugAvailability() {
        const slugInput = $('input[name="slug"]');
        const slugValue = slugInput.val();

        // Make an AJAX request to your Laravel route
        $.ajax({
            url: '/validate-slug',
            method: 'POST',
            data: {
                _token: '{{ csrf_token() }}', // Ensure proper syntax
                slug: slugValue
            },
            success: function(response) {
                const messageElement = $('#slugAvailabilityMessage');

                if (response.available) {} else {
                    $('#slug-error').text(response.exists ? 'Slug already exists' : '');
                }
            },
            error: function(error) {
                console.error('Error checking slug availability:', error);
            }
        });
    }
    // Attach the function to the 'change' event of the slug input
    $('input[name="slug"]').on('change', checkSlugAvailability);
</script> -->
                            </form>

                            <a href="#" class="btn" data-dismiss="modal">Close</a>
                        </div>
                        <!-- Your existing HTML code -->


                        <!-- Any other HTML code -->

                    </div>
                </div>
            </div>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card card-info">
                                <div class="card-header">
                                    <h3 class="card-title"> Blog data <small></small></h3>
                                </div>
                                <div class="container">
                                    <form action="{{ route('blogsco-update', ['id' => $getRecord->id])}}" method="post" enctype="multipart/form-data">
                                        {{csrf_field()}}


                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Category<span style="color:red">*</span></label>
                                                        <select name="category" id="category" class="form-control" required>
                                                            <option value="" disabled>select a category</option>
                                                            @foreach($getRecord1 as $record)
                                                            <option value="{{ $record->id }}" @if($getRecord->id == $record->id) selected @endif>{{ $record->category }}</option>
                                                            @endforeach
                                                        </select>

                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

                                                        <div class="form-group row">
                                                            <label for="exampleInputEmail1" class="col-sm-2 col-form-label">Tag<span style="color:red">*</span></label>
                                                            <div class="col-sm-4">
                                                                <input type="text" class="form-control" id="exampleInputEmail12" placeholder="New Tag">
                                                            </div>

                                                            <div class="col-sm-2">
                                                                <button type="button" class="btn btn-primary" id="addTagBtn">+</button>
                                                            </div>
                                                        </div>
                                                        <select class="js-example-basic-multiple form-control" name="states[]" multiple="multiple" required>

                                                            <!-- Add more options here -->
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Title<span style="color:red">*</span></label>
                                                        <input type="text" name="title" class="form-control" id="exampleInputEmail1" placeholder="title" value="{{$getRecord->title}}" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Thumb Image<span style="color:red">*</span></label>
                                                        <input type="file" name="image" class="form-control" id="exampleInputEmail1" placeholder="Image" value="{{$getRecord->image}}">
                                                    </div>
                                                    @if ($getRecord->image)
                                                    <div class="form-group">
                                                        <img src="{{ asset('public/images/' . $getRecord->image) }}" alt="Uploaded Image" style="max-width: 100px; max-height: 60px;">
                                                    </div>
                                                    @endif
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Description<span style="color:red"></span></label>
                                                <textarea name="description" class="form-control" id="exampleInputEmail1" placeholder="Description" style="width: 100%; height: 70px;">{{$getRecord->description}}</textarea>


                                            </div>


                                            <div class="form-group">
                                                <label for="editor">Content</label>
                                                <textarea name="content" id="description" cols="30" rows="10">{{$getRecord->content}}</textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Feature News</label>
                                                <label class="switch">
                                                    <input type="checkbox" name="check" @if($getRecord->check == 'on') checked @endif>
                                                    <span class="slider round"></span>
                                                </label>



                                            </div>
                                            <!-- /.card-body -->
                                            <div class="card-footer">
                                                <button type="submit" class="btn btn-info">Submit</button>
                                            </div>
                                    </form>



                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Main content -->

            <!-- /.content -->
        </div>



        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!-- include summernote css/js -->
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
        <script>
            $('#description').summernote({
                placeholder: 'description...',
                tabsize: 1,
                height: 300
            });
        </script>

        <!-- Your scripts -->
        <!-- ... (previous code) ... -->
        <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">

        <script src="https://cdn.ckeditor.com/ckeditor5/40.2.0/classic/ckeditor.js"></script>

        <!-- Include jQuery library -->
        <!-- Include jQuery library -->
        <scrip>
            <!-- Include jQuery library -->



            <!-- Your modal HTML -->
            <div class="modal" id="validation-error-modal" style="display: none;">
                <!-- Modal content -->
                <p>Slug already exists. Please choose a different one.</p>
            </div>

            </script>

            <!-- Your JavaScript code -->



            <!-- Include jQuery library -->
            <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

            <!-- Your JavaScript code -->

    </section>
</main>
<!-- Include Select2 JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        $.ajax({
            url: '/get-states',
            type: 'GET',
            dataType: 'json',
            success: function(data) {
                // Loop through the received data and append options to the select element
                $.each(data, function(index, state) {
                    // Append each option to the select element
                    $('.js-example-basic-multiple').append('<option value="' + state.id + '">' + state.tag + '</option>');
                });

                // Initialize Select2 after populating options
                $('.js-example-basic-multiple').select2();

                // Get the states from the variable
                var states = {!! json_encode($getRecord->states) !!};


                // Convert the string to an array of IDs
                var selectedIds = states.split(',');

                // Set the selected options based on the array of IDs
                $('.js-example-basic-multiple').val(selectedIds).trigger('change');

            },

            error: function(xhr, status, error) {
                console.error('Error fetching states:', error);
            }
        });
    });
</script>
<script>
    $(document).ready(function() {
        $('#addTagBtn').click(function() {
            var newTag = $('#exampleInputEmail12').val();

            // AJAX request to store tag in the database
            $.ajax({
                url: '/store-tag',
                method: 'POST',
                data: {
                    tag: newTag,
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    console.log("fdsafsadf", response.tag.tag);
                    // Display success message using SweetAlert
                    Swal.fire({
                        icon: 'success',
                        title: 'Tag added successfully!',
                        position: 'top-end',
                        customClass: {
                            popup: 'swal2-small', // Apply custom CSS class for the alert
                        },
                        showConfirmButton: false,
                        timer: 1500
                    });



                    $('.js-example-basic-multiple').append('<option value="' + response.tag.id + '" selected>' + response.tag.tag + '</option>');

                    $('.js-example-basic-multiple').trigger('change');

                    // Clear the text box
                    $('#exampleInputEmail12').val('');
                },
                error: function(xhr, status, error) {
                    // Display error message using SweetAlert
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!',
                    });
                }
            });
        });
    });
</script>

@endsection

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



@section('style')
<!-- Include jQuery -->

<!-- Initialize Select2 -->