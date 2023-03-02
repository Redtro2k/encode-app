<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Traits\AddRecordTraits;
use App\Models\Encode;
use App\Http\Requests\EncodeRequest;

class EncodeController extends Controller
{
    //
    use AddRecordTraits;

    public function __construct(Encode $encode){
        $this->encode = $encode;
    }
    public function index(){
        return Inertia::render('Encode/Index', [
            'items' => $this->encode->all()
        ]);
    }

    public function create(){
        return Inertia::render('Encode/Create');
    }
    public function store(EncodeRequest $request){
            if($request->validated()){
                $this->encode->create([
                    'client_name' =>  filled($request['client_name']) ? $request['client_name'] : 'N/A',
                    'address' =>  filled($request['address']) ? $request['address'] : 'N/A',
                    'area' =>  filled($request['area']) ? $request['area'] : 'N/A',
                    'telephone' =>  filled($request['telephone']) ? $request['telephone'] : 'N/A',
                    'homepage' =>  filled($request['homepage']) ? $request['homepage'] : 'N/A',
                    'category' =>   filled($request['category']) ? $request['category'] : 'N/A',
                    'open_hours' =>   filled($request['open_hours']) ? $request['open_hours'] : 'N/A',
                    'facebook_fanpage_url' => filled($request['facebook_fanpage_url']) ? $request['facebook_fanpage_url'] : 'N/A',
                    'memo' => filled($request['memo']) ? $request['memo'] : ''
                ]);
            }
            return redirect()->back()->with('success', 'successfully created!');
    }

    public function destroy($id){
        $this->encode->find($id)->delete();
        return redirect()->back();
    }
}
