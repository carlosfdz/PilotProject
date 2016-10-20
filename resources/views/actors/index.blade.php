@extends('layouts.admin')

@include('alerts.success')

	@section('content')
	<div>
	<table class="table">
		<thead>
			<th>Nombre</th>
			<th>Operacion</th>
		</thead>
		@foreach($actor as $actors)
			<tbody>
				<td>{{$actors->name}}</td>
				<td>
					{!!link_to_route('actor.edit', $title = 'Editar', $parameters = $actors, $attributes = ['class'=>'btn btn-primary'])!!}

					<a class="btn btn-danger" href="{{ route('actor.destroy',['id' => $actors->id] )}}" >Eliminar</a>
				</td>
			</tbody>
		@endforeach
	</table>
	</div>
	<div class="text-right">
    {!! $actor->render() !!}
  	</div>
	@endsection
