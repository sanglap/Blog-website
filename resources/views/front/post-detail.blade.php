@extends('front.template')
@section('content')
    <div class="card mb-4 post-box">
        <div class="card-header">
            {{ $postDetail->post_title }}
        </div>
        <div class="card-body">
            <img src="{{ asset('imgs/'.$postDetail->featured_img) }}" class="card-img-top mb-3" alt="{{ $postDetail->post_title }}">
            <p>{{ $postDetail->post_body }}</p>
        </div>
        <div class="card-footer">
            <small><b>Last Updated: </b> {{ $postDetail->updated_at }}</small>
        </div>
    </div>
{{-- Comment List --}}
<div class="card mt-4">
    <div class="card-header">
        Comments
    </div>
    <div class="card-body">
        @if(count($comments)>0)
            @foreach($comments as $c)
                <div class="row">
                    <blockquote class="blockquote border-left p-2 border-warning mb-4">
                      <p class="mb-0">{{ $c->comment_body }}</p>
                      <footer class="blockquote-footer">{{ $c->name }} <cite title="Source Title">( {{ $c->email_id }} )</cite></footer>
                    </blockquote>
                </div>
            @endforeach
        @else
            <p>Be the first to comment</p>
        @endif
    </div>
</div>
{{-- Add New Comment --}}
<div class="card mt-4">
    <div class="card-header bg-primary text-white">
        Add Comment
    </div>
    <div class="card-body">
        <form method="post" action="{{ url('comment/'.$slug.'/'.$post_id) }}">
            @if(Session::has('success'))
                <p class="alert alert-success">{{ session('success') }}</p>
            @endif
            {{ csrf_field() }}
            <table class="table table-bordered">
                <tr>
                    <th>Full Name</th>
                    <td>
                        <input type="text" name="name" class="form-control" />
                        @if($errors->has('name'))
                            @foreach($errors->get('name') as $er)
                            <p class="text-danger">{{$er}}</p>
                            @endforeach
                        @endif
                    </td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><input type="text" name="email" class="form-control" />
                        @if($errors->has('email'))
                            @foreach($errors->get('email') as $er)
                            <p class="text-danger">{{$er}}</p>
                            @endforeach
                        @endif
                    </td>
                </tr>
                <tr>
                    <th>Textarea</th>
                    <td><textarea name="comment" class="form-control"></textarea>
                        @if($errors->has('comment'))
                            @foreach($errors->get('comment') as $er)
                            <p class="text-danger">{{$er}}</p>
                            @endforeach
                        @endif
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" class="btn btn-submit btn-dark" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
@endsection