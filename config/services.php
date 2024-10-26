<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
        'scheme' => 'https',
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'genius' => [
        'ocean' => 'http://localhost/verify/'
    ],
    
     'google' => [
        'client_id' => '431326625169-k0elsfn0cdep95k37n7607m9ne147d7j.apps.googleusercontent.com',
        'client_secret' => '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' ,
        'redirect' => 'https://ealanatek.site/auth/google/callback' ,
    ],

    'facebook' => [
        'client_id' => 'fcd93760cdffff7923efbd20f8407887',
        'client_secret' => 'fcd93760cdffff7923efbd20f8407887',
        'redirect' => 'https://ealanatek.site/auth/facebook/callback',
    ],

];
