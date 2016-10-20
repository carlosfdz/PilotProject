<?php

namespace App\Http\Controllers;

use App\Http\Controllers\View;
use App\Language;
use Illuminate\Http\Request;
use Redirect;
use Session;

class LanguageController extends Controller
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
        $languages = Language::paginate(3);
        return \View::make('languages.index', compact('languages'));
        //Ver Ajax index(Request $request)
        // if ($request->ajax()) {
        //     $languages = Language::all();
        //     return response()->json($languages);
        // }
        // return view('languages.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('languages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    //public function store(StoreLanguageRequest $request)
    public function store(Request $request)
    {
        $language = new Language;
        $language->create($request->all());
        Session::flash('message', 'Idioma Registrado Correctamente');
        return Redirect::to('/language');
        //Crear con Ajax
        // if ($request->ajax()) {
        //     $language = new Language;
        //     $language->create($request->all());
        //     return response()->json([
        //         "mensaje" => "creado",
        //     ]);
        // }

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
        $languages = Language::findOrFail($id);
        return view('languages.edit', ['languages' => $languages]);
        //Ajax
        // $language = Language::find($id);
        // return response()->json(
        //     $language->toArray()
        // );

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
        $languages = Language::findOrFail($id);
        $languages->fill($request->all());
        $languages->save();
        Session::flash('message', 'Idioma Actualizado Correctamente');
        return Redirect::to('/language');
        // Ajax
        // $language = Language::find($id);
        // $language->fill($request->all());
        // $language->save();
        // return response()->json(["mensaje" => "listo"]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $languages = Language::findOrFail($id);
        $languages->delete();
        Session::flash('message', 'Idioma Eliminado Correctamente');
        return redirect()->back();
    }
}
