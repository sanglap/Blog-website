@extends('front.template')
@section('content')
@if(count($posts)>0)
{{ $posts->links('vendor.pagination.bootstrap-4') }}
@foreach($posts as $post)
    <div class="card mb-4 post-box">
        <div class="card-header">
            <a href="{{ url('post/'.$post->post_slug.'/'.$post->post_id) }}">{{ $post->post_title }}</a>
        </div>
        <div class="card-body">
            <a href="{{ url('post/'.$post->post_slug.'/'.$post->post_id) }}">
            <img src="{{ asset('imgs/'.$post->featured_img) }}" class="card-img-top mb-3" alt="{{ $post->post_title }}">
            </a>
            <p>{{ str_limit($post->post_body,100,'...') }}</p>
            <p><a href="{{ url('post/'.$post->post_slug.'/'.$post->post_id) }}" class="btn btn-dark btn-sm">Read More...</a></p>
        </div>
        <div class="card-footer">
            <small><b>Last Updated: </b> {{ $post->updated_at }}</small>
        </div>
    </div>
    @endforeach
@else
    <p>No Data Found!!</p>
@endif
@endsection