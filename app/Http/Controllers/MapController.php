<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Http\Requests\MapRequest;

class MapController extends Controller
{
    public function create()
    {
        return Inertia::render('Map/Create');
    }

    public function store(MapRequest $request)
    {
        return $request;
    }
}
