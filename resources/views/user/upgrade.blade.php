@extends('user.Master')

@section('css')
<link rel="stylesheet" href="{{ asset('css/user/style.css ')}}" type="text/css">
<link rel="stylesheet" href="{{ asset('css/user/elegant-icons.css ')}}" type="text/css">
<link rel="stylesheet" href="{{ asset('css/user/myCss/profile.css ')}}">
<link rel="stylesheet" href="{{ asset('AdminLTE-3.0.5/AdminLTE-3.0.5/plugins/fontawesome-free/css/all.min.css')}}">
<style>
    .card-body {
        box-shadow: 0px 0px 5px 0px #888888;
    }
    h5,h2 {
        color: white
    }
</style>
@endsection

@section('content')
@if (request()->has('vnp_Amount'))
    @php
        toast('You are upgraded account success!', 'success', 'top-right');
    @endphp
@endif
<section class="content">
    <div class="container mb-5">
        @if (auth()->user() && auth()->user()->is_pay == 1 && auth()->user()->expired_at >= Carbon\Carbon::now())
            <div class="alert alert-light text-center" role="alert">
                Your account has been upgraded, the expired date is : {{ Carbon\Carbon::parse(auth()->user()->expired_at)->format('d/m/Y'); }}
            </div>
        @else
            <div class="row mb-5">
                <div class="col-md-4 pt-4 px-md-2 px-lg-3">
                    <div class="card">
                    <div class="card-body d-flex flex-column justify-content-around mx-auto">
                        <div class="text-center pt-5">
                            <img class="mb-3" src="{{ asset("upload/avatar/box.png") }}" alt="" style="max-width: 100%">
                            <h4 class="my-2 font-weight-bold text-white">Week Plan</h4>
                        </div>
                        <div class="text-center my-5">
                         <h3 class="mb-3 font-weight-bold">20.000đ/week</h3>
                            <form action="{{ route('upgrade.commit', ['type' => 1]) }}" method="POST">
                                @csrf
                                <button type="submit" name="redirect" class="btn btn-outline-danger rounded-pill px-3" >Upgrade </button>
                            </form>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 pt-4 px-md-2 px-lg-3">
                    <div class="card">
                    <div class="card-body d-flex flex-column justify-content-around mx-auto">
                        <div class="text-center pt-5">
                            <img class="mb-3" src="{{ asset("upload/avatar/box.png") }}" alt="" style="max-width: 100%">
                            <h4 class="my-2 font-weight-bold text-white">Month Plan</h4>
                        </div>
                        <div class="text-center my-5">
                            <h3 class="mb-3 font-weight-bold">70.000đ/month</h3>
                            <form action="{{ route('upgrade.commit', ['type' => 2]) }}" method="POST">
                                @csrf
                                <button type="submit" name="redirect" class="btn btn-outline-danger rounded-pill px-3" >Upgrade </button>
                            </form>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 pt-4 px-md-2 px-lg-3">
                    <div class="card">
                    <div class="card-body d-flex flex-column justify-content-around mx-auto">
                        <div class="text-center pt-5">
                            <img class="mb-3" src="{{ asset("upload/avatar/box.png") }}" alt="" style="max-width: 100%">
                            <h4 class="my-2 font-weight-bold text-white">Year Plan</h4>
                        </div>
                        <div class="text-center my-5">
                            <h3 class="mb-3 font-weight-bold">750.000đ/year</h3>
                            <form action="{{ route('upgrade.commit', ['type' => 3]) }}" method="POST">
                                @csrf
                                <button type="submit" name="redirect" class="btn btn-outline-danger rounded-pill px-3"> Upgrade </button>
                            </form>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
</section>
@endsection

@section('js')
@endsection
