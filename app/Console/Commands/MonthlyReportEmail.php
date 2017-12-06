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
        //
		
$lastMonth = date("Y-m-d H:i:s",strtotime("-1 month"));
echo $lastMonth;
    }
}
