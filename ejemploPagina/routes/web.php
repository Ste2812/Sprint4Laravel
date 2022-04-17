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

Route::get('/inde', function () {
    return view('welcome');
});

Route::get('/', IndexController::class)->name('index');

Route::controller(TeamController::class)->group(function(){

Route::get('team/register','create')->name('team.create');

Route::post('team', 'store')->name('team.store');

Route::get('team/{id}/list/', 'show')->name('team.show');

Route::get('team/{team}/edit', 'edit')->name('team.edit');

Route::put('team/{team}/update', 'update')->name('team.update');

Route::get('team/{id}/delete', 'destroy')->name('team.destroy');
});

Route::controller(GameController::class)->group(function(){

Route::get('game/register', 'create')->name('game.create');

Route::get('game/list{id}', 'show')->name('game.show');

Route::get('game/update', 'update')->name('game.update');

Route::get('game/delete', 'destroy')->name('game.destroy');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
