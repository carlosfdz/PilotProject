<?php

namespace App\Http\Controllers;

use App\Actor;
use App\Language;
use App\Movie;
use Illuminate\Http\Request;
use Redirect;
use Session;

class MovieController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function find(Route $route)
    {
        $this->notFound($this->movies);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sort = $request->get('sort', 'desc');

        $movies = Movie::orderBy('created_at', $sort)->paginate(6);
        return view('movies.index', compact('movies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $languages = Language::pluck('name', 'id');
        $actors = Actor::pluck('name', 'id')->toArray();
        //$categories = Category::lists('name', 'id');

        return view('movies.create', compact('languages', 'actors'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $movie = Movie::create($request->all());
        $movie->actors()->sync($request->actor_list);
        //$movie->categories()->sync($request->film_categories);

        Session::flash('message', 'Pelicula Registrada Correctamente');
        return Redirect::to('/movie');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $movies = Movie::find($id);
        $languages = Language::pluck('name', 'id');
        $actors = Actor::pluck('name', 'id')->toArray();
        //$categories = Category::lists('name', 'id')->toArray();

        return view('movies.edit', compact('movies', 'languages', 'actors'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $movies = Movie::findOrFail($id);
        $movies->fill($request->all());
        $movies->actors()->sync($request->actor_list);
        //$movies->categories()->sync($request->film_categories);
        $movies->save();
        Session::flash('message', 'Pelicula Actualizada Correctamente');
        return Redirect::to('/movie');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $movies = Movie::findOrFail($id);
        $movies->actors()->detach($request->film_actors);
        $movies->categories()->detach($request->film_categories);
        $movies->delete();
        \Storage::delete($movies->image);
        Session::flash('message', 'Pelicula Eliminada Correctamente');
        return Redirect::to('/movie');
    }

    public function search(Request $request)
    {
        $movies = Movie::where('title', 'like', '%' . $request->title . '%')->get();
        return \View::make('list', compact('movies'));
    }
}
