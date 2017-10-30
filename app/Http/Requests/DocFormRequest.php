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
			#'items[0][desc]'=>'required',
			#'items[0][status]'=>'required'

        ];
    }
/*
	public function messages(){
		return[
		'items[0][desc].required' => 'The item field is required',
		'items[0][qty].required' => 'The quantity field is required',
		'items[0][status].required' => 'The status field is required',
		];
	}*/
	}
