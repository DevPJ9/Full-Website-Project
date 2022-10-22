<!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
{
    margin: 0;
    padding: 0;
    font-family: 'Roboto Condensed', sans-serif;
}

/* navbar */
.navbar-nav {
	margin-right: 0 !important;
	padding-right: 100px;
}

.navbar {
	background-color: #0a193d;
	color: white !important;
}

.nav-item a {
	color: white !important;
}

.nav-item {
	padding-left: 2px;
}

.navbar-brand {
	color: white !important;
	padding-left: 100px;
}

#navbar button {
	color: white !important;
}

/* banner */
#banner-container {
	background-color: #0a193d;
	color: white !important;
	padding-top: 80px;
	padding-bottom: 80px;
	padding-left: 450px;
}

#banner-row img {
	max-width: 70%;
	height: auto;
	display: block;
	padding-left: 30px;
}

#banner-row h3, p {
	padding-left: 20px;
	padding-top: 20px;
	text-align: center;
}

#banner-row a {
	background-color: white !important;
	color: black !important;
	border: none;
	margin-left: 20px;
	margin-top: 20px;
}

#banner-col {
	padding-left: 20px;
}
/* service */
#service {
	padding-top: 80px;
	padding-bottom: 80px;
}

#service h1 {
	padding-bottom: 70px;
}

/* about */
#about {
	padding-top: 80px;
	padding-bottom: 80px;
}

#about h1 {
	padding-bottom: 70px;
}

#about-col ul {
	padding-top: 50px;
	padding-left: 50px;
}

#about-col ul li {
	padding-top: 15px;
}

/* product */
#product {
	padding-top: 80px;
	padding-bottom: 80px;
}

#product h1 {
	padding-bottom: 70px;
}

#product-col2 ul {
	padding-top: 90px;
}

#product-col2 ul li {
	padding-top: 15px;
}

/* social */
#social {
	padding-top: 80px;
	padding-bottom: 80px;
}

#social h1 {
	padding-bottom: 70px;
}

.social-col a:hover img {
	transform: translateY(-10px);
}

#social-row {
	flex-direction: row;
}

/* footer */
.mb-3 {
	padding-top: 10px;
}

/* media */
@media only screen and (max-width: 987px) {
	.navbar-brand {
		padding-left: 0px;
	}
}

@media only screen and (max-width: 768px) {
	#banner-row img {
		padding-top: 20px;
	}
	.social-col {
		width: 33%;
	}
}
</style>

<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,
				initial-scale=1" />

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous" />
<link rel="stylesheet" href="style.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap"
	rel="stylesheet" />
<title>Customer Page</title>
</head>
<body>
	<section id="navbar">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav m-auto">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#about">About
								Page</a></li>
						<li class="nav-item"><a class="nav-link" href="#service">Services</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#social">Thank You</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>

	<!-- banner -->
	<section id="banner">
		<div class="container-fluid" id="banner-container">
			<div class="row" id="banner-row">
				<div class="col-md-6" id="banner-col">
					<h3>This Page is For Customer Needs</h3>

					<p>Select Option of Your liking</p>

				</div>
			</div>
		</div>
	</section>

	<!-- about Page -->
	<section id="about">
		<h1 class="text-center">About Page</h1>
		<div class="container-fluid" id="about-container">
			<div class="row" id="banner-row">
				<div class="col-md-6" id="about-col">
					<ul>
						<li>This Page is for customers to perform complex tasks
							easily</li>
						<li>You can either scroll down to services section or press
							services Button from the nav section at top</li>
					</ul>

				</div>
				<a class="nav-link active" aria-current="page" href="#"
						style="color: orange; border: thin;">Go to Top</a>
			</div>
		</div>
	</section>
	<hr />

	<!-- services -->
	<section id="service">
		<h1 class="text-center">SERVICES</h1>
		<div class="container-fluid" id="service-container">
			<div class="row" id="banner-row">
				<div class="col-md-4" id="service-col1">
					<h3>Save Customer</h3>

					<form action = "/">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

				</div>
				<div class="col-md-4" id="service-col2">
					<h3>Update Customer</h3>

					<form action = "/update">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

				</div>
				<div class="col-md-4" id="service-col3">
					<h3>Delete Customer</h3>

					<form action = "/delete">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

				</div>
				
				<div class="col-md-4" id="service-col3">
					<h3>Display Customer</h3>

					<form action = "/search">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

				</div>
				
				<a class="nav-link active" aria-current="page" href="#"
						style="color: orange; border: thin;">Go to Top</a>
			</div>
		</div>
	</section>
	<hr />



	<!-- footer -->
	<section id="footer">
		<section id="banner">
			<div class="container-fluid" id="banner-container">
				<div class="row" id="banner-row">
					<div class="col-md-4" id="footer-col1">
						<h3>Thank You For Visiting</h3>

					</div>
				</div>
			</div>
		</section>
	</section>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>
</html>
