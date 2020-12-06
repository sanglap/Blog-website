@extends('template')
@section('pageTitle','All Comments')
@section('content')

        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i> @yield('pageTitle')
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    @if(Session::has('success'))
                        <p class="alert alert-success">{{ session('success') }}</p>
                    @endif
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Post</th>
                                <th>Comment</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>PostID</th>
                                <th>Comment</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @if(count($comments)>0)
                                @foreach($comments as $comment)
                                <tr class="@if($comment->comment_status==1) table-success @else  table-danger @endif">
                                    <td>{{ $comment->post_id }}</td>
                                    <td>{{ $comment->comment_body }}</td>
                                    <td>{{ $comment->created_at }}</td>
                                    <td>
                                        @if($comment->comment_status==1)
                                        <a title="Disapprove" href="{{ url('admin/comment/update/0/'.$comment->comment_id) }}" class="badge badge-warning btn-sm"><i class="fa fa-ban"></i></a>
                                        @else
                                        <a title="Approve" href="{{ url('admin/comment/update/1/'.$comment->comment_id) }}" class="badge badge-success btn-sm"><i class="fa fa-check"></i></a>
                                        @endif
                                        <a onclick="return confirm('Are you sure to delete this data?')" href="{{ url('admin/comment/delete/'.$comment->comment_id) }}" class="badge badge-danger btn-sm"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
@endsection