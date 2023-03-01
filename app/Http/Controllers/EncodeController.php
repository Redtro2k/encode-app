<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class EncodeController extends Controller
{
    //

    public function index(){
        return Inertia::render('Encode/Index');
    }
    public function store(Request $request){

    }
}
