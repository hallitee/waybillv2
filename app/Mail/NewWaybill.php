<?php

namespace App\Mail;

use App\doc;
use App\item;
use App\email;
use Log;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class NewWaybill extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
	 public $doc, $item, $copi;
    public function __construct(doc $do, $it, $g)
    {

		$this->doc = $do;
		$this->item = $it;
		$this->copi = $g;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
		if($this->copi!=null){
		$address = 'helpdesk@esrnl.com';
		$name = 'Waybill Manager';
		$subject = 'New Waybill created';
        return $this->view('email.NewWaybill')
					->cc([$this->copi->to, $this->copi->copi])
					->bcc($this->copi->bcopy)
					->from($address, $name)
					->subject($subject);
		}
		else{
		$address = 'helpdesk@esrnl.com';
		$name = 'Waybill Manager';
		$subject = 'New Waybill created';
        return $this->view('email.NewWaybill')
					->cc($this->copi->bcopy)
					->bcopy($this->copi->copi)
					->from($address, $name)
					->subject($subject);			
			
			
		}
    }
}
