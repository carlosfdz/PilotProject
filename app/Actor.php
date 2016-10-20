<?php

namespace App;

use App\Movie;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Actor extends Model
{
    use softDeletes;

    //protected $primaryKey = 'actor_id';
    protected $dates = ['deleted_at'];
    protected $table = 'actors';
    protected $fillable = ['name'];

    public function movies()
    {
        return $this->belongsToMany(Movie::class, 'film_actors', 'actor_id', 'film_id');
    }
}
