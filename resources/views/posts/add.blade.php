@extends('template')
@section('pageTitle','Add Post')
@section('content')
        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i> @yield('pageTitle')
                <a href="{{ url('admin/posts') }}" class="float-right btn btn-success btn-sm"><i class="fa fa-arrow-left"></i> List Data</a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <form method="POST" action="{{ url('admin/post/add') }}" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    @if(Session::has('success'))
                        <p class="alert alert-success">{{ session('success') }}</p>
                    @endif
                    <table class="table table-bordered">
                        <tr>
                            <th>Title</th>
                            <td><input class="form-control" name="post_title" placeholder="Title" type="text" />
                                @if($errors->any())
                                    @foreach ($errors->get('post_title') as $error)
                                        <p class="text-danger mt-1">{{ $error }}</p>
                                    @endforeach
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Description</th>
                            <td>
                                <textarea class="form-control" rows="8" placeholder="Description" name="post_desc"></textarea>
                                @if($errors->any())
                                    @foreach ($errors->get('post_desc') as $error)
                                        <p class="text-danger mt-1">{{ $error }}</p>
                                    @endforeach
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Category</th>
                            <td>
                                <table class="table table-bordered">
@if(count($categories)>0)
    @foreach($categories as $c)
        <tr>
            <td><input type="checkbox" value="{{ $c['cat_id'] }}" name="post_cat[]" /></td>
            <th>{{ $c['cat_title'] }}</th>
        </tr>
    @endforeach
@endif
                                </table>
                                @if($errors->any())
                                    @foreach ($errors->get('post_cat') as $error)
                                        <p class="text-danger mt-1">{{ $error }}</p>
                                    @endforeach
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Tags</th>
                            <td><input class="form-control" name="post_tags" placeholder="Comma Seprated Tags" type="text" />
                                @if($errors->any())
                                    @foreach ($errors->get('post_tags') as $error)
                                        <p class="text-danger mt-1">{{ $error }}</p>
                                    @endforeach
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Featured</th>
                            <td><input type="file" name="post_img" />
                                @if($errors->any())
                                    @foreach ($errors->get('post_img') as $error)
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