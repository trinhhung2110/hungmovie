@extends('user.Master')

@section('css')
<link rel="stylesheet" href="{{ asset('css/user/style.css ')}}" type="text/css">
<link rel="stylesheet" href="{{ asset('css/user/elegant-icons.css ')}}" type="text/css">
<link rel="stylesheet" href="{{ asset('css/user/myCss/profile.css ')}}">
<link rel="stylesheet" href="{{ asset('AdminLTE-3.0.5/AdminLTE-3.0.5/plugins/fontawesome-free/css/all.min.css')}}">
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
        <div class="col-md-4 pt-4 px-md-2 px-lg-3">
            <div class="card">
              <div class="card-body d-flex flex-column justify-content-around mx-auto">
                <div class="text-center pt-5">
                  <h5 class="my-4">Week Plan</h5>
                </div>

                <div class="text-center my-5">
                  <h2 class="mb-3">Free</h2><button class="btn btn-outline-danger rounded-pill" type="submit">Sign Up </button>
                </div>
              </div>
            </div>
        </div>
        <div class="col-md-4 pt-4 px-md-2 px-lg-3">
            <div class="card">
              <div class="card-body d-flex flex-column justify-content-around mx-auto">
                <div class="text-center pt-5">
                  <h5 class="my-4">Month Plan</h5>
                </div>

                <div class="text-center my-5">
                  <h2 class="mb-3">Free</h2><button class="btn btn-outline-danger rounded-pill" type="submit">Sign Up </button>
                </div>
              </div>
            </div>
        </div>
        <div class="col-md-4 pt-4 px-md-2 px-lg-3">
            <div class="card">
              <div class="card-body d-flex flex-column justify-content-around mx-auto">
                <div class="text-center pt-5">
                  <h5 class="my-4">Year Plan</h5>
                </div>
                <div class="text-center my-5">
                  <h2 class="mb-3">Free</h2><button class="btn btn-outline-danger rounded-pill" type="submit">Sign Up </button>
                </div>
              </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('js')
@endsection
