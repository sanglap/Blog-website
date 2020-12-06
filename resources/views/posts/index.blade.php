@extends('template')
@section('pageTitle','All Posts')
@section('content')

        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i> @yield('pageTitle')
                <a href="{{ url('admin/post/add') }}" class="float-right btn btn-success btn-sm"><i class="fa fa-plus"></i> Add Data</a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <form method="POST" action="{{ url('admin/post/add') }}">
                    {{ csrf_field() }}
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Tags</th>
                                <th>Comments</th>
                                <th>Added By</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Tags</th>
                                <th>Comments</th>
                                <th>Added By</th>
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
                                    <td>{{ $post->user_id }}</td>
                                    <td>{{ $post->user_id }}</td>
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
                    </form>
                </div>
            </div>
        </div>
@endsection