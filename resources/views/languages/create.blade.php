@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'language.store', 'method'=>'POST'])!!}
	<div class="form-group">
		{!!Form::label('name','Nombre del Idioma:')!!}
		{!!Form::text('name',null,['class'=>'form-control','placeholder'=>'Nombre del Idioma'])!!}
	</div>
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
