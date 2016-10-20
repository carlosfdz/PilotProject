@extends('layouts.admin')
	@section('content')
	@include('alerts.success')
	{!!Form::open(['route'=>'address.store', 'method'=>'POST'])!!}
	<div class="form-group">
		{!!Form::label('address','Dirección:')!!}
		{!!Form::text('address',null,['class'=>'form-control','placeholder'=>'Calles, Avenidas, Numero'])!!}
	</div>

	<div class="form-group">
		{!!Form::label('postal_code','Codigo Postal:')!!}
		{!!Form::text('postal_code',null,['class'=>'form-control','placeholder'=>'Ej: 94500'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('phone','Telefono:')!!}
		{!!Form::text('phone',null,['class'=>'form-control','placeholder'=>'Ingresa número Telefonico'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('district','Localidad:')!!}
		{!!Form::text('district',null,['class'=>'form-control','placeholder'=>'Region o Localidad'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('city_id','Ciudad:')!!}
		{!! Form::select('city_id', $cities, null, ['class' => 'select2']) !!}

		<a href="/city/create">*Agregar Ciudad</a>
	</div>
	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
