@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'user.store', 'method'=>'POST'])!!}
	@include('users.form')
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
