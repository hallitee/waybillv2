<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use App\doc;
use App\item;
use App\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\DailyReport;
use App\Http\Requests\DocFormRequest;
use Auth;

class SendDailyReport implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
	 public $u, $k, $users, $today, $indx;
    public function __construct($c, $d, $e)// $f, $g)
    {
    
		//$this->arr = $item;
		$this->u = $c;
		$this->k = $d;
		$this->users = $e;
		/*
		$this->indx = $e;
		$this->today = $f;	
		$this->users = $g;		
		*/
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
		//echo $this->u;
		//$email = $this->users->email;
		Mail::to('taofik.alli-balogun@natural-prime.com')->send(new DailyReport($this->u, $this->k, $this->users));

    }
}
