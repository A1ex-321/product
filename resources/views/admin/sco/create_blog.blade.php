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


<head>
    <!-- ... (other scripts) ... -->

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Blog</title>

    <!-- Include Select2 CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>

<main id="main" class="main">
    <section class="section dashboard" style="margin-left: -260px;">
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-0">
                        <div class="col-sm-6">
                            @can('create posts')
                            <h1 class="m-0">Add blog</h1>
                            @endcan
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active"></li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card card-primary">
                                <div class="card-header" style="background-color: #6e9ee6;">
                                    @can('create posts')
                                    <h3 class="card-title">Add Blog data <small></small></h3>
                                </div>
                                <div class="container">
                                    <form action="{{ route('create-blogsco') }}" method="post" enctype="multipart/form-data">
                                        {{csrf_field()}}
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Category<span style="color:red">*</span></label>
                                                        <select name="category" id="category" class="form-control" required>
                                                            <option value="" selected disabled>select a category</option>
                                                            @foreach($getRecord as $record)
                                                            <option value="{{ $record->id }}">{{ $record->category }}</option>
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
                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="New Tag">
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
                                                        <input type="text" name="title" class="form-control" id="exampleInputEmail1" placeholder="Title" value="{{ old('title') }}" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Thumb Image<span style="color:red">*</span></label>
                                                        <input type="file" name="image" class="form-control" id="exampleInputEmail1" placeholder="Image" value="{{ old('image') }}" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Description<span style="color:red"></span></label>
                                                <textarea name="description" class="form-control" id="exampleInputEmail1" placeholder="Description" style="width: 100%; height: 100px;" required>{{ old('description') }}</textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="editor">Content</label>
                                                <textarea name="content" id="description" cols="30" rows="10">{{ old('content') }}</textarea>
                                            </div>

                                            <div class="form-group">

                                                <label for="">Feature News</label>
                                                <label class="switch">
                                                    <input type="checkbox" name="check">
                                                    <span class="slider round"></span>
                                                </label>
                                                <label for="">Latest News</label>
                                                <label class="switch">
                                                    <input type="checkbox" name="latest">
                                                    <span class="slider round"></span>
                                                </label>
                                                <label for="">Popular News</label>
                                                <label class="switch">
                                                    <input type="checkbox" name="popular">
                                                    <span class="slider round"></span>
                                                </label>
                                                <label for="">Most Viewed</label>
                                                <label class="switch">
                                                    <input type="checkbox" name="viewed">
                                                    <span class="slider round"></span>
                                                </label>
                                                <label for="">Most Read</label>
                                                <label class="switch">
                                                    <input type="checkbox" name="read">
                                                    <span class="slider round"></span>
                                                </label>
                                                <label for="">Most Recent</label>
                                                <label class="switch">
                                                    <input type="checkbox" name="recent">
                                                    <span class="slider round"></span>
                                                </label>


                                            </div>
                                            <!-- /.card-body -->
                                            <div class="card-footer">
                                                <button type="submit" class="btn btn-info">Submit</button>
                                            </div>
                                    </form>
                                </div>
                                @endcan
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @include('admin.layouts.message')
        </div>
        <script>
            $('#description').summernote({
                placeholder: 'description...',
                tabsize: 1,
                height: 300
            });
        </script>
    </section>
</main>

<!-- Include Select2 JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script>
    // $(document).ready(function() {
    //     // Initialize Select2 with tagging enabled
    //     $('.js-example-basic-multiple').select2({
    //         tags: true,
    //         tokenSeparators: [',', ' '],
    //         createTag: function(params) {
    //             var term = $.trim(params.term);
    //             if (term === '') {
    //                 return null;
    //             }
    //             return {
    //                 id: term,
    //                 text: term,
    //                 newTag: true
    //             };
    //         }
    //     });

    //     // Function to add new options to the select2 dropdown
    //     function addOption(value, text) {
    //         var $select = $('.js-example-basic-multiple');
    //         var optionExists = $select.find('option[value="' + value + '"]').length > 0;
    //         if (!optionExists) {
    //             var newOption = new Option(text, value, true, true);
    //             $select.append(newOption).trigger('change');
    //         }
    //     }

    //     // Event listener for input changes and Enter key press
    //     $('.js-example-basic-multiple').on('select2:open', function() {
    //         var $search = $('.select2-search__field');

    //         // Handle blur event
    //         $search.off('blur.addOption').on('blur.addOption', function() {
    //             var value = $search.val().trim();
    //             if (value !== '') {
    //                 addOption(value, value);
    //             }
    //         });

    //         // Handle keypress event
    //         $search.off('keypress.addOption').on('keypress.addOption', function(event) {
    //             if (event.which === 13) { // Check if Enter key is pressed
    //                 var value = $search.val().trim();
    //                 if (value !== '') {
    //                     addOption(value, value);
    //                     $search.val(''); // Clear the input field after adding the option
    //                 }
    //             }
    //         });
    //     });

    //     // Handle adding option when clicking outside the dropdown
    //     $(document).on('click', function(event) {
    //         var $search = $('.select2-search__field');
    //         var isSelect2Input = $(event.target).closest('.select2-container').length > 0;
    //         var isSearchInput = $(event.target).hasClass('select2-search__field');

    //         if (!isSelect2Input && !isSearchInput) {
    //             var value = $search.val().trim();
    //             if (value !== '') {
    //                 addOption(value, value);
    //                 $search.val(''); // Clear the input field after adding the option
    //             }
    //         }
    //     });
    // });









    $(document).ready(function() {
        $.ajax({
            url: '/get-states',
            type: 'GET',
            dataType: 'json',
            success: function(data) {
                // Loop through the received data and append options to the select element
                $.each(data, function(index, state) {
                    $('.js-example-basic-multiple').append('<option value="' + state.id + '">' + state.tag + '</option>');
                });

                // Initialize Select2 after populating options
                $('.js-example-basic-multiple').select2();
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
            var newTag = $('#exampleInputEmail1').val();

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
                    $('#exampleInputEmail1').val('');
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

@section('style')
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
@endsection