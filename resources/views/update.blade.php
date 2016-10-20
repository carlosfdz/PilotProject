@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			{!! Form::model($movie,['method' => 'patch', 'route' => ['movie.update', $movie]]) !!}

                {!! Form::hidden('id', $movie->id) !!}

                  <div class="form-group">
                      {!! Form::label('title', 'title') !!}
                      {!! Form::text('title', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>

                  <div class="form-group">
                      {!! Form::label('description', 'description') !!}
                      {!! Form::text('description', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>

                  <div class="form-group">
                      {!! Form::label('language_id', 'language') !!}
                      {!! Form::text('language_id', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>

                  <div class="form-group">
                      {!! Form::submit('Actualizar', ['class' => 'btn btn-success ' ] ) !!}
                  </div>
      {!! Form::close() !!}
		</div>
	</div>
</div>
@endsection
