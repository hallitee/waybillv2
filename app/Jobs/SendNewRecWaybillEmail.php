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

class SendNewRecWaybillEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
	 public $doc, $items, $email;
    public function __construct($do, $it, $em)
    {
		
		$this->doc = $do;
		$this->items = $it;
		$this->email = $em;
	
	}
    /**
     * Execute the job.
     *
     * @return void
     **/
    public function handle()
    {
        Mail::to($this->email)->send(new recNewMail($this->doc, $this->items));
		//Mail::to($this->user_email)->send(new NewWaybill($this->doc, $this->items));
    }

}