@extends('layouts.app')
@section('content')
<div class="container">
  <div class="row">
    <div class="col-md-10 col-md-offset-1">
    <div class="panel panel-default">
      <div class="panel-heading">Registar Pelicula</div>
      <div class="panel-body">
      {!! Form::open(['route' => 'movie.store', 'method' => 'post', 'validate']) !!}
                <div class="form-group">
                      {!! Form::label('title', 'Titulo') !!}
                      {!! Form::text('title', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div class="form-group">
                      {!! Form::label('description', 'Descripci&oacute;n') !!}
                      {!! Form::text('description', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div class="form-group">
                      {!! Form::label('release_year', 'Año de estreno') !!}
                      {!! Form::text('release_year', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div class="form-group">
                      {!! Form::label('language_id', 'Idioma') !!}
                      {!! Form::text('language_id', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div class="form-group">
                      {!! Form::label('rental_duration', 'Periodo de Renta') !!}
                      {!! Form::text('rental_duration', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div class="form-group">
                      {!! Form::label('rental_rate', 'Costo de la Renta') !!}
                      {!! Form::text('rental_rate', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div class="form-group">
                      {!! Form::label('length', 'Duración de la Pelicula') !!}
                      {!! Form::text('length', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div class="form-group">
                      {!! Form::label('replacement_cost', 'Costo en caso de daño') !!}
                      {!! Form::text('replacement_cost', null, ['class' => 'form-control' , 'required' => 'required']) !!}
                  </div>
                  <div>
                     {!! Form::label('rating', 'Clasificación') !!}
                  </div>
                  <div class="select2">
                      {!! Form::select('rating', array('G' => 'Público en general', 'PG' => 'No apto para los niños', 'PG-13' => 'No apto para los niños menores de 13 años', 'R' => 'Restringida', 'NC-17' => 'No se admiten menores de 17 años'), ['class' => 'select2']) !!}
                  </div>
                  <div class="select2">
                  {!! Form::select('size', array('L' => 'Large', 'S' => 'Small'), ['class' => 'select2']) !!}
                  </div>


                  <select value="rating" class="select2">
                    <option value="AL">Alabama</option>
                    <option value="WY">Wyoming</option>
                  </select>
                  <div class="form-group">
                      {!! Form::submit('Enviar', ['class' => 'btn btn-success ' ] ) !!}
                      <a href="/movie" class="btn btn-info" role="button">Cancelar</a>
                  </div>
            {!! Form::close() !!}
        </div>
        </div>
    </div>
    </div>
  </div>
</div>
@endsection
