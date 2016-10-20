@extends('layouts.principal')
	@section('content')
				<div class="review-content">
			<div class="top-header span_top">
				<div class="logo">
					<a href="/"><img src="images/logo.png" alt="" /></a>
					<p>VideoClub Sakila</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="reviews-section">
				<h3 class="head">Movie Catalog</h3>
					<div class="col-md-9 reviews-grids">
					@foreach ($movies as $movie)
						<div class="review">
							<div class="movie-pic">
								<img src="movies/{{ $movie->image }}" alt="" /></a>
							</div>
							<div class="review-info">
								<a class="span" href="">
								<i>{{ $movie->title }}</i></a>
								<p class="info">DESCRIPTION:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $movie->description }}</p>
								<p class="info">LANGUAGE: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $movie->language->name }}</p>
								<p class="info">DURATION:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ $movie->length }}&nbsp;Minutes</p>
								<p class="info">CLASSIFICATION: &nbsp; {{ $movie->rating }}</p>
								<p class="info">COST:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; ${{ $movie->rental_rate }}</p>
								@unless ($movie->categories->isEmpty())
									<p class="info">CATEGORY:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										@foreach ($movie->categories as $category)
											{{ $category->name }},&nbsp;
										@endforeach
									</p>
								@endunless
								@unless ($movie->actors->isEmpty())
									<p class="info">ACTORS:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										@foreach ($movie->actors as $actor)
											{{ $actor->name }},&nbsp;
										@endforeach
									</p>
								@endunless

							</div>
							<div class="clearfix"></div>
						</div>
					@endforeach

					</div>


					<div class="clearfix"></div>
			</div>
			</div>
			<div class="text-center">
		    {!! $movies->render() !!}
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
