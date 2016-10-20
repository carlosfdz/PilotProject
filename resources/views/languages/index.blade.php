@extends('layouts.admin')

@include('alerts.success')

	@section('content')
	<div>
	<table class="table">
		<thead>
			<th>Idioma</th>
			<th>Operacion</th>
		</thead>
		@foreach($languages as $language)
			<tbody>
				<td>{{$language->name}}</td>
				<td>
					{!!link_to_route('language.edit', $title = 'Editar', $parameters = $language, $attributes = ['class'=>'btn btn-primary'])!!}

					<a class="btn btn-danger" href="{{ route('language.destroy',['id' => $language->id] )}}" >Eliminar</a>
				</td>
			</tbody>
		@endforeach
	</table>
	</div>
	<div class="text-right">
    {!! $languages->render() !!}
  	</div>
	@endsection
