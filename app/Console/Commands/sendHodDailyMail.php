<?php

namespace App\Console\Commands;

use DB;
use Carbon\Carbon;
use App\doc;
use App\item;
use App\itemslog;
use App\User;
use App\email;
use Illuminate\Support\Facades\Mail;
use App\Mail\DailyHodReportMail;
use Illuminate\Console\Command;

class sendHodDailyMail extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sendHodDailyReport:dailySend';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send daily report to all HOD or GMs on items transferred outward and inwards their location';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
		//$cmp = email::where('location', 'AGBARA')->where('company', 'NPRNL')->get();
	$cmp = email::all();
	$day = Carbon::today()->toDateString(); //$day = '2018-02-14'; 
	$itms= [];
	$itmr = [];
	//$cmps = doc::where('sentDate', '=', $day)->where('sentFrom', 'LIKE', '%IKOYI%')->get();
	foreach($cmp as $c){
		$loc = $c->company." ".$c->location;
	if($c->location=='IKOYI'){
	//	$doc = doc::where('sentDate', '=', $day)->where('sentFrom', 'LIKE', '%'.$c->location.'%')->get();
	$cmps = doc::where('sentDate', '=', $day)->where('sentFrom', 'LIKE', '%'.$c->location.'%')->get();
	foreach($cmps as $d){
	$n = item::where('doc_id', $d->id)->get();
	array_push($itms, $n);
	}
	$cmpr = doc::where('sentDate', '=', $day)->where('sentTo', 'LIKE', '%'.$c->location.'%')->get();
	foreach($cmpr as $d){
	$m = item::where('doc_id', $d->id)->get();
	array_push($itmr, $m);
	}

		}
	else{
		
	$cmps = doc::where('sentDate', '=', $day)->where('sentFrom', 'LIKE', '%'.$loc.'%')->get();
	foreach($cmps as $d){
	$n = item::where('doc_id', $d->id)->get();
	array_push($itms, $n);
	}
	$cmpr = doc::where('sentDate', '=', $day)->where('sentTo', 'LIKE', '%'.$loc.'%')->get();
	foreach($cmpr as $d){
	$m = item::where('doc_id', $d->id)->get();
	array_push($itmr, $m);
	}
		

		}
			if($c->copi!=null || $c->copi!=""){
				//array_push($cemail, $this->copi->copi);
				$cemail = preg_split("/[;,\s]+/", $c->copi);
				Mail::to($cemail)->send(new DailyHodReportMail($day, $c, $cmps, $cmpr, $itms, $itmr ));
				$itms = [];
				$itmr = [];
			}
	
				$itms = [];
				$itmr = [];
}
		
		
    }
}
