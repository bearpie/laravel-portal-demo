@extends('dashboard.base')

@section('content')

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <div class="card">
                        <div class="card-header">
                            <i class="fa fa-align-justify"></i>{{ __('Addresses') }}
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
                                    <a href="{{ route('addresses.create') }}" class="btn btn-primary m-2">{{ __('Add Address') }}</a>
                                </div>
                            </div>
                            <br>
                            <table class="table table-responsive-sm table-striped">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Country</th>
                                    <th>Source</th>
                                    <th>Status</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($addresses as $address)
                                    <tr>
                                        <td><strong>{{ $address->name }}</strong></td>
                                        <td><strong>{{ $address->email }}</strong></td>
                                        <td>{{ $address->country }}</td>
                                        <td>{{ $address->source }}</td>
                                        <td>
                                            @if($address->status == 0)
                                                Not Sent
                                            @elseif($address->status == 1)
                                                Sent
                                            @elseif($address->status == 2)
                                                Replied
                                            @else
                                                Rejected
                                            @endif
                                        </td>
                                        <td>
                                            <a href="#" class="btn btn-block btn-success">Send</a>
                                        </td>
                                        <td>
                                            <a href="{{ url('/addresses/' . $address->id) }}" class="btn btn-block btn-primary">View</a>
                                        </td>
                                        <td>
                                            <a href="{{ url('/addresses/' . $address->id . '/edit') }}" class="btn btn-block btn-primary">Edit</a>
                                        </td>
                                        <td>
                                            <form action="{{ route('addresses.destroy', $address->id ) }}" method="POST">
                                                @method('DELETE')
                                                @csrf
                                                <button class="btn btn-block btn-danger">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            {{ $addresses->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection


@section('javascript')

@endsection

