@extends('layouts.admin')
	@section('content')
	@include('errors.list')
	{!!Form::open(['route'=>'city.store', 'method'=>'POST'])!!}
	<div class="form-group">
		{!!Form::label('city','Ciudad:')!!}
		{!!Form::text('city',null,['class'=>'form-control','placeholder'=>'Nombre de la Ciudad'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('country_id','Pais:')!!}
		{!! Form::select('country_id', $countries, null, ['class' => 'select2']) !!}
		<a href="/country/create">*Agregar Pais</a>
	</div>
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
