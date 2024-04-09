@extends('admin.layouts.app')


@section('content')


<main id="main" class="main">
    <section class="section dashboard" style="margin-left: -260px;
">
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-0">
                        <div class="col-sm-6">
                            <h1 class="m-0">Add</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <div class="float-sm-right">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Dashboard</li>
                                </ol>

                                <!-- <a href="{{url('admin/admin/add')}}" class="btn btn-primary btn-sm">
            <i class="fas fa-plus"></i> Add Admin
        </a> -->
                            </div>
                        </div>

                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->
            <section class="section mt5">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Role :{{$role->name}}
                                    <!-- {{url('/admin/role/role')}} -->
                                    <a href="{{url('/admin/role/role')}}" class="btn btn-danger float-end">back</a>
                                </h4>
                            </div>
                            <div class="card-body">
                                <form action="{{ url('/admin/role/givepermission/' . $role->id) }}" method="POST">

                                    <!--  -->
                                    @csrf
                                    <div class="mb-3">
                                        <label for="">Permission</label>
                                        <div class="row">
                                            @foreach ($permission as $perm)
                                            <div class="col-md-3">
                                                <input type="checkbox" name="permission[]" value="{{ $perm->name }}" {{in_array($perm->id,$rolepermission) ? 'checked':''}} />
                                                {{ $perm->name }}
                                            </div>
                                            @endforeach
                                        </div>

                                    </div>
                                    <div class="mb-2">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </section>

            @include('admin.layouts.message')

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="text-center mt-1 mb-2">


                        </div>





                        <style>
                            /* The switch - the box around the slider */
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

                            /* The slider - the moving part */
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

                        {{-- <label class="switch">
    <input type="checkbox">
    <span class="slider rectangle"></span>
</label> --}}

                        {{-- its toggle button html script --}}















                        {{-- End - Content comes here --}}
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
    </section>
</main>
@endsection

@section('style')




@endsection