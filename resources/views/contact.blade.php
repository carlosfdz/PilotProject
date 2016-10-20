@extends('layouts.principal')
	@section('content')
	@include('alerts.success')
		<div class="contact-content">
			<div class="top-header span_top">
				<div class="logo">
					<a href="/"><img src="images/logo.png" alt="" /></a>
					<p>VideoClub Sakila</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<!---contact-->
<div class="main-contact">
		 <h3 class="head">CONTACT US</h3>
		 <p>CONTACT FOR THE PROJECT SAKILA</p>
		 <div class="contact-form">
			 {!!Form::open(['route'=>'mail.store','method'=>'POST'])!!}
			 	<div class="col-md-6 contact-left">
			 		{!!Form::text('name',null,['placeholder' => 'Name', 'required' => 'required'])!!}
			 		{!!Form::text('email',null,['placeholder' => 'E-mail', 'required' => 'required'])!!}
				</div>
				<div class="col-md-6 contact-right">
					{!!Form::textarea('mensaje',null,['placeholder' => 'Message', 'required' => 'required'])!!}
				</div>
				<div >
					{!!Form::submit('SEND')!!}
				</div>
			 {!!Form::close()!!}
	     </div>
</div>
	@endsection
