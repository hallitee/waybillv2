<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDocsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('docs', function (Blueprint $table) {
            $table->increments('id');
			$table->string('wType');
			$table->date('sentDate');
			$table->string('sentFrom');
			$table->string('sentTo');
			$table->string('vendorName')->nullable();
			$table->string('sentBy');
			$table->string('deliveredBy');
			$table->string('deliveredTo');
			$table->date('deliveryDate')->nullable();
			$table->string('deliveryNo')->nullable();
			$table->string('receivedBy')->nullable();
			$table->string('receiveStatus')->default("OPEN")->nullable();	
			$table->mediumText('closeremark')->nullable();				
			$table->date('receiveDate')->nullable();
			$table->integer('printNo')->nullable();
			$table->integer('reprintNo')->nullable();
			$table->date('printDate')->nullable();	
			$table->date('reprintDate')->nullable();	
			$table->integer('user_id')->unsigned();			
			$table->foreign('user_id')->references('id')->
			on('users')->onDelete('cascade');
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
        Schema::dropIfExists('docs');
    }
}
