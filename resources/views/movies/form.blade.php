	<div class="form-group">
	    {!! Form::label('title', 'Titulo') !!}
	    {!! Form::text('title', null, ['class'=>'form-control','placeholder'=>'Titulo de la Pelicula', 'required' => 'required']) !!}
	</div>
	<div class="form-group">
	    {!! Form::label('description', 'Descripción') !!}
	    {!! Form::textarea('description', null, ['class'=>'form-control','placeholder'=>'Descripción de la Pelicula', 'required' => 'required']) !!}
	</div>
	<div class="form-group">
	    {!! Form::label('release_year', 'Año de estreno') !!}
	    {!! Form::text('release_year', null, ['class'=>'form-control','placeholder'=>'AAAA-MM-DD', 'required' => 'required']) !!}
	</div>
	<div class="form-group">
        {!! Form::label('rental_duration', 'Periodo de Renta') !!}
        {!! Form::text('rental_duration', null, ['class'=>'form-control','placeholder'=>'Periodo de Renta en dias', 'required' => 'required']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('rental_rate', 'Costo de la Renta') !!}
        {!! Form::text('rental_rate', null, ['class'=>'form-control','placeholder'=>'Ej. 50.00', 'required' => 'required']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('length', 'Duración de la Pelicula') !!}
        {!! Form::text('length', null, ['class'=>'form-control','placeholder'=>'Duracion en Minutos', 'required' => 'required']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('replacement_cost', 'Costo en caso de daño') !!}
        {!! Form::text('replacement_cost', null, ['class'=>'form-control','placeholder'=>'Ej. 100.00', 'required' => 'required']) !!}
    </div>
    <div class="form-group">
		{!!Form::label('Portada','Portada:')!!}
		{!!Form::file('image')!!}
	</div>
    <div for="sel1">
	   {!! Form::label('rating', 'Clasificación') !!}
	</div>
    <!-- Select With One Default -->
    <div class="form-group">
        {!!  Form::select('ratings_list[]', ['G' => 'Público en general', 'PG' => 'No apto para los niños', 'PG-13' => 'No apto para los niños menores de 13 años', 'R' => 'Restringida', 'NC-17' => 'No se admiten menores de 17 años'],  'G', ['class' => 'select2' ]) !!}
    </div>
    <div class="form-group">
	    {!! Form::label('language_id', 'Idioma') !!}
	    {!! Form::select('language_id', $languages, null, ['class' => 'select2']) !!}
	</div>
	{{-- comment

    <div class="form-group">
		{!! Form::label('film_categories', 'Categorias:') !!}
	    {!! Form::select('categories_list[]', $categories, null, ['class'=>'select2', 'multiple']) !!}
	</div>
	--}}
	<div class="form-group">
		{!! Form::label('actors_list', 'Actores:') !!}
	    {!! Form::select('actor_list[]', $actors, null, ['class'=>'select2', 'multiple']) !!}
	</div>
