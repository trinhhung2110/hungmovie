<?php

namespace App\Http\Requests\Admin;

use Carbon\Carbon;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class UserCreateRequest extends FormRequest
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

            'user_name' =>  'required|max:100',

        ];
    }

    /**
     * display messenger when users enter incorrectly.
     *
     * @return array
     */
    public function messages()
    {
        $year_old = Carbon::now() -> subYears(18);
        return [
            'unique' => ':attribute đã tồn tại',
            'required' => 'tên đăng nhập hoặc mật khẩu không đúng',
            'max:50' => ':attribute Không được lớn hơn :max kí tự',
            'max:100' => ':attribute Không được lớn hơn :max kí tự',
            'before' => 'người dùng phải trên 18 tuổi',
            'avatar' => 'Ảnh phải thuộc kiểu jpg, jpeg, png',
            'max:3072' => 'Ảnh không được vượt quá :max',
        ];
    }
}
