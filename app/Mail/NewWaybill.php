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
			$temail=[];
			$cemail = [];
			$bcemail = [];
		if($this->copi!=null){

			if($this->copi->to!=null || $this->copi->to!=""){
				//array_push($cemail, $this->copi->to);
				$temail=preg_split("/[;,\s]+/", $this->copi->to);
				
			}
			if($this->copi->copi!=null || $this->copi->copi!=""){
				//array_push($cemail, $this->copi->copi);
				$cemail = preg_split("/[;,\s]+/", $this->copi->copi);
			}	
			if($this->copi->bcopy!=null || $this->copi->bcopy!=""){
				//array_push($cemail, $this->copi->copi);
				$bcemail = preg_split("/[;,\s]+/", $this->copi->bcopy);
			}				
		$address = 'helpdesk@esrnl.com';
		$name = 'Waybill Manager';
		$subject = 'New Waybill created';
        return $this->view('email.NewWaybill')
					->cc($temail)
					->cc($cemail)
					->bcc($bcemail)
					->from($address, $name)
					->subject($subject);
		}
		else{
		$address = 'helpdesk@esrnl.com';
		$name = 'Waybill Manager';
		$subject = 'New Waybill created';
        return $this->view('email.NewWaybill')
					->cc($temail)
					->cc($cemail)
					->bcc($bcemail)
					->from($address, $name)
					->subject($subject);		
			
			
		}
    }
}
