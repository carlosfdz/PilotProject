@extends('layouts.admin')

@include('alerts.success')

	@section('content')
	<div>
	<table class="table">
		<thead>
			<th>Categoria</th>
			<th>Operacion</th>
		</thead>
		@foreach($categories as $category)
			<tbody>
				<td>{{$category->name}}</td>
				<td>
					{!!link_to_route('category.edit', $title = 'Editar', $parameters = $category, $attributes = ['class'=>'btn btn-primary'])!!}

					<a class="btn btn-danger" href="{{ route('category.destroy',['id' => $category->id] )}}" >Eliminar</a>
				</td>
			</tbody>
		@endforeach
	</table>
	</div>
	<div class="text-right">
    {!! $categories->render() !!}
  	</div>
	@endsection
