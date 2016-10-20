<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class City extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'cities';
    protected $fillable = ['city', 'country_id'];
    protected $guarded = ['id'];

    public function country()
    {
        return $this->hasMany(Country::class);
    }

    public function addresses()
    {
        return $this->belongsToMany(Address::class);
    }
}
