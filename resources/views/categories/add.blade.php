@extends('template')
@section('pageTitle','Add Category')
@section('content')
        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i> @yield('pageTitle')
                <a href="{{ url('admin/categories') }}" class="float-right btn btn-success btn-sm"><i class="fa fa-arrow-left"></i> List Data</a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <form method="POST" action="{{ url('admin/category/add') }}" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    @if(Session::has('success'))
                        <p class="alert alert-success">{{ session('success') }}</p>
                    @endif
                    <table class="table table-bordered">
                        <tr>
                            <th>Title</th>
                            <td><input class="form-control" name="cat_title" placeholder="Title" type="text" />
                                @if($errors->any())
                                    @foreach ($errors->get('cat_title') as $error)
                                        <p class="text-danger mt-1">{{ $error }}</p>
                                    @endforeach
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Description</th>
                            <td>
                                <textarea class="form-control" rows="8" placeholder="Description" name="cat_desc"></textarea>
                                @if($errors->any())
                                    @foreach ($errors->get('cat_desc') as $error)
                                        <p class="text-danger mt-1">{{ $error }}</p>
                                    @endforeach
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Image</th>
                            <td><input type="file" name="cat_img" />
                                @if($errors->any())
                                    @foreach ($errors->get('cat_img') as $error)
                                        <p class="text-danger mt-1">{{ $error }}</p>
                                    @endforeach
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" class="btn btn-primary" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
@endsection