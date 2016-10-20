<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Country extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'countries';
    protected $fillable = ['country'];
    protected $guarded = ['id'];

    public function cities()
    {
        return $this->belongsToMany(City::class);
    }
}
