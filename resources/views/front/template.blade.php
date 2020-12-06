<html>
    <head>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Home Page</title>
        {{-- Bootstrap 4 --}}
        <link rel="stylesheet" href="{{ asset('lib/united-bootstrap.min.css') }}">
        {{-- Custom CSS --}}
        <link rel="stylesheet" href="{{ asset('lib/style.css') }}">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary border-bottom">
                <div class="container">
                    @if(empty($logo[0]->meta_value))
                    <a class="navbar-brand" href="{{ url('/') }}">Programming Blog</a>
                    @else
                    <a class="navbar-brand" href="{{ url('/') }}">
                        <img src="{{asset('imgs/'.$logo[0]->meta_value)}}" class="img-responsive" />
                    </a>
                    @endif
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav m-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/') }}">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/') }}">Posts</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/categories') }}">Categories</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/tags') }}">#Tags</a>
                        </li>
                        </ul>
                        <form method="get" class="form-inline my-2 my-lg-0" action="{{ url('/') }}">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" name="s" />
                            <button class="btn btn-dark" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
        <section>
            <div class="container">
                <div class="row mt-3">
                    {{-- Left Content --}}
                    <div class="col-sm-8">
                        @yield('content')
                    </div>
                    {{-- Right Content --}}
                    <aside class="col-sm-4">
                        {{-- Subscribe --}}
                        @if(Session::has('success'))
                        <p class="alert alert-success">{{ session('success') }}</p>
                        @endif
                        @if($errors->has('subscriber'))
                            @foreach($errors->get('subscriber') as $er)
                                <p class="text-danger">{{ $er }}</p>
                            @endforeach
                        @endif
                        <form class="card p-2" method="post" action="{{ url('subscribe') }}">
                            {{ csrf_field() }}
                            <div class="input-group">
                              <input type="text" class="form-control" name="subscriber" placeholder="Enter Email">
                              <div class="input-group-append">
                                <button type="submit" class="btn btn-success">Subscribe</button>
                              </div>
                            </div>
                        </form>
                        {{-- Popular Posts --}}
                        <div class="card mb-4">
                            <div class="card-header">
                                Popular Posts
                            </div>
                            <div class="list-group list-group-flush">
                                @if(count($popularPosts)>0)
                                    @foreach($popularPosts as $p)
                                        <a href="{{url('post/'.$p->post_slug.'/'.$p->post_id)}}" class="list-group-item">{{$p->post_title}} <span class="badge badge-secondary float-right">{{$p->post_views}}</span></a>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                        {{-- Ads --}}
                        <div class="card mb-4">
                            <div class="card-body bg-secondary">
                                <h4 class="text-center text-white">Ads</h4>
                            </div>
                        </div>
                        {{-- Recent Posts --}}
                        <div class="card mb-4">
                            <div class="card-header">
                                Recent Posts
                            </div>
                            <div class="list-group list-group-flush">
                                @if(count($recentPosts)>0)
                                    @foreach($recentPosts as $p)
                                        <a href="{{url('post/'.$p->post_slug.'/'.$p->post_id)}}" class="list-group-item">{{$p->post_title}} <br/>
                                        <small class="badge badge-secondary">{{$p->created_at}}</small>
                                        </a>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </section>
<footer class="text-muted border-top pt-3">
  <div class="container">
    <p class="float-right">
      <a href="#">Back to top</a>
    </p>
    <p>Personal Blog <a href="{{url('/')}}">Visit the homepage</a>.</p>
  </div>
</footer>
    </body>
</html>