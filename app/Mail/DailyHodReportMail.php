<?php

namespace App\Mail;

use DB;
use Carbon\Carbon;
use App\doc;
use App\item;
use App\itemslog;
use App\User;
use App\email;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class DailyHodReportMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
	 public $l, $m, $n, $o, $p, $q;
    public function __construct($a, $b, $c, $d, $e, $f)
    {
        //
		$this->l = $a;
		$this->m = $b;
		$this->n = $c;
		$this->o = $d;
		$this->p = $e;
		$this->q = $f;
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
		$subject = 'Waybill Daily Report for '.$this->l;
        return $this->view('email.hodreport')
					->bcc($this->m->bcopy)
					->from($address, $name)
					->subject($subject)->with(['day'=>$this->l, 'comp'=>$this->m,'docs'=>$this->n, 'items'=>$this->p, 'docr'=>$this->o, 'itemr'=>$this->q ]);
    }
}
