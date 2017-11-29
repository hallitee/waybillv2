<?php

namespace App\Console\Commands;

use DB;
use Carbon\Carbon;
use App\doc;
use App\item;
use App\itemslog;
use App\User;
use App\Mail\NewWaybill;
use Illuminate\Console\Command;

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
$today = '2017-11-28';
$users = [];
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
array_push($u, $m);

foreach($m as $key=>$f){
$z = item::where('doc_id', $f->id)->get();
array_push($v, $z);
} //end of each doc
array_push($k, $v);
$v=[];
}//end of each users

echo "done successful";
echo serialize($u);
echo serialize($users);
	
    }
}
