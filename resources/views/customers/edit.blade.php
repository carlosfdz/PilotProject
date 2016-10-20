@extends('layouts.admin')
	@section('content')
	@include('errors.list')
		{!!Form::model($customers,['route'=>['customer.update',$customers],'method'=>'PUT'])!!}
	@include('customers.form')
	{!!Form::submit('Actualizar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
