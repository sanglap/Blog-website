@extends('template')
@section('pageTitle','All Categories')
@section('content')

        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i> @yield('pageTitle')
                <a href="{{ url('admin/category/add') }}" class="float-right btn btn-success btn-sm"><i class="fa fa-plus"></i> Add Data</a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <form method="POST" action="{{ url('admin/category/add') }}">
                    {{ csrf_field() }}
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Title</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @if(count($categories)>0)
                                @foreach($categories as $post)
                                <tr>
                                    <td>{{ $post->cat_title }}</td>
                                    <td>{{ $post->created_at }}</td>
                                    <td>
                                        <a href="{{ url('admin/category/update/'.$post->cat_id) }}" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                        <a onclick="return confirm('Are you sure to delete this data?')" href="{{ url('admin/category/delete/'.$post->cat_id) }}" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
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