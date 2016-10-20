@extends('layouts.admin')
	@section('content')
	@include('errors.list')
		{!!Form::model($actors,['route'=>['actor.update',$actors],'method'=>'PUT'])!!}
	@include('actors.form')
	{!!Form::submit('Actualizar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
