@extends('user.Master')

@section('css')
<link rel="stylesheet" href="{{ asset('css/user/style.css ')}}" type="text/css">
<link rel="stylesheet" href="{{ asset('css/user/elegant-icons.css ')}}" type="text/css">
<link rel="stylesheet" href="{{ asset('css/user/myCss/profile.css ')}}">
<link rel="stylesheet" href="{{ asset('AdminLTE-3.0.5/AdminLTE-3.0.5/plugins/fontawesome-free/css/all.min.css')}}">
<style>
    .card-body {
        width: 80%;
    }
    h5,h2 {
        color: white
    }
</style>
@endsection

@section('content')
      @if(session('pay'))
        <script type="text/javascript">
            console.log(session('pay'));
            toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-bottom-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "3000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
            };
            Command: toastr["success"]("Success", "{{ session('pay') }}")
        </script>
      @endif
<section class="content">
    <div class="container mb-5">
        <div class="row mb-5">
            <div class="col-md-4 pt-4 px-md-2 px-lg-3">
                <div class="card">
                  <div class="card-body d-flex flex-column justify-content-around mx-auto">
                    <div class="text-center pt-5">
                      <h5 class="my-4">Week Plan</h5>
                    </div>

                    <div class="text-center my-5">
                      <h2 class="mb-3">20.000vnd/week</h2>
                      <form action="{{ route('upgrade.commit', ['type' => 1]) }}" method="POST" target="_blank">
                        @csrf
                        <button type="submit" name="redirect" class="btn btn-outline-danger rounded-pill" >Upgrade </button>
                      </form>
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
                      <h2 class="mb-3">70.000vnd/month</h2>
                      <form action="{{ route('upgrade.commit', ['type' => 2]) }}" method="POST" target="_blank">
                        @csrf
                        <button type="submit" name="redirect" class="btn btn-outline-danger rounded-pill" >Upgrade </button>
                      </form>                    </div>
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
                      <h2 class="mb-3">750.000vnd/year</h2>
                      <form action="{{ route('upgrade.commit', ['type' => 3]) }}" method="POST" target="_blank">
                        @csrf
                        <button type="submit" name="redirect" class="btn btn-outline-danger rounded-pill" >Upgrade </button>
                      </form>                    </div>
                  </div>
                </div>
            </div>
        </div>

    </div>
</section>
@endsection

@section('js')
@endsection
