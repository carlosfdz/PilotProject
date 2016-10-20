<?php

namespace App\Http\Controllers;

use App\Address;
use App\Staff;
use App\Store;
use Illuminate\Http\Request;
use Redirect;
use Session;

class StaffController extends Controller
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
        $staff = Staff::paginate(2);
        return view('users.index', compact('staff'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $address = Address::pluck('address', 'id');
        $store = Store::pluck('address_id', 'id');
        return view('users.create', compact('address', 'store'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = new Staff;
        $user->create($request->all());
        Session::flash('message', 'Usuario Registrado Correctamente');
        return Redirect::to('/user');
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
        $users = Staff::findOrFail($id);
        return view('users.edit', ['users' => $users]);
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
        $users = Staff::findOrFail($id);
        $users->fill($request->all());
        $users->save();
        Session::flash('message', 'Usuario Actualizado Correctamente');
        return Redirect::to('/user');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $users = Staff::findOrFail($id);
        $users->delete();
        Session::flash('message', 'Usuario Eliminado Correctamente');
        return redirect()->back();
    }
}
