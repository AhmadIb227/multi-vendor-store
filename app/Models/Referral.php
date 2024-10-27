<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Referral extends Model
{
    protected $fillable = ['user_id', 'referral_code' , 'parrent_user_id' , 'referral_link'];
    use HasFactory;


    public static function getReferral($user, $program)
    {
        return static::firstOrCreate([
            'user_id' => $user->id,
            'referral_code' => $user->referral_code,
            'parrent_user_id' => $program->id,
            'referral_link' => $user->getLinkAttribute()
        ]);
    }

    public function getLinkAttribute()
    {
        return url($this->program->uri) . '?ref=' . $this->referral_code;
    }
}
