@extends('dashboard.base')

@section('content')

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-sm-12 col-md-10 col-lg-8 col-xl-6">
                    <div class="card">
                        <div class="card-header">
                            <i class="fa fa-align-justify"></i> Address: {{ $address->id }}
                        </div>
                        <div class="card-body">
                            <h4>Name:</h4>
                            <p> {{ $address->name }}</p>
                            <h4>Email:</h4>
                            <p> {{ $address->email }}</p>
                            <h4>Country:</h4>
                            <p>{{ $address->country }}</p>
                            <h4>Source:</h4>
                            <p>{{ $address->source }}</p>
                            <h4> Status: </h4>
                            <p>
                                <span>
                                    @if($address->status == 0)
                                        Not Sent
                                    @elseif($address->status == 1)
                                        Sent
                                    @elseif($address->status == 2)
                                        Replied
                                    @else
                                        Rejected
                                    @endif
                                </span>
                            </p>
                            <a href="{{ route('addresses.index') }}" class="btn btn-block btn-primary">{{ __('Return') }}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection


@section('javascript')

@endsection
