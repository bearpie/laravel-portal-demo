<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Addresses;
use App\Models\EmailTemplate;
use Mail;

class AddressesController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $addresses = Addresses::paginate( 20 );
        return view('dashboard.addresses.index', ['addresses' => $addresses]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.addresses.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name'     => 'required',
            'email'    => 'required',
            'country'  => 'required',
            'source'   => 'required',
        ]);

        $address = new Addresses();
        $address->name  = $request->input('name');
        $address->email = $request->input('email');
        $address->country = $request->input('country');
        $address->source = $request->input('source');
        $address->save();
        $request->session()->flash('message', 'Successfully created address');
        return redirect()->route('addresses.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $address = Addresses::find($id);
        return view('dashboard.addresses.show', [ 'address' => $address ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $address = Addresses::find($id);
        return view('dashboard.addresses.edit', [ 'address' => $address ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //var_dump('bazinga');
        //die();
        $validatedData = $request->validate([
            'name'     => 'required',
            'email'    => 'required',
            'country'  => 'required',
            'source'   => 'required',
        ]);

        $address = Addresses::find($id);
        $address->name = $request->input('name');
        $address->email = $request->input('email');
        $address->country = $request->input('country');
        $address->source = $request->input('source');
        $address->save();
        $request->session()->flash('message', 'Successfully edited address');
        return redirect()->route('addresses.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $address = Addresses::find($id);
        if($address){
            $address->delete();
        }
        return redirect()->route('addresses.index');
    }

    public function sendMail($id, Request $request)
    {
        $template = EmailTemplate::first();
        $address = Addresses::find($id);
        Mail::send([], [], function ($message) use ($address, $template) {
            $message->from('davidlimdev@gmail.com', 'David Lim');
            $message->replyTo('davidlimdev@gmail.com', 'David Lim');
            $message->to($address->email);
            $message->subject($template->subject);
            $message->setBody('Hi ' . $address->name . '. \n' . $template->content);
        });
        $request->session()->flash('message', 'Successfully sent e-mail');
        return redirect()->route('addresses.index');
    }
}
