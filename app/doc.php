<?php
 namespace App;

use Illuminate\Database\Eloquent\Model;

class doc extends Model
{
    //
	public function user(){
		return $this->belongsTo('waybill\User');
	}
	public function item(){
		return $this->hasMany('waybill\item');
	}
	public function getDates()
{
    return array('sentDate');
}
}


