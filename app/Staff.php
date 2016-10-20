<?php

namespace App;

use App\Address;
use App\Store;
use Illuminate\Database\Eloquent\softDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Staff extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'staff';

    protected $fillable = [
        'first_name', 'last_name', 'address_id', 'picture', 'email', 'store_id', 'active', 'username', 'password',
    ];

    public function address()
    {
        return $this->belongsTo(Address::class);
    }

    public function store()
    {
        return $this->belongsTo(Store::class);
    }

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function getNameAttribute()
    {
        return $this->first_name . ' ' . $this->last_name;
    }
}
