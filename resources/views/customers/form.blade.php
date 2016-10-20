<div class="form-group">
		{!!Form::label('store_id','Tienda:')!!}
		{!! Form::select('store_id', $store, null, ['class' => 'select2']) !!}
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
		{!! Form::select('address_id', $address, null, ['class' => 'select2']) !!}
	</div>
	<div class="">
		{!!Form::label('active','Activo:')!!}
		{!!Form::checkbox('active', null)!!}
	</div>
