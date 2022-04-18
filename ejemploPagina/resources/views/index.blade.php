@extends('layouts.plantilla')

@section('title', 'index')

@section('content')
<h1>pagina index</h1>

<div>
<a href="{{route('team.create')}}">Registar equipo</a>
<br><br>


<table class="ml-4 border-4 border-black">
    <thead>
    <tr>
        <th class="pr-20 border-r-2 border-black">ID</th>
        <th class="pr-20 border-r-2 border-black">nombre</th>
        <th class="pr-20 border-r-2 border-black">tipo</th>
        <th class="px-2 border-b-2 border-black text-center">Opcion</th>
        <th class="border-b-2 border-black"></th>
        <th class="border-b-2 border-black"></th>

    </tr>
    </thead>
    @foreach ($teams as $team)

<tbody>
<tr>
    <td class="border-2 border-black font-semibold">{{$team->id}}</td>

    <td class="border-2 border-black">{{$team->nombre}}</td>
    <td class="border-2 border-black">{{$team->tipo}}</td>
    <td class="border-b-2 border-black"><a class="btn ml-2 text-center text-sm bg-blue-500 hover:bg-blue-700 text-white font-bold rounded" href="{{route('team.show', $team)}}">Mostrar</a></td>

    <form action="{{route('game.destroy', $team->id)}}" method="POST"></form>
        @csrf
        @method('delete')
    <td class="border-b-2 border-black"><a class="btn ml-2 mr-2 text-center text-sm bg-red-500 hover:bg-red-700 text-white font-bold rounded" href="{{route('team.destroy', $team->id)}}">Eliminar</a></td>
    </form>

    <td class="border-b-2 border-black"><a class="btn ml-2 mr-2 text-center text-sm bg-green-500 hover:bg-green-700 text-white font-bold rounded" href="{{route('team.edit', $team->id)}}">Editar</a></td>
</tr>
</tbody>


    @endforeach
</table>
{{$teams->links()}}
</div>

<div>
    <a href="{{route('game.create')}}">Registar partido</a>
    <br><br>


    <table class="ml-4 border-4 border-black">
        <thead>
        <tr>
            <th class="pr-20 border-r-2 border-black">ID</th>
            <th class="pr-20 border-r-2 border-black">Fecha</th>
            <th class="pr-20 border-r-2 border-black">Lugar</th>
            <th class="pr-20 border-r-2 border-black">Equipo A</th>
            <th class="pr-20 border-r-2 border-black">Equipo B</th>
            <th class="px-2 border-b-2 border-black text-center">Opcion</th>
            <th class="border-b-2 border-black"></th>
            <th class="border-b-2 border-black"></th>

        </tr>
        </thead>
        @foreach ($games as $game)

    <tbody>
    <tr>
        <td class="border-2 border-black font-semibold">{{$game->id}}</td>
        <td class="border-2 border-black">{{$game->fecha}}</td>
        <td class="border-2 border-black">{{$game->lugar}}</td>
        <td class="border-2 border-black">{{$game->id_equipo_A}}</td>
        <td class="border-2 border-black">{{$game->id_equipo_B}}</td>

        <td class="border-b-2 border-black"><a class="btn ml-2 text-center text-sm bg-blue-500 hover:bg-blue-700 text-white font-bold rounded" href="{{route('game.show', $game)}}">Mostrar</a></td>

        <form action="{{route('game.destroy', $game)}}" method="POST"></form>
        @csrf
        @method('delete')
        <td class="border-b-2 border-black"><button type="submit" class="btn ml-2 mr-2 text-center text-sm bg-red-500 hover:bg-red-700 text-white font-bold rounded">Eliminar</button></td>
        </form>

        <td class="border-b-2 border-black"><a class="btn ml-2 mr-2 text-center text-sm bg-green-500 hover:bg-green-700 text-white font-bold rounded" href="{{route('game.edit', $game->id)}}">Editar</a></td>
    </tr>
    </tbody>


        @endforeach
    </table>
    {{$games->links()}}
</div>

@endsection
