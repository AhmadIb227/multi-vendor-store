<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
class ImageBackgroundController extends Controller
{
    function removeBackground(Request $request) {
        $product = Product::find($request->id);
        // $image_url = "https://ealanatek.site/assets/images/products/1725196066W9KHP9Yb.png";
        $image_url = asset('assets/images/products/'.$product->photo);
        $api_credentials = array(
            'key' => 'acc_8444504de90e1e4',
            'secret' => '721511ba0f1e6cd304890d458ed5a2a7'
        );

        $ch = curl_init();
        // curl --user "acc_8444504de90e1e4:721511ba0f1e6cd304890d458ed5a2a7"
        //  "https://api.imagga.com/v2/tags?image_url=
        //  https://imagga.com/static/images/tagging/wind-farm-538576_640.jpg"

        curl_setopt($ch, CURLOPT_URL,
         'https://api.imagga.com/v2/tags?image_url=' . urlencode($image_url));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_USERPWD, $api_credentials['key'].':'.$api_credentials['secret']);

        $response = curl_exec($ch);
        curl_close($ch);
        $image_name = now()->format('Y-m-d').$product->id.'.png';
        $product->photo = $image_name;
        $product->save();
        $fp = fopen('assets/images/products/removed-bg-image'.$image_name, 'wb');
        fwrite($fp, $response);
        fclose($fp);
    }

    function postRemoveBackground(Request $request) {
        // $image_url = "https://masss.online/assets/images/products/1648013610nbbGKBia.png";

        $image = $request->photo;
        $api_credentials = array(
            'key' => 'acc_8444504de90e1e4',
            'secret' => '721511ba0f1e6cd304890d458ed5a2a7'
        );

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, "https://api.imagga.com/v2/tags");
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_TIMEOUT, 60);
        curl_setopt($ch, CURLOPT_USERPWD, $api_credentials['key'].':'.$api_credentials['secret']);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_POST, 1);
        $fields = [
            'image_base64' => $image
        ];
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);

        $response = curl_exec($ch);
        curl_close($ch);
        $image_name = 'removed-bg-image'.now()->format('Y-m-dh-i').'.png';
        $fp = fopen('assets/images/products/'.$image_name, 'wb');
        fwrite($fp, $response);
        fclose($fp);
        return response()->json([
            "image" => $image_name
        ]);
    }
}
