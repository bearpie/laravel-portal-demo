@extends('dashboard.base')

@section('content')

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-sm-12 col-md-10 col-lg-8 col-xl-6">
                    <div class="card">
                        <div class="card-header">
                            <i class="fa fa-align-justify"></i> {{ __('Edit') }}: {{ $address->id }}
                        </div>
                        <div class="card-body">
                            <form method="POST" action="/addresses/{{ $address->id }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group row">
                                    <div class="col">
                                        <label>Name</label>
                                        <input class="form-control" type="text" placeholder="{{ __('Name') }}" name="name" value="{{ $address->name }}" required autofocus>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <label>Email</label>
                                        <input class="form-control" type="email" placeholder="{{ __('Email') }}" name="email" value="{{ $address->email }}" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <label>Country</label>
                                        <input class="form-control" type="text" placeholder="{{ __('Country') }}" name="country" value="{{ $address->country }}" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <label>Source</label>
                                        <input class="form-control" type="text" placeholder="{{ __('Source') }}" name="source" value="{{ $address->source }}" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <button class="btn btn-block btn-success" type="submit">{{ __('Save') }}</button>
                                        <a href="{{ route('addresses.index') }}" class="btn btn-block btn-primary">{{ __('Return') }}</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('javascript')

@endsection
