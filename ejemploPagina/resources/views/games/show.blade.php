@extends('layouts.plantilla')

@section('title', 'match list')

@section('content')
    <h1>pagina de listado partidos</h1>

    <a href="{{route('index')}}">Home</a>
    <br><br>

    <p><strong>Fecha: </strong>{{$game->fecha}}</p>
    <p><strong>Lugar: </strong>{{$game->lugar}}</p>
    <p><strong>Equipo A: </strong>{{$game->id_equipo_A}}</p>
    <p><strong>Equipo B: </strong>{{$game->id_equipo_B}}</p>

    <form action="{{route('game.destroy', $game)}}" method="POST"></form>
        @csrf
        @method('delete')
        <td class="border-b-2 border-black"><button type="submit" class="btn ml-2 mr-2 text-center text-sm bg-red-500 hover:bg-red-700 text-white font-bold rounded">Eliminar</button></td>
        </form>

@endsection
