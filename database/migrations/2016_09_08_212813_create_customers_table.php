<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('store_id')->unsigned()->index();
            $table->string('first_name', 45);
            $table->string('last_name', 45);
            $table->string('email')->unique();
            $table->integer('address_id')->unsigned()->index();
            $table->boolean('active');

            $table->foreign('store_id')->references('id')->on('stores');
            $table->foreign('address_id')->references('id')->on('addresses');

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
