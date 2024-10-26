<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class ProductDescriptionController extends User\UserBaseControllerLite
{
    public function generateDescription(Request $request)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 422);
        }

        // Your OpenAI API key from environment variables
        $apiKey = "sk-proj-CrmWwTwsTP4mYu5cVZOMT3BlbkFJNie48362SzBvarM5UTZ3";

        // Product name
        $productName = $request->input('name');

        // cURL request to OpenAI API
        try {
            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, "https://api.openai.com/v1/completions");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode([
                'model' => 'davinci-002',
                'prompt' => "Generate a product description for a product named " . $productName,
                'max_tokens' => 100,
                'temperature' => 0.7
            ]));
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Content-Type: application/json',
                'Authorization: Bearer ' . $apiKey,
            ]);

            $response = curl_exec($ch);

            if (curl_errno($ch)) {
                $error_msg = curl_error($ch);
                Log::error('cURL error: ' . $error_msg);
                return response()->json(['error' => 'cURL error: ' . $error_msg], 500);
            }

            curl_close($ch);

            $response_data = json_decode($response, true);

            // Log the response for debugging
            Log::info('OpenAI API response: ' . $response);

            if (isset($response_data['choices'][0]['text'])) {
                $description = $response_data['choices'][0]['text'];
                return response()->json(['description' => $description]);
            } else {
                $error_message = $response_data['error']['message'] ?? 'Failed to generate description.';
                return response()->json(['error' => $error_message], 500);
            }
        } catch (\Exception $e) {
            Log::error('An error occurred: ' . $e->getMessage());
            return response()->json(['error' => 'An error occurred: ' . $e->getMessage()], 500);
        }
    }
}
