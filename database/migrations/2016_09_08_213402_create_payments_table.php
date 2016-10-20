<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('customer_id')->unsigned()->index();
            $table->foreign('customer_id')->references('id')->on('customers');

            $table->integer('staff_id')->unsigned()->index();
            $table->foreign('staff_id')->references('id')->on('staff');

            $table->integer('rental_id')->unsigned()->index();
            $table->foreign('rental_id')->references('id')->on('rentals');

            $table->decimal('amount', 5, 2);
            $table->dateTime('payment_date');

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
