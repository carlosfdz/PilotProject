@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'actor.store', 'method'=>'POST'])!!}
	@include('actors.form')
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
