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
@if (request()->has('vnp_Amount'))
    @php
        toast('You are upgraded account success!', 'success', 'top-right');
    @endphp
@endif
<section class="content">
    <div class="container mb-5">
        @if (auth()->user()->is_pay == 1 && auth()->user()->expired_at >= Carbon\Carbon::now())
            <div class="alert alert-light text-center" role="alert">
                Your account has been upgraded, the expired date is : {{ Carbon\Carbon::parse(auth()->user()->expired_at)->format('d/m/Y'); }}
            </div>
        @else
            <div class="row mb-5">
                <div class="col-md-4 pt-4 px-md-2 px-lg-3">
                    <div class="card">
                    <div class="card-body d-flex flex-column justify-content-around mx-auto">
                        <div class="text-center pt-5">
                        <h5 class="my-4">Week Plan</h5>
                        </div>
                        <div class="text-center my-5">
                         <h2 class="mb-3">20.000vnd/week</h2>
                            <form action="{{ route('upgrade.commit', ['type' => 1]) }}" method="POST">
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
                            <form action="{{ route('upgrade.commit', ['type' => 2]) }}" method="POST">
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
                        <h5 class="my-4">Year Plan</h5>
                        </div>
                        <div class="text-center my-5">
                            <h2 class="mb-3">750.000vnd/year</h2>
                            <form action="{{ route('upgrade.commit', ['type' => 3]) }}" method="POST">
                                @csrf
                                <button type="submit" name="redirect" class="btn btn-outline-danger rounded-pill"> Upgrade </button>
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
