<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(CategoriesTableSeeder::class);
        //$this->call('MovieTableSeeder');
        //$this->call(MovieTableSeeder::class);
        // $this->call(UserTableSeeder::class);
    }
}
