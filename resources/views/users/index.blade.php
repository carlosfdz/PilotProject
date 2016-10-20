@extends('layouts.admin')

@include('alerts.success')

	@section('content')
	<div>
	<table class="table">
		<thead>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Email</th>
			<th>Operacion</th>
		</thead>
		@foreach($staff as $user)
			<tbody>
				<td>{{$user->first_name}}</td>
				<td>{{$user->last_name}}</td>
				<td>{{$user->email}}</td>
				<td>
					{!!link_to_route('user.edit', $title = 'Editar', $parameters = $user, $attributes = ['class'=>'btn btn-primary'])!!}

					<a class="btn btn-danger" href="{{ route('user.destroy',['id' => $user->id] )}}" >Eliminar</a>
				</td>
			</tbody>
		@endforeach
	</table>
	</div>
	<div class="text-right">
    {!! $staff->render() !!}
  	</div>
	@endsection
