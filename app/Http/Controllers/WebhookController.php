<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Addresses;

class WebhookController extends Controller
{
    public function handle(Request $request)
    {
        $hookEvent = request()->input('event-data')['event'];
        $hookRecipient = request()->input('event-data')['recipient'];

        $address = Addresses::where('email', $hookRecipient)->first();
        if($hookEvent === 'delivered')
            $address->status = 1;
        if($hookEvent === 'opened')
            $address->status = 2;
        if($hookEvent === 'complained')
            $address->status = 3;
        if($hookEvent === 'failed')
            $address->status = 4;
        $address->save();

        return response()->json(['status' => 'ok', 'event' => $hookEvent, 'recipient' => $hookRecipient, 'name' => $address->name]);
    }
}
