<?php

namespace App;

use App\Movie;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Language extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = ['name'];

    public function movie()
    {
        return $this->hasMany(Movie::class);
    }
}
