<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateRentalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rentals', function (Blueprint $table) {
            $table->increments('id');
            $table->dateTime('rental_date');

            $table->integer('inventory_id')->unsigned()->index();
            $table->foreign('inventory_id')->references('id')->on('inventories');

            $table->integer('customer_id')->unsigned()->index();
            $table->foreign('customer_id')->references('id')->on('customers');

            $table->dateTime('return_date');

            $table->foreign('staff_id')->references('id')->on('staff');
            $table->integer('staff_id')->unsigned()->index();

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
