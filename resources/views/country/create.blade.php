@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'country.store', 'method'=>'POST'])!!}
	<div class="form-group">
		{!!Form::label('country','Pais:')!!}
		{!!Form::text('country',null,['class'=>'form-control','placeholder'=>'Nombre del Pais'])!!}
	</div>
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
