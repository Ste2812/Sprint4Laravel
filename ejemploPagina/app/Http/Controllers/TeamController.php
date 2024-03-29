<?php

namespace App\Http\Controllers;

use App\Models\Team;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('teams.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'nombre'=> 'required',
            'tipo'=>'required',
            'num_jugadores'=>'required',
        ]);


        $team= new Team();
        $team->nombre= $request->nombre;
        $team->tipo= $request->tipo;
        $team->num_jugadores= $request->num_jugadores;
        $team->descripcion= $request->descripcion;

        $team->save();

        return redirect()->route('index', $team);


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $teams= Team::find($id);
        return view('teams.show', compact('teams'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function edit(Team $team)
    {
        //$teams= Team::find($id);
        return view('teams.edit', compact('team'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Team $team)
    {
        $team->nombre= $request->nombre;
        $team->tipo= $request->tipo;
        $team->num_jugadores= $request->num_jugadores;
        $team->descripcion= $request->descripcion;

        $team->save();
        return redirect()->route('index', $team);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $teams= Team::find($id);
        return view('teams.destroy', compact('teams'));
    }
}
