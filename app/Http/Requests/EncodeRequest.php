<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EncodeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        $rules = [
            'client_name' => 'string|nullable',
            'address' => 'string|nullable',
            'area' => 'string|nullable',
            'telephone' => 'string|nullable',
            'homepage' => 'string|nullable',
            'category' => 'string|nullable',
            'open_hours' => 'string|nullable',
            'facebook_fanpage_url' => 'string|nullable',
            'memo' => 'string|nullable'
        ];
        if($this->method() == 'PUT' || $this->method() == 'PATCH'){
            $rules['client_name'] .= '|string';
        } else{
            $rules['client_name'] .= '|string|unique:encodes';
        }
        return $rules;
    }

    protected function prepareForValidation()
    {
        foreach ($this->all() as $key => $value) {
            if (is_null($value) && $key !== 'memo') {
                $this->merge([$key => 'N/A']);
            }
        }
    }
}
