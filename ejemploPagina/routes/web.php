<?php

use App\Http\Controllers\GameController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MatchController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\TeamController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

Route::get('/', IndexController::class);

Route::controller(TeamController::class)->group(function(){

Route::get('team/register','create');

Route::get('team/list', 'show');

Route::get('team/update', 'update');

Route::get('team/delete', 'destroy');
});

Route::controller(GameController::class)->group(function(){

Route::get('game/register', 'create');

Route::get('game/show', 'show');

Route::get('game/update', 'update');

Route::get('game/delete', 'destroy');
});
