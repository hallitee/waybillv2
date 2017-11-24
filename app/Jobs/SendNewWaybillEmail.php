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
use App\Mail\NewWaybill;
use App\Mail\recNewMail;
use App\Http\Requests\DocFormRequest;
use Auth;


class SendNewWaybillEmail implements ShouldQueue
{
	

    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
	 
	public $doc, $items, $user_email;	 
	
    public function __construct($do, $it, $email)
    {
        //
		$this->doc = $do;
		$this->items = $it;
		$this->user_email = $email;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //

		Mail::to('taofik.alli-balogun@natural-prime.com')->send(new NewWaybill($this->doc, $this->items));
		
		echo "New email sent ";
    }
}
