<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateActorFilmPivotTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('film_actors', function (Blueprint $table) {
            $table->integer('actor_id')->unsigned()->index();
            $table->foreign('actor_id')->references('id')->on('actors')->onDelete('cascade');
            $table->integer('film_id')->unsigned()->index();
            $table->foreign('film_id')->references('id')->on('films')->onDelete('cascade');
            $table->primary(['actor_id', 'film_id']);

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('film_actors');
    }
}
