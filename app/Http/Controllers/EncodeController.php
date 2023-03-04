<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Traits\AddRecordTraits;
use App\Models\Encode;
use App\Http\Requests\EncodeRequest;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\EncodeExport;


class EncodeController extends Controller
{
    //
    use AddRecordTraits;

    public function __construct(Encode $encode){
        $this->encode = $encode;
    }
    public function index(){
        return Inertia::render('Encode/Index', [
            'items' => $this->encode->orderBy('created_at', 'DESC')->paginate(12)
        ]);
    }

    public function export(){
        return Excel::download(new EncodeExport, 'exporting.xlsx');
    }

    public function create(){
        return Inertia::render('Encode/Create');
    }
    public function store(EncodeRequest $request){
            if($request->validated()){
                $this->createNewRecord($request->validated(), $this->encode);
                return redirect()->back()->with('message', 'successfully created!');
            }
    }

    public function destroy($id){
        $this->encode->find($id)->delete();
        return redirect()->back();
    }

    public function clearAll(){
        $this->encode->all()->each->delete();
        return redirect()->back();
    }
}
