@extends('layouts.admin')
	@section('content')
	@include('errors.list')
		{!!Form::model($languages,['route'=>['language.update',$languages],'method'=>'PUT'])!!}
	<div class="form-group">
		{!!Form::label('name','Nombre del Idioma:')!!}
		{!!Form::text('name',null,['class'=>'form-control','placeholder'=>'Nombre del Idioma'])!!}
	</div>
	{!!Form::submit('Actualizar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
