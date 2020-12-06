@extends('front.template')
@section('content')
<h3 class="mb-4 border-bottom pb-1">All Categories</h3>
{{ $categories->links('vendor.pagination.bootstrap-4') }}
<div class="row">
@if(count($categories)>0)
    @foreach($categories as $cat)
        <div class="col-sm-4 mb-4">
            <div class="card">
                <a href="{{ url('category/'.$cat->cat_slug.'/'.$cat->cat_id) }}">
                    <img src="{{ asset('imgs/category').'/'.$cat->cat_img }}" height="200" class="card-img-top" alt="{{ $cat->cat_title }}">
                </a>
                <div class="card-body">
                <h5 class="card-title"><a href="{{ url('category/'.$cat->cat_slug.'/'.$cat->cat_id) }}">{{ $cat->cat_title }}</a></h5>
                </div>
            </div>
        </div>
    @endforeach
@endif
</div>
    @endsection