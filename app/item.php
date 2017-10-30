<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class item extends Model
{
    //
	protected $fillable = array('name', 'type', 'danger_level');
	public function doc()
	{
		return $this->belongsTo('Doc');
	}
}
