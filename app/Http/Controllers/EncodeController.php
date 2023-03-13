<?php

namespace App\Http\Controllers;

use Request;
use Inertia\Inertia;
use App\Traits\AddRecordTraits;
use App\Models\Encode;
use App\Http\Requests\EncodeRequest;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\EncodeExport;
use Spatie\QueryBuilder\QueryBuilder;


class EncodeController extends Controller
{
    //
    use AddRecordTraits;

    public function __construct(Encode $encode){
        $this->encode = $encode;
    }
    public function index(){
        $query = QueryBuilder::for(Encode::class)
            ->allowedFilters('client_name')
            ->defaultSort('-created_at')
            ->paginate(11);
        return Inertia::render('Encode/Index', [
            'items' => $query,
            'filters' => Request::only(['search'])
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

    public function edit($id){
        $attr = $this->encode->findOrFail($id);
       return Inertia::render('Encode/Edit', [
        'encode' => $attr
       ]);
    }

    public function update(EncodeRequest $request, $id){
        if($request->validated()){
            $this->updateExistingRecord($id, $request->validated(), $this->encode);
            return redirect()->route('encode.index')->with('message', 'Successfully Update Records');
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
