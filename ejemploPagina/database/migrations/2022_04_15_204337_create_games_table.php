<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('games', function (Blueprint $table) {
            $table->id();
            $table->dateTime('fecha');
            $table->timestamps();
            $table->string('lugar');
            $table->bigInteger('id_equipo_A')->unsigned();
            $table->bigInteger('id_equipo_B')->unsigned();
            $table->text('comentarios')->nullable();

            $table->foreign('id_equipo_A')->references('id')->on('teams');
            $table->foreign('id_equipo_B')->references('id')->on('teams');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('games');
    }
};
