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
        return [
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
    }
    public function prepareValidation(){
        $this->merge([
            'client_name' => $this->filled('client_name') ? $this->input('client_name') : 'N/A',
        ]);
    }
}
