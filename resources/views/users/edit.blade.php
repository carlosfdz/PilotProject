@extends('layouts.admin')
	@section('content')
	@include('errors.list')
		{!!Form::model($users,['route'=>['user.update',$users],'method'=>'PUT'])!!}
	@include('users.form')
	{!!Form::submit('Actualizar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection
