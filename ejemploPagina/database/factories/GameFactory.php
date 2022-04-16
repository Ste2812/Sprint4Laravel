<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Game;
use App\Models\Team;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Game>
 */
class GameFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Game::class;
    public function definition()
    {
        return [
            'fecha'=>$this->faker->date(),
            'lugar'=>$this->faker->city(),
            'id_equipo_A'=>$this->faker->randomElement(Team::all()->pluck('id')->toArray()),
            'id_equipo_B'=>$this->faker->randomElement(Team::all()->pluck('id')->toArray()),
            'comentarios'=>$this->faker->paragraph()
        ];
    }
}
