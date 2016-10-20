<?php

namespace App;

use App\Actor;
use App\Language;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\softDeletes;

class Movie extends Model
{
    use softDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'films';
    protected $fillable = ['title', 'description', 'release_year', 'language_id', 'rental_duration', 'rental_rate', 'length', 'replacement_cost', 'rating', 'image'];
    protected $guarded = ['id'];

    public function language()
    {
        return $this->belongsTo(Language::class);
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class, 'film_categories', 'film_id', 'category_id');
    }

    public function actors()
    {
        return $this->belongsToMany(Actor::class, 'film_actors', 'film_id', 'actor_id');
    }

    public function ratings()
    {
        return 'rating';
    }

    public function getActorListAttribute()
    {
        return $this->actors->pluck('id')->toArray();
    }

    public function getCategoriesListAttribute()
    {
        return $this->categories->pluck('id')->toArray();
    }

    public function getLanguageListAttribute()
    {
        return $this->language->pluck('language_id')->toArray();
    }

    public function getRatingsListAttribute()
    {
        return $this->ratings->pluck('rating')->toArray();
    }

    public function setImageAttribute($image)
    {
        if (!empty($image)) {
            $this->attributes['image'] = Carbon::now()->second . $image->getClientOriginalName();
            $name = Carbon::now()->second . $image->getClientOriginalName();
            \Storage::disk('local')->put($name, \File::get($image));
        }

    }
}
