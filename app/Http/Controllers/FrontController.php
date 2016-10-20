<?php

namespace App\Http\Controllers;

use App\Movie;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function __construct()
    {
        //PROTEGEMOS PARA QUE TE AUTENTIQUES
        //$this->middleware('auth', ['only' => ['create', 'store', 'edit', 'update', 'destroy']]);
        $this->middleware('auth', ['only' => 'admin']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function contacto()
    {
        return view('contact');
    }

    public function catalog(Request $request)
    {
        $sort = $request->get('sort', 'desc');

        $movies = Movie::orderBy('created_at', $sort)->paginate(4);
        return view('catalog', compact('movies'));
    }

    public function admin()
    {
        return view('admin.index');
    }

}
