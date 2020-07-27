@extends('dashboard.base')

@section('content')

    <div class="container-fluid">
        <div class="fade-in">
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-primary">
                        <div class="card-body">
                            <div class="text-value-lg">{{ $all }}</div>
                            <div>All Addresses</div>
                        </div>
                    </div>
                </div>
                <!-- /.col-->
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-info">
                        <div class="card-body">
                            <div class="text-value-lg">{{ $delivered }}</div>
                            <div>Delivered</div>
                        </div>
                    </div>
                </div>
                <!-- /.col-->
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-warning">
                        <div class="card-body">
                            <div class="text-value-lg">{{ $opened }}</div>
                            <div>Opened</div>
                        </div>
                    </div>
                </div>
                <!-- /.col-->
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-danger">
                        <div class="card-body">
                            <div class="text-value-lg">{{ $spammed }} / {{ $failed }}</div>
                            <div>Spammed / Failed</div>
                        </div>
                    </div>
                </div>
                <!-- /.col-->
            </div>
            <!-- /.row-->
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-12">
                            <center><strong>Add Address and Send</strong></center>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    @if(Session::has('message'))
                        <div class="row">
                            <div class="col-12">
                                <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                            </div>
                        </div>
                    @endif
                    <div class="row">
                        <div class="col-sm-12">
                            <form method="POST" action="{{ route('addresses.store') }}">
                                @csrf
                                <div class="form-group row">
                                    <div class="col">
                                        <label>Name</label>
                                        <input class="form-control" type="text" placeholder="{{ __('Name') }}" name="name" required autofocus>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <label>Email</label>
                                        <input class="form-control" type="email" placeholder="{{ __('Email') }}" name="email" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <label>Country</label>
                                        <input class="form-control" type="text" placeholder="{{ __('Country') }}" name="country" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <label>Source</label>
                                        <input class="form-control" type="text" placeholder="{{ __('Source') }}" name="source" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col">
                                        <button class="btn btn-block btn-success" type="submit">{{ __('Submit') }}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /.col-->
                    </div>
                    <!-- /.row-->
                </div>
            </div>
            <!-- /.card-->
        </div>
    </div>

@endsection

@section('javascript')
    <script src="{{ asset('js/main.js') }}" defer></script>
@endsection
