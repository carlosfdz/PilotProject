<div class="form-group">
		{!!Form::label('store_id','Tienda:')!!}
		{{-- {!!Form::text('store_id',null,['class'=>'form-control','placeholder'=>''])!!} --}}
		{!! Form::select('store_id', $store, null, ['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!!Form::label('nombre','Nombre:')!!}
		{!!Form::text('first_name',null,['class'=>'form-control','placeholder'=>'Nombre del Cliente'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('apellido','Apellido:')!!}
		{!!Form::text('last_name',null,['class'=>'form-control','placeholder'=>'Apellidos del Cliente'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('email','E-mail:')!!}
		{!!Form::text('email',null,['class'=>'form-control','placeholder'=>'Email del Cliente'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('address_id','Dirección:')!!}
		{{-- {!!Form::text('address_id',null,['class'=>'form-control','placeholder'=>'Dirección del Cliente'])!!} --}}
		{!! Form::select('address_id', $address, null, ['class' => 'form-control']) !!}
	</div>
	<div class="">
		{!!Form::label('active','Activo:')!!}
		{!!Form::checkbox('active', null)!!}
	</div>
