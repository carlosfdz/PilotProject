@extends('layouts.admin')
	@section('content')
	@include('errors.list')
		{!!Form::model($categories,['route'=>['category.update',$categories],'method'=>'PUT'])!!}
	<div class="form-group">
		{!!Form::label('name','Nombre de la Categoria:')!!}
		{!!Form::text('name',null,['class'=>'form-control','placeholder'=>'Nombre de la Categoria'])!!}
	</div>
	{!!Form::submit('Actualizar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
