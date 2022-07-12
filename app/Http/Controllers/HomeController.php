<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Episode;
use App\Models\Film;
use App\Models\User;
use Config;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hero = Film::select(
            'id',
            'img_background',
            'img',
            'name',
            'luot_xem'
        )->where('flag_delete', ACTIVE)->get()->random(5);

        $new_film = Film::select(
            'id',
            'name',
            'luot_xem',
            'img',
        )->where('flag_delete', ACTIVE)
        ->orderBy('updated_at', 'DESC')
        ->groupBy(
            'id',
            'name',
            'luot_xem',
            'img'
        )->take(9)->get();

        $comment = Comment::select(
            'id_film',
            DB::raw('COUNT(comment.id_film) as comment')
        )->groupBy('id_film')->get();

        $ep1 = Episode::select(
            'id_film',
            DB::raw("MAX(updated_at) as updated_at")
        )->groupBy('id_film')->get();

        $ep = [];
        foreach ($ep1 as $key ) {
            $ep2 = Episode::select(
                'id_film',
                'tap_so'
            )->where('id_film', $key->id_film)
            ->where('updated_at', $key->updated_at)
            ->first();

            $ep[$ep2->id_film] = $ep2->tap_so;
        }

        $appreciated = Film::select(
            'id',
            'name',
            'luot_xem',
            'img',
        )->where('flag_delete', ACTIVE)
        ->orderBy('IMDb', 'DESC')
        ->take(6)->get();

        return view('user.Home',
            [
                'hero' => $hero,
                'new_film' => $new_film,
                'comment' => $comment,
                'ep' => $ep,
                'appreciated' => $appreciated
            ]
        );
    }

    /**
     * Change language.
     *
     * @param String $language
     * @return \Illuminate\Http\Response
     */
    public function changeLanguage($language)
    {
        if ($language) {
            Session::put('language', $language);
        }

        return redirect()->back();
    }

    /**
     * Get the language you are using.
     *
     * @return String
     */
    public function getLanguage()
    {
        return Config::get('app.locale');
    }

    public function search($value)
    {
        $data = Film::select(
            'id',
            'img',
            'name',
        )->where('flag_delete', ACTIVE)
        ->where('name', 'like', "%$value%")->take(5)->get();

        return $data;
    }

    /**
     *
     * @return \Illuminate\Http\Response
     */
    public function upgrade()
    {
        return view('user.upgrade');
    }

    public function commit($type)
    {
        $vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = 'https://hostmovie.herokuapp.com/upgrade';
        $vnp_TmnCode = "AF4FL3OI";//Mã website tại VNPAY
        $vnp_HashSecret = "CTRJDSAXFQFTENNMIBJCABUBJBZQQZPV"; //Chuỗi bí mật

        $vnp_TxnRef = Str::random(6); //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = "thanh toan test";
        $vnp_OrderType = 'billpayment';
        if ($type == 1) {
            $vnp_Amount = 20000 * 100;
            $expired_at = Carbon::now()->addDays(7);
        } elseif ($type == 2) {
            $vnp_Amount = 70000 * 100;
            $expired_at = Carbon::now()->addDays(30);
        } else {
            $vnp_Amount = 750000 * 100;
            $expired_at = Carbon::now()->addDays(365);
        }


        $vnp_Locale = 'vn';
        $vnp_BankCode = 'NCB';
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
        //Add Params of 2.0.1 Version
        // $vnp_ExpireDate = $_POST['txtexpire'];
        //Billing

        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
            // "vnp_ExpireDate"=>$vnp_ExpireDate,
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
            $inputData['vnp_Bill_State'] = $vnp_Bill_State;
        }

        //var_dump($inputData);
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashdata .= urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret);//
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
        }
        $returnData = array('code' => '00'
            , 'message' => 'success'
            , 'data' => $vnp_Url);
            if (isset($_POST['redirect'])) {
                User::where('id', auth()->user()->id)->update([
                    'is_pay' => 1,
                    'expired_at' =>$expired_at,
                ]);
                Session::flash('pay', 'success');
                header('Location: ' . $vnp_Url);
                die();
            } else {
                echo json_encode($returnData);
            }
            // vui lòng tham khảo thêm tại code demo
    }
}
