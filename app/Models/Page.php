<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $fillable = ['title','title_ar','title_ku', 'slug', 'details', 'details_ar' ,'details_ku','meta_tag','meta_description','photo'];
    
    public $timestamps = false;
}
