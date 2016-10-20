<?php

namespace App\Http\Controllers;

use App\Actor;
use Illuminate\Http\Request;
use Redirect;
use Session;

class ActorController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $actor = Actor::paginate(4);
        return view('actors.index', compact('actor'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('actors.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $actor = new Actor;
        $actor->create($request->all());
        Session::flash('message', 'Actor Registrado Correctamente');
        return Redirect::to('/actor');
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
        $actors = Actor::findOrFail($id);
        return view('actors.edit', ['actors' => $actors]);
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
        $actors = Actor::findOrFail($id);
        $actors->fill($request->all());
        $actors->save();
        Session::flash('message', 'Actor Actualizado Correctamente');
        return Redirect::to('/actor');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $actors = Actor::findOrFail($id);
        $actors->delete();
        Session::flash('message', 'Actor Eliminado Correctamente');
        return Redirect::to('/actor');
    }
}
