<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PayResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
        'id' => $this->id,
        'subtitle' => $this->subtitle,
        'title' => $this->title,
        'details' => strip_tags($this->details),
        'name' => $this->name,
        'type' => $this->type,
        'information' => strip_tags($this->information),
        'keyword' => $this->keyword,
        'currency_id' => $this->currency_id,
        'checkout' => $this->checkout,
        'deposit' => $this->deposit,
        'subscription' => $this->subscription,
        'phone' => $this->phone,
      ];
    }
}
