@extends('front.template')
@section('content')
<h3 class="mb-4 border-bottom pb-1">All Tags</h3>
<div class="row">
@if(count($tags)>0)
    @foreach($tags as $t)
        <div class="col-sm-4 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><a href="{{ url('tag/'.$t) }}">{{ $t }}</a></h5>
                </div>
            </div>
        </div>
    @endforeach
@endif
</div>
{{-- Pagination --}}

@endsection