<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Address extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'addresses';
    protected $fillable = ['address', 'district', 'city_id', 'postal_code', 'phone'];
    protected $guarded = ['id'];

    public function staff()
    {
        return $this->hasMany(Staff::class);
    }

    public function customers()
    {
        return $this->hasMany(Customer::class);
    }

    public function city()
    {
        return $this->hasMany(City::class);
    }

}
