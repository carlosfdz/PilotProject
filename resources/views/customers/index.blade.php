@extends('layouts.admin')

@include('alerts.success')

	@section('content')
	<div>
	<table class="table">
		<thead>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Email</th>
			<th>Direccion</th>
			<th>Operacion</th>
		</thead>
		@foreach($customers as $customer)
			<tbody>
				<td>{{$customer->first_name}}</td>
				<td>{{$customer->last_name}}</td>
				<td>{{$customer->email}}</td>
				<td>{{$customer->address->address }}</td>
				<td>
					{!!link_to_route('customer.edit', $title = 'Editar', $parameters = $customer, $attributes = ['class'=>'btn btn-primary'])!!}

					<a class="btn btn-danger" href="{{ route('customer.destroy',['id' => $customer->id] )}}" >Eliminar</a>
				</td>
			</tbody>
		@endforeach
	</table>
	</div>
	<div class="text-right">
    {!! $customers->render() !!}
  	</div>
	@endsection
