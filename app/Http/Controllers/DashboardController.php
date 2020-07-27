<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Addresses;

class DashboardController extends Controller
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
        $allAddresses = Addresses::count();
        $deliveredAddresses = Addresses::where('status', 1)->count();
        $openedAddresses = Addresses::where('status', 2)->count();
        $spammedAddresses = Addresses::where('status', 3)->count();
        $failedAddresses = Addresses::where('status', 4)->count();

        return view('dashboard.homepage', ['all' => $allAddresses, 'delivered' => $deliveredAddresses, 'opened' => $openedAddresses, 'spammed' => $spammedAddresses, 'failed' => $failedAddresses]);
    }
}
