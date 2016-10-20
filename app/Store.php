<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Store extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'stores';
    protected $fillable = ['manager_staff_id', 'address_id'];
    protected $guarded = ['id'];

    public function staff()
    {
        return $this->hasMany(Staff::class);
    }

    public function customers()
    {
        return $this->hasMany(Customer::class);
    }
}
