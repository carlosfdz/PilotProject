@extends('layouts.principal')
	@section('content')
	@include('alerts.errors')
	@include('errors.list')
				<div class="header">
			<div class="top-header">
				<div class="logo">
					<a href="/"><img src="images/logo.png" alt="" /></a>
					<p>VideoClub Sakila</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="header-info">
				<h1>LARAVEL 5.2</h1>
				{!!Form::open(['route'=>'log.store', 'method'=>'POST'])!!}
					<div class="form-group">
						{!!Form::label('correo','Correo:')!!}
						{!!Form::email('email',null,['class'=>'form-control', 'placeholder'=>'Ingresa tu correo'])!!}
					</div>
					<div class="form-group">
						{!!Form::label('contrasena','Contraseña:')!!}
						{!!Form::password('password',['class'=>'form-control', 'placeholder'=>'Ingresa tu contraseña'])!!}
					</div>
					{!!Form::submit('Iniciar',['class'=>'btn btn-primary'])!!}
				{!!Form::close()!!}
				<div style="text-align: right">
					{!!link_to('password/email', $title = 'Olvidaste tu contraseña?', $attributes = null, $secure = null)!!}
				</div>

			</div>
		</div>
		<div class="review-slider">
			 <ul id="flexiselDemo1">
			<li><img src="images/r1.jpg" alt=""/></li>
			<li><img src="images/r2.jpg" alt=""/></li>
			<li><img src="images/r3.jpg" alt=""/></li>
			<li><img src="images/r4.jpg" alt=""/></li>
			<li><img src="images/r5.jpg" alt=""/></li>
			<li><img src="images/r6.jpg" alt=""/></li>
		</ul>

		</div>
	@endsection
