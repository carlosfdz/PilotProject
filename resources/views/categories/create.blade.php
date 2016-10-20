@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'category.store', 'method'=>'POST'])!!}
	<div class="form-group">
		{!!Form::label('name','Nombre de la Categoria:')!!}
		{!!Form::text('name',null,['class'=>'form-control','placeholder'=>'Nombre de la Categoria'])!!}
	</div>
	{!!Form::submit('Registrar Categoria',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
