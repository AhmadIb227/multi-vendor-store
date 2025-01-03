<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Childcategory extends Model
{
    protected $fillable = ['subcategory_id','name', 'name_ar', 'name_ku', 'slug'];
    public $timestamps = false;

    public function subcategory()
    {
    	return $this->belongsTo('App\Models\Subcategory')->withDefault();
    }

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }
 

    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = str_replace(' ', '-', $value);
    }

    public function attributes() {
        return $this->morphMany('App\Models\Attribute', 'attributable');
    }
}
