<?php

namespace App\Console\Commands;

use DB;
use Carbon\Carbon;
use App\doc;
use App\item;
use App\itemslog;
use App\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\MonthlyReport;
use Illuminate\Console\Command;
use App\Jobs\SendMonthlyReport;

class MonthlyReportEmail extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'MonthlyReportEmail:monthlySend';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send Report of Monthly usage ';

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
$lastMonth = date("Y-m-d",strtotime("-1 month"));
$today = date('Y-m-d');
$users = [];
$user = [];
$indx;
$u=[];
$v=[];
$row = [];
$col = [];
$k = [];
$y=0;
$j = [];
$l = [];
$docs = doc::whereBetween('sentDate',[$lastMonth, $today])->get();
foreach($docs as $d){
if(in_array($d->user_id, $users)){

}
else{
	
array_push($users, $d->user_id);
$p = User::where('id', $d->user_id)->first();
array_push($user, $p);
}
}
$locs = ['ESRNL IKOYI', 'NPRNL IKOYI', 'PFNL IKOYI', 'ESRNL AGBARA', 'NPRNL AGBARA', 'PFNL AGBARA', 'EUROMEGA', 'PARKVIEW', 'AGBARA ESTATE', 'VENDOR'];
//$user = User::where('id', 2)->get();
foreach($user as $m){
for($x=0;$x<9;$x++){
foreach($locs as $loc){
	if($x==0){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'TRANSFER')->whereBetween('sentDate', [$lastMonth, $today])->count();
	}
	if($x==1){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'TRANSFER')->whereBetween('sentDate', [$lastMonth, $today])->where('receiveStatus', 'CLOSED')->count();		
		/*
	$y = doc::where('sentBy', $m->name)->where('wType', 'TRANSFER')->whereBetween('sentDate', [$lastMonth, $today])->where('receiveStatus', 'CLOSED')->count();*/
	}	
	if($x==2){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'TRANSFER')->whereBetween('sentDate', [$lastMonth, $today])->where('receiveStatus', 'OPEN')->count();		
		/*
	$y = doc::where(function($q) use ($loc, $m){
		$q->where('deliveredTo', $m->name)->orWhere('sentFrom', $loc)->orWhere('sentTo', $loc);})->where('receiveStatus', 'OPEN')->where('wType', 'TRANSFER')->count();*/
	}
	if($x==3){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'LOAN')->whereBetween('sentDate', [$lastMonth, $today])->count();
	}	
	if($x==4){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'LOAN')->whereBetween('sentDate', [$lastMonth, $today])->where('receiveStatus', 'CLOSED')->count();	
	}	
	if($x==5){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'LOAN')->whereBetween('sentDate', [$lastMonth, $today])->whereIn('receiveStatus', ['OPEN','RECEIVED','RETURNED'])->count();
	}	
	if($x==6){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'REPAIR')->whereBetween('sentDate', [$lastMonth, $today])->count();
	}	
	if($x==7){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'REPAIR')->whereBetween('sentDate', [$lastMonth, $today])->where('receiveStatus', 'CLOSED')->count();	
	}	
	if($x==8){
	$y = doc::where('sentBy', $m->name)->where('sentTo', 'LIKE', '%'.$loc.'%')->where('wType', 'REPAIR')->whereBetween('sentDate', [$lastMonth, $today])->whereIn('receiveStatus', ['OPEN','RECEIVED','RETURNED'])->count();
	}	
		array_push($row, $y);
}
		array_push($k, $row);
		array_push($col, $row);
		$y = [];
		$row =[];
}
		array_push($l, $k);
		$k=[];
		
		$lastMon = date("d/F/Y",strtotime("-1 month"));
		$tod = date('d/F/Y');
			Mail::to($m->email)->send(new MonthlyReport($m, $col, $tod, $lastMon));
		}
	
    }
}
