@extends('layouts.app')
@section('content')
	{!! Form::open() !!}
		{!! Form::select('first_name', $users, null, ['class' => 'select2']) !!}

		{!! Form::submit('enviar') !!}
	{!! Form::close() !!}
@endsection
