@extends('layouts.plantilla')

@section('title', 'team list')

@section('content')
    <h1>pagina de listado equipos</h1>

    <a href="{{route('index')}}">Home</a>
    <br><br>

    <p><strong>ID: </strong>{{$team->id}}</p>
    <p><strong>Nombre: </strong>{{$team->nombre}}</p>
    <p><strong>Tipo: </strong>{{$team->tipo}}</p>
    <p><strong>Descripción: </strong>{{$team->descripcion}}</p>



@endsection
