<?php

namespace App\Mail;
use App\doc;
use App\item;
use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class DailyReport extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
	 public  $u, $k, $indx, $today, $users;
    public function __construct($c, $d, $e, $f)// $g)
    {
    

		$this->u = $c;
		$this->k = $d;
		$this->users = $e;
		$this->today = $f;
		/*
		$this->indx = $e;
		$this->today = $f;
		$this->users = $g;
		*/
    }
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
		//echo $this->indx;
		$address = 'helpdesk@esrnl.com';
		$name = 'Waybill Manager';
		$subject = 'Waybill Manager Daily Report for '.$this->today;
        return $this->view('email.dailyreport02')->from($address, $name)->subject($subject)->with(['doc'=>$this->u, 'items'=>$this->k, 'user'=>$this->users, 'today'=>$this->today]);
     
    }
}
