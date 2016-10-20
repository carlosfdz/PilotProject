<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateStaffTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staff', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name', 45);
            $table->string('last_name', 45);
            $table->integer('address_id')->unsigned()->index();
            $table->string('email')->unique();
            $table->integer('store_id')->unsigned()->index();
            $table->boolean('active');
            $table->string('password');
            $table->rememberToken();

            $table->foreign('address_id')->references('id')->on('addresses');
            //$table->foreign('store_id')->references('id')->on('stores');

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
