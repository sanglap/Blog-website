<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin Login</title>

  <!-- Custom fonts for this template-->
  <link href="{{ asset('backend/admin')}}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="{{ asset('backend/admin')}}/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form method="post" action="{{ url('admin/login') }}">
        @if(Session::has('error'))
        <p class="text-danger">{{session('error')}}</p>
        @endif
        {{csrf_field()}}
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" name="user" id="inputEmail" class="form-control" placeholder="Username">
              <label for="inputEmail">Username</label>
              @foreach($errors->get('user') as $e)
              <p class="text-danger">{{$e}}</p>
              @endforeach
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password" placeholder="Password" name="pwd" id="inputPassword" class="form-control" />
              <label for="inputPassword">Password</label>
              @foreach($errors->get('pwd') as $e)
              <p class="text-danger">{{$e}}</p>
              @endforeach
            </div>
          </div>
          <div class="form-group">
            <input type="submit" value="Login" class="btn btn-primary" />
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="{{asset('backend/admin')}}/vendor/jquery/jquery.min.js"></script>
  <script src="{{asset('backend/admin')}}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="{{asset('backend/admin')}}/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
