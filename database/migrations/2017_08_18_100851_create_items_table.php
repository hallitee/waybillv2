<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('items', function (Blueprint $table) {
            $table->increments('id');
			$table->string('item_desc');
			$table->string('serialNo')->nullable();
			$table->integer('qty');
			$table->integer('recqty')->default(0)->nullable();			
			$table->string('status')->nullable;
			$table->text('remark')->nullable();
			$table->string('sircode')->nullable;
			$table->string('lpo')->nullable();			
			$table->integer('doc_id')->unsigned();
			$table->foreign('doc_id')->references('id')->on('docs')->onDelete('cascade');
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
        Schema::dropIfExists('items');
    }
}
