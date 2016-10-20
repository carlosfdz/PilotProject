@extends('layouts.admin')

@include('alerts.success')

	@section('content')
	<div>
	<table class="table">
		<thead>
			<th>Nombre</th>
			<th>Descripcion</th>
			<th>Idioma</th>
			<th>Fecha de Creación</th>
			<th>Portada</th>
			<th>Operacion</th>
		</thead>
		@foreach($movies as $movie)
			<tbody>
				<td>{{ $movie->title }}</td>
                <td>{{ str_limit($movie->description, 30) }}</td>
                <td>{{ $movie->language->name }}</td>
                <td>{{ $movie->created_at }}</td>
                <td><img src="movies/{{ $movie->image }}" alt="" style="width:100px;"></td>
				<td>
					{!!link_to_route('movie.edit', $title = 'Editar', $parameters = $movie, $attributes = ['class'=>'btn btn-primary'])!!}
					<a class="btn btn-danger" href="{{ route('movie.destroy',['id' => $movie->id] )}}" >Eliminar</a>

				</td>
			</tbody>
		@endforeach
	</table>
	</div>
	<div class="text-right">
    {!! $movies->render() !!}
  	</div>
	@endsection
