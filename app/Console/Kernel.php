<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
		'App\Console\Commands\DailyReportEmail',
		'App\Console\Commands\MonthlyReportEmail',	
		'App\Console\Commands\sendHodDailyMail',		
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
     //$schedule->command('inspire')->hourly()->appendOutputTo('C:\xampp\htdocs\waybill\schedulelog.txt');
	 
	 $schedule->command('DailyReportEmail:dailySend')->daily()->between('15:00', '16:30');
	 $schedule->command('sendHodDailyReport:dailySend')->daily()->between('16:00', '16:30');
	 //$schedule->command('MonthlyReportEmail:monthlySend')->everyMinute();	
    }

    /**
     * Register the Closure based commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        require base_path('routes/console.php');
    }
}
