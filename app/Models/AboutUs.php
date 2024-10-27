<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'title_en' , 'title_ar' , 'title_kr' , 'description_en' , 'description_ar' , 'description_kr'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
