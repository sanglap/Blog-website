@extends('template')
@section('pageTitle','All Posts')
@section('content')

<!-- Icon Cards-->
<div class="row">
    <div class="col-xl-4 col-sm-6 mb-3">
        <div class="card text-white bg-primary o-hidden h-100">
        <div class="card-body">
            <div class="card-body-icon">
            <i class="fas fa-edit"></i>
            </div>
            <div class="mr-5">{{$totalPosts}} Posts</div>
        </div>
        <a class="card-footer text-white clearfix small z-1" href="{{ url('admin/posts') }}">
            <span class="float-left">View Details</span>
            <span class="float-right">
            <i class="fas fa-angle-right"></i>
            </span>
        </a>
        </div>
    </div>
    <div class="col-xl-4 col-sm-6 mb-3">
        <div class="card text-white bg-warning o-hidden h-100">
        <div class="card-body">
            <div class="card-body-icon">
            <i class="fas fa-fw fa-list"></i>
            </div>
            <div class="mr-5">{{$totalCategories}} Categories</div>
        </div>
        <a class="card-footer text-white clearfix small z-1" href="{{ url('admin/categories') }}">
            <span class="float-left">View Details</span>
            <span class="float-right">
            <i class="fas fa-angle-right"></i>
            </span>
        </a>
        </div>
    </div>
    <div class="col-xl-4 col-sm-6 mb-3">
        <div class="card text-white bg-success o-hidden h-100">
        <div class="card-body">
            <div class="card-body-icon">
            <i class="fas fa-comments"></i>
            </div>
            <div class="mr-5">{{$totalComments}} Comments</div>
        </div>
        <a class="card-footer text-white clearfix small z-1" href="{{ url('admin/comments') }}">
            <span class="float-left">View Details</span>
            <span class="float-right">
            <i class="fas fa-angle-right"></i>
            </span>
        </a>
        </div>
    </div>
</div>

        <!-- DataTables Example -->
        <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Data Table Example</div>
<div class="card-body">
    <div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Tags</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Tags</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @if(count($posts)>0)
                                @foreach($posts as $post)
                                <tr>
                                    <td>{{ $post->post_title }}</td>
                                    <td>{{ $post->post_cats }}</td>
                                    <td>{{ $post->post_tags }}</td>
                                    <td>{{ $post->created_at }}</td>
                                    <td>
                                        <a href="{{ url('admin/post/update/'.$post->post_id) }}" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                        <a onclick="return confirm('Are you sure to delete this data?')" href="{{ url('admin/post/delete/'.$post->post_id) }}" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
    </div>
</div>
<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
@endsection