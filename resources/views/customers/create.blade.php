@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'customer.store', 'method'=>'POST'])!!}
	@include('customers.form')
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
