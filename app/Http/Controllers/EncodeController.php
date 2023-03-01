<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Traits\AddRecordTraits;
use App\Models\Encode;

class EncodeController extends Controller
{
    //
    use AddRecordTraits;

    public function index(){
        return Inertia::render('Encode/Index');
    }

    public function create(){
        return Inertia::render('Encode/Create');
    }
    public function store(Request $request){
        $this->createNewRecord($request, Encode::class);
    }
}
