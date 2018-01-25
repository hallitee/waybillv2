<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class MonthlyReport extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
	 public  $i, $j, $k , $l;
    public function __construct($c, $d, $e, $f)// $g)
    {
    

		$this->i = $c;
		$this->j = $d;
		$this->k = $e;
		$this->l = $f;

    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
		$address = 'helpdesk@esrnl.com';
		$name = 'Waybill Manager';
		$subject = 'Waybill Manager Month Report for '.$this->l.' - '.$this->k;
        return $this->view('report.mreport0')->from($address, $name)->subject($subject)->with(['user'=>$this->i, 'col'=>$this->j, 'today'=>$this->k, 'lastMonth'=>$this->l]);
    }
}
