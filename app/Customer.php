<?php

namespace App;

use App\Address;
use App\Store;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Customer extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'customers';

    protected $fillable = [
        'store_id', 'first_name', 'last_name', 'email', 'address_id', 'active', 'username', 'password',
    ];

    public function address()
    {
        return $this->belongsTo(Address::class);
    }

    public function store()
    {
        return $this->belongsTo(Store::class);
    }
}
