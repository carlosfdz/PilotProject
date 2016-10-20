@extends('layouts.admin')
	@section('content')
	@include('errors.list')
		{!!Form::model($movies,['route'=>['movie.update',$movies],'method'=>'PUT','files'=>true])!!}
		@include('movies.form')
		{!!Form::submit('Actualizar',['class'=>'btn btn-primary'])!!}
		{!!Form::close()!!}
	@endsection
