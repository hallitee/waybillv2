<?php
 namespace App;

use Illuminate\Database\Eloquent\Model;

class doc extends Model
{
    //
	public function user(){
		return $this->belongsTo('App\User');
	}
	public function item(){
		return $this->hasMany('App\item');
	}
	public function getDates()
{
    return array('sentDate');
}
}


