<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class itemslog extends Model
{
    //
	    protected $fillable = [
        'docid', 'itemid', 'itemDesc','serialNo',
		'itemRecQty','status','remark','recName','recId',
		'recEmail'
    ];
}
