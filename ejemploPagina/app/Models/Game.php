<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Game extends Model
{
    public function lugar(): Attribute{//se ha pasado la funcion de protected a public para poder funcionar
        return new Attribute(
            get: function($value){
                return ucwords($value);

            },

            set: function($value){
                return strtolower($value);
            }
        );
    }

    //protected $fillable= ['fecha', 'lugar', 'id_equipo_A', 'id_equipo_B'];

    protected $guarded = ['status'];

    use HasFactory;
}
