<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Team;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {

        $teams= Team::orderBy('id','desc')->paginate();

        $games= Game::orderBy('id', 'desc')->paginate();

        return view('index', compact('teams', 'games'));
    }
}
