<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubscriptionFeature extends Model
{
    use HasFactory;
    protected $fillable = ['subscription_id', 'name_en','name_ar','name_kr', 'has_icon'];
}
