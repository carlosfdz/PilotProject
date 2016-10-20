@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'movie.store', 'method'=>'POST','files' => true])!!}
	@include('movies.form')
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	<br>
	@endsection
