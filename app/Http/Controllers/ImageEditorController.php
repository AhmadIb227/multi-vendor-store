<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ImageEditorController extends Controller
{
    function sendImage(){
        $image_url = 'https://imagga.com/static/images/tagging/wind-farm-538576_640.jpg';
        $api_credentials = array(
            'key' => '&lt;replace-with-your-api-key&gt;',
            'secret' => '&lt;replace-with-your-api-secret&gt;'
        );

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://api.imagga.com/v2/tags?image_url='.urlencode($image_url));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_USERPWD, $api_credentials['key'].':'.$api_credentials['secret']);

        $response = curl_exec($ch);
        curl_close($ch);

        $json_response = json_decode($response);
        var_dump($json_response);
    }
}
