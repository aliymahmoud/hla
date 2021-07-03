<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) 
        {
            $table->id();
            $table->integer('code');
            $table->float('paid');
            $table->float('total_price');
            $table->string('notes')->nullable();
            $table->date('date');
            $table->unsignedBigInteger('client_id');
            $table->unsignedBigInteger('employee_id');
            $table->unsignedBigInteger('branch_id');
            $table->unsignedBigInteger('insurance_company_id');
            $table->unsignedBigInteger('payment_method_id');
            $table->unsignedBigInteger('invoice_type_id');
            $table->integer('invoice_code')->nullable();
            // $table->foreign('client_id')->references('id')->on('clients');
            // $table->foreign('employee_id')->references('id')->on('users');
            // $table->foreign('branch_id')->references('id')->on('branches');
            // $table->foreign('insurance_company_id')->references('id')->on('insurance_companies');
            // $table->foreign('payment_method_id')->references('id')->on('payment_methods');
            // $table->foreign('invoice_type_id')->references('id')->on('invoice_types');
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
        Schema::dropForeign([
            'client_id',
            'employee_id',
            'branch_id',
            'insurance_company_id',
            'payment_method_id',
            'invoice_type_id',
        ]);
        Schema::dropIfExists('invoices');
    }
}
