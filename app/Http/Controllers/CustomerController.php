<?php

namespace App\Http\Controllers;

use App\Address;
use App\Customer;
use App\Store;
use Illuminate\Http\Request;
use Redirect;
use Session;

class CustomerController extends Controller
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
        $customers = Customer::paginate(2);
        return view('customers.index', compact('customers'));
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
        return view('customers.create', compact('address', 'store'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $customer = new Customer;
        $customer->create($request->all());
        Session::flash('message', 'Cliente Registrado Correctamente');
        return Redirect::to('/customer');
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
        $customers = Customer::find($id);
        $address = Address::pluck('address', 'id');
        $store = Store::pluck('address_id', 'id');
        //return view('customers.edit', ['customers' => $customers]);
        return view('customers.edit', compact('customers', 'address', 'store'));
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
        $customers = Customer::findOrFail($id);
        $customers->fill($request->all());
        $customers->save();
        Session::flash('message', 'Cliente Actualizado Correctamente');
        return Redirect::to('/customer');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $customers = Customer::findOrFail($id);
        $customers->delete();
        Session::flash('message', 'Cliente Eliminado Correctamente');
        return redirect()->back();
    }
}
