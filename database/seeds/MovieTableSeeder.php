<?php

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class MovieTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 0; $i < 15; $i++) {
            \DB::table('films')->insert(array(
                'title' => $faker->catchPhrase,
                'description' => $faker->text,
                'release_year' => date('Y-m-d'),
                'language_id' => $faker->randomElement(['1']),
                'rental_duration' => $faker->randomElement(['2', '3', '4']),
                'rental_rate' => $faker->randomElement(['30', '40']),
                'length' => $faker->randomElement(['120', '130', '140']),
                'replacement_cost' => $faker->randomElement(['50', '60', '70']),
                'rating' => $faker->randomElement(['G', 'PG', 'PG-13', 'R', 'NC-17']),
                'created_at' => date('Y-m-d H:m:s'),
                'updated_at' => date('Y-m-d H:m:s'),
            ));
        }
    }
}
