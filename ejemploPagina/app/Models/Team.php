<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Team extends Model
{
    public function nombre(): Attribute{//se ha pasado la funcion de protected a public para poder funcionar
        return new Attribute(
            get: function($value){
                return ucwords($value);

            },

            set: function($value){
                return strtolower($value);
            }
        );
    }

    protected $fillable= ['nombre', 'tipo', 'num_jugadores', 'descripcion'];

    use HasFactory;
}
