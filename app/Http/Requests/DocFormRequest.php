<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DocFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
			'sentBy'=>'required',
			'sentDate'=>'required|date',
			'sentFrom'=>'required',
			'sentTo'=>'required',
			'sentFro'=>'nullable',
			'sento'=>'nullable',			
			'deliveredBy'=>'required',
			'deliveredTo'=>'required',
			'proxyName'=>'nullable',

        ];


    }

	public function messages(){
		return[
		'sentBy.required'=>'Sender field can not be empty',
		'sentDate.required'=>'Sent Date can not be empty',
		'sentFrom.required'=>'Origin field can not be empty',
		'sentTo.required'=>'Destination field can not be empty',
		'deliveredTo.required' => 'Receiver field can not be empty',
		'deliveredBy.required'=>'Delivered By field can not be empty',
		
		];
	}
	}
