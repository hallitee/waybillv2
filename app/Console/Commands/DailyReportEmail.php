<?php

namespace App\Console\Commands;

use DB;
use Carbon\Carbon;
use App\doc;
use App\item;
use App\itemslog;
use App\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\DailyReport;
use Illuminate\Console\Command;
use App\Jobs\SendDailyReport;

class DailyReportEmail extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'DailyReportEmail:dailySend';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send email to all users daily about their created waybill document';

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
//$today = Carbon\Carbon::now()->format('Y-m-d');
//$today = '2017-11-28';
$today = date('Y-m-d');
$users = [];
$indx;
$u=[];
$v=[];
$k = [];
$j = [];
$l = [];
$docs = doc::whereDate('sentDate','=',$today)->get();
foreach($docs as $d){
if(in_array($d->user_id, $users)){

}
else{
array_push($users, $d->user_id);
}
}

foreach($users as $key=>$user){
$m = doc::where('user_id', $user)->whereDate('sentDate', $today)->get();
//array_push($u, $m);

foreach($m as $key=>$f){
$z = item::where('doc_id', $f->id)->get();
array_push($v, $z);
} //end of each doc
array_push($k, $v);
 $n = User::where('id', $user)->first();
 array_push($u, $n);
	Mail::to($n->email)->send(new DailyReport($m, $v, $n, $today));
 $v=[];
 $u=[];
}//end of each users
/*
foreach($users as $key=>$y){
 $user = User::where('id', $y)->first();
 $indx = $key;
 echo $indx;
 $newRecMailJob = (new SendDailyReport($u, $k, $indx, $today, $users));//->delay(Carbon::now()->addMinutes(1));
 dispatch($newRecMailJob);	
}
*/
echo "done successful";
echo serialize($u);
echo serialize($k);
	
    }
}
