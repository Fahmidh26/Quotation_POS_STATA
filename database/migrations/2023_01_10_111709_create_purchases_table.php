<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchases', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('supplier_id');
            $table->unsignedBigInteger('bank_id');
            $table->string('chalan_no');
            $table->date('purchase_date')->nullable();
            $table->text('details')->nullable();
            $table->float('paid_amount',8,2);  
            $table->float('sub_total',8,2);  
            $table->float('grand_total',8,2);  
            $table->string('purchase_discount');
            $table->string('total_discount');
            $table->string('total_vat');
            $table->string('paid_amount');
            $table->string('due_discount');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('purchases');
    }
};
