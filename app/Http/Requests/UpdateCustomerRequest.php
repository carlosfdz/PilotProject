<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class UpdateCustomerRequest extends Request
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
            'nombre' => 'required|unique:customers,first_name,$customer->id',
            'apellido' => 'required|unique:customers,last_name,$customer->id',
        ];
    }
}
