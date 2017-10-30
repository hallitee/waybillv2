<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateItemslogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('itemslogs', function (Blueprint $table) {
            $table->increments('id');
			$table->integer('docid');
			$table->integer('itemid');
			$table->string('itemDesc');
			$table->string('serialNo')->nullable();
			$table->integer('itemRecQty');
			$table->string('status')->nullable;
			$table->text('remark')->nullable();			
			$table->string('recName');
			$table->integer('recId');	
			$table->string('recEmail');			
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
        Schema::dropIfExists('itemslogs');
    }
}
