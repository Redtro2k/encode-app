<?php

namespace App\Http\Controllers\Invoke;

use App\Http\Controllers\Controller;
use Illuminate\{Http\Request, Support\Facades\Cookie};
use GuzzleHttp\Client;

class FindController extends Controller
{
    public function __invoke(Request $request){
        $address = $request->address;
        $apiKey = "AIzaSyDAHw4l2BNXKNgXm44QnOc9xDjtaVUR8p8";

        $client = new Client();
        $url = "https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=$apiKey";
        try {
            $response = $client->get($url);
            $content = $response->getBody()->getContents();
            $data = json_decode($content, true);
            $location = $data['results'][0]['geometry']['location'];
            return response()->json($location, 200);
        }catch(\Exception $e){
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
