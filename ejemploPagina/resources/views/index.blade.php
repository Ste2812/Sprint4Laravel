@extends('layouts.plantilla')

@section('title', 'index')

@section('content')
<h1>pagina index</h1>

<a href="{{route('team.create')}}">Registar equipo</a>
<br><br>


<table class="ml-4 border-4 border-black">
    <thead class="overscroll-contain">
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
    <td class="border-b-2 border-black"><a class="btn ml-2 text-center text-sm bg-blue-500 hover:bg-blue-700 text-white font-bold rounded" href="{{route('team.show', $team->id)}}">Mostrar</a></td>
    <td class="border-b-2 border-black"><a class="btn ml-2 mr-2 text-center text-sm bg-red-500 hover:bg-red-700 text-white font-bold rounded" href="{{route('team.destroy', $team->id)}}">Eliminar</a></td>
    <td class="border-b-2 border-black"><a class="btn ml-2 mr-2 text-center text-sm bg-green-500 hover:bg-green-700 text-white font-bold rounded" href="{{route('team.edit', $team->id)}}">Editar</a></td>
</tr>
</tbody>


    @endforeach
</table>
{{$teams->links()}}

@endsection
