<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Category extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];

    protected $table = 'categories';
    protected $fillable = ['name'];
    protected $guarded = ['id'];

    public function movies()
    {
        return $this->belongsToMany(Movie::class, 'film_categories', 'film_id', 'category_id');
    }
}
