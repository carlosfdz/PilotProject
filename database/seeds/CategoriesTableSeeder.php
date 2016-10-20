<?php

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 1; $i < 9; $i++) {
            DB::table('categories')->insert([
                'name' => $faker->randomElement(['Drama', 'Comedia', 'Accion', 'Aventura', 'Terror', 'Suspenso', 'Musical', 'Belico']),
                'created_at' => date('Y-m-d H:m:s'),
                'updated_at' => date('Y-m-d H:m:s'),
            ]);
        }
    }
}
