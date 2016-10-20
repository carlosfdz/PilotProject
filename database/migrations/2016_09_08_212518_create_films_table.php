<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateFilmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('films', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title', 255);
            $table->text('description');
            $table->date('release_year');

            $table->integer('language_id')->unsigned()->index();
            //$table->integer('original_language_id')->unsigned()->index();

            $table->string('rental_duration');
            $table->decimal('rental_rate', 4, 2);
            $table->smallInteger('length');
            $table->decimal('replacement_cost', 5, 2);
            $table->enum('rating', ['G', 'PG', 'PG-13', 'R', 'NC-17']);
            $table->string('image');
            //SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes')
            $table->foreign('language_id')->references('id')->on('languages');
            //$table->foreign('original_language_id')->references('id')->on('languages');

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
        //
    }
}
