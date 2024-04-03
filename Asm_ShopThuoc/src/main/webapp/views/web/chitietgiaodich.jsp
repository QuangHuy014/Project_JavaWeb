<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<title>Mini Finance - Transaction Detail</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap"
	rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-icons.css" rel="stylesheet">

<link href="css/apexcharts.css" rel="stylesheet">

<link href="css/tooplate-mini-finance.css" rel="stylesheet">
<!--

Tooplate 2135 Mini Finance

https://www.tooplate.com/view/2135-mini-finance

Bootstrap 5 Dashboard Admin Template

-->
</head>

<body>
	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="index.html"> <i class="bi-box"></i>
				Mini Finance
			</a>
		</div>

		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<form
			class="custom-form header-form ms-lg-3 ms-md-3 me-lg-auto me-md-auto order-2 order-lg-0 order-md-0"
			action="#" method="get" role="form">
			<input class="form-control" name="search" type="text"
				placeholder="Search" aria-label="Search">
		</form>

		<div class="navbar-nav me-lg-2">
			<div class="nav-item text-nowrap d-flex align-items-center">
				<div class="dropdown ps-3">
					<a class="nav-link dropdown-toggle text-center" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi-bell"></i> <span
						class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
							<span class="visually-hidden">New alerts</span>
					</span>
					</a>

					<ul class="dropdown-menu notifications-block-wrap bg-white shadow">
						<small>Notifications</small>

						<li class="notifications-block border-bottom pb-2 mb-2"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-success">
									<i class="notifications-icon bi-check-circle-fill"></i>
								</div>

								<div>
									<span>Your account has been created successfuly.</span>

									<p>2 days ago</p>
								</div>
						</a></li>

						<li class="notifications-block border-bottom pb-2 mb-2"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-info">
									<i class="notifications-icon bi-folder"></i>
								</div>

								<div>
									<span>Please check. We have sent Daily report.</span>

									<p>10 days ago</p>
								</div>
						</a></li>

						<li class="notifications-block"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-danger">
									<i class="notifications-icon bi-question-circle"></i>
								</div>

								<div>
									<span>Account verification failed.</span>

									<p>1 hour ago</p>
								</div>
						</a></li>
					</ul>
				</div>

				<div class="dropdown ps-1">
					<a class="nav-link dropdown-toggle text-center" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi-three-dots-vertical"></i>
					</a>

					<div class="dropdown-menu dropdown-menu-social bg-white shadow">
						<div class="container">
							<div class="row">
								<div class="col-lg-4 col-md-4 col-4">
									<a class="dropdown-item text-center" href="#"> <img
										src="images/social/search.png" class="profile-image img-fluid"
										alt=""> <span class="d-block">Google</span>
									</a>
								</div>

								<div class="col-lg-4 col-md-4 col-4">
									<a class="dropdown-item text-center" href="#"> <img
										src="images/social/spotify.png"
										class="profile-image img-fluid" alt=""> <span
										class="d-block">Spotify</span>
									</a>
								</div>

								<div class="col-lg-4 col-md-4 col-4">
									<a class="dropdown-item text-center" href="#"> <img
										src="images/social/telegram.png"
										class="profile-image img-fluid" alt=""> <span
										class="d-block">Telegram</span>
									</a>
								</div>

								<div class="col-lg-4 col-md-4 col-4">
									<a class="dropdown-item text-center" href="#"> <img
										src="images/social/snapchat.png"
										class="profile-image img-fluid" alt=""> <span
										class="d-block">Snapchat</span>
									</a>
								</div>

								<div class="col-lg-4 col-md-4 col-4">
									<a class="dropdown-item text-center" href="#"> <img
										src="images/social/tiktok.png" class="profile-image img-fluid"
										alt=""> <span class="d-block">Tiktok</span>
									</a>
								</div>

								<div class="col-lg-4 col-md-4 col-4">
									<a class="dropdown-item text-center" href="#"> <img
										src="images/social/youtube.png"
										class="profile-image img-fluid" alt=""> <span
										class="d-block">Youtube</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="dropdown px-3">
					<a class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <img
						src="images/medium-shot-happy-man-smiling.jpg"
						class="profile-image img-fluid" alt="">
					</a>
					<ul class="dropdown-menu bg-white shadow">
						<li>
							<div class="dropdown-menu-profile-thumb d-flex">
								<img src="images/medium-shot-happy-man-smiling.jpg"
									class="profile-image img-fluid me-3" alt="">

								<div class="d-flex flex-column">
									<small>Thomas</small> <a href="#">thomas@site.com</a>
								</div>
							</div>
						</li>

						<li><a class="dropdown-item" href="profile.html"> <i
								class="bi-person me-2"></i> Profile
						</a></li>

						<li><a class="dropdown-item" href="setting.html"> <i
								class="bi-gear me-2"></i> Settings
						</a></li>

						<li><a class="dropdown-item" href="help-center.html"> <i
								class="bi-question-circle me-2"></i> Help
						</a></li>

						<li class="border-top mt-3 pt-2 mx-4"><a
							class="dropdown-item ms-0 me-0" href="#"> <i
								class="bi-box-arrow-left me-2"></i> Logout
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-3 d-md-block sidebar collapse">
				<div class="position-sticky py-4 px-3 sidebar-sticky">
					<ul class="nav flex-column h-100">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="index.html"> <i class="bi-house-fill me-2"></i>
								Overview
						</a></li>

						<li class="nav-item"><a class="nav-link" href="wallet.html">
								<i class="bi-wallet me-2"></i> My Wallet
						</a></li>

						<li class="nav-item"><a class="nav-link" href="profile.html">
								<i class="bi-person me-2"></i> Profile
						</a></li>

						<li class="nav-item"><a class="nav-link" href="setting.html">
								<i class="bi-gear me-2"></i> Settings
						</a></li>

						<li class="nav-item"><a class="nav-link"
							href="help-center.html"> <i class="bi-question-circle me-2"></i>
								Help Center
						</a></li>

						<li class="nav-item featured-box mt-lg-5 mt-4 mb-4"><img
							src="images/credit-card.png" class="img-fluid" alt=""> <a
							class="btn custom-btn" href="#">Upgrade</a></li>

						<li class="nav-item border-top mt-auto pt-2"><a
							class="nav-link" href="#"> <i class="bi-box-arrow-left me-2"></i>
								Logout
						</a></li>
					</ul>
				</div>
			</nav>

			<main
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
				<div class="title-group mb-3">
					<h1 class="h2 mb-0">Transations Detail</h1>
				</div>

				<div class="row my-4">
					<div class="col-lg-12 col-12">
						<div class="custom-block custom-block-transation-detail bg-white">
							<div
								class="d-flex flex-wrap align-items-center border-bottom pb-3 mb-3">
								<div class="d-flex align-items-center">
									<img
										src="images/profile/young-woman-with-round-glasses-yellow-sweater.jpg"
										class="profile-image img-fluid" alt="">

									<div>
										<p>Store</p>

										<small class="text-muted">Payment Received</small>
									</div>
								</div>

								<div class="ms-auto">
									<small>22/8/2023</small> <strong class="d-block text-success"><span
										class="me-1">+</span> $280</strong>
								</div>
							</div>

							<div class="d-flex flex-wrap align-items-center">
								<div class="custom-block-transation-detail-item mt-4">
									<h6>Transation ID</h6>

									<p>283J3S0EL023</p>
								</div>

								<div
									class="custom-block-transation-detail-item mt-4 mx-auto px-4">
									<h6>Description</h6>

									<p>Shopee</p>
								</div>

								<div
									class="custom-block-transation-detail-item mt-4 ms-lg-auto px-lg-3 px-md-3">
									<h6>Payment Type</h6>

									<p>C2C Transfer</p>
								</div>

								<div
									class="custom-block-transation-detail-item mt-4 ms-auto me-auto">
									<h6>Amounts</h6>

									<p>$280</p>
								</div>
							</div>

						</div>
					</div>
				</div>

				<footer class="site-footer">
					<div class="container">
						<div class="row">

							<div class="col-lg-12 col-12">
								<p class="copyright-text">
									Copyright © Mini Finance 2048 - Design: <a rel="sponsored"
										href="https://www.tooplate.com" target="_blank">Tooplate</a>
								</p>
							</div>

						</div>
					</div>
				</footer>
			</main>

		</div>
	</div>



</body>
</html>