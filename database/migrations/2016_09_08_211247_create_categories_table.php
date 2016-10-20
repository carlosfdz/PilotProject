<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');

            $table->timestamps();

            $table->softDeletes();
        });

        // Schema::create('film_categories', function (Blueprint $table) {
        //     $table->integer('film_id')->unsigned()->index();
        //     $table->foreign('film_id')->references('id')->on('films')->onDelete('cascade');
        //     $table->integer('category_id')->unsigned()->index();
        //     $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');

        //     $table->timestamps();

        //     $table->softDeletes();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('categories');
        //Schema::drop('film_categories');
    }
}
