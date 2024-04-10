<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Spinner Start -->
<div id="spinner"
	class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
	<div class="spinner-grow text-primary" role="status"></div>
</div>
<!-- Spinner End -->


<!-- Navbar start -->
<div class="container-fluid fixed-top bg-primary"
	style="top: 0px; padding-top: 30px;" style="background-color: #2167dd;">
	<div class="container px-0" style="background-color: #2167dd;">
		<nav class="navbar navbar-light  navbar-expand-xl"
			style="background-color: #2167dd;">


			<img src="<c:url value='/template/web/img/logo_fptfpt.png' />" alt=""
				srcset="" style="height: 120px; margin-left: 70px;" class="">
			<button class="navbar-toggler py-2 px-3" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="fa fa-bars text-primary"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarCollapse"
				style="background-color: #2167dd;">
				<div class="navbar-nav mx-auto">
					<a href="homeController" class="nav-item nav-link text-primary">Home</a>
					<a href="sanPhamController" class="nav-item nav-link text-primary">Shop</a>
					<a href="shop-detail.html" class="nav-item nav-link text-primary">Shop
						Detail</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle text-primary"
							data-bs-toggle="dropdown">Pages</a>
						<div class="dropdown-menu m-0 bg-secondary rounded-0">
							<a href="cart.html" class="dropdown-item">Cart</a> <a
								href="chackout.html" class="dropdown-item">Chackout</a> <a
								href="testimonial.html" class="dropdown-item">Testimonial</a> <a
								href="404.html" class="dropdown-item">404 Page</a>
						</div>
					</div>
					<a href="contact.html" class="nav-item nav-link text-primary">Contact</a>

				</div>
				<div class="d-flex m-3 me-0">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success me-2 text-primary"
						type="submit">Search</button>
					<a href="#" class="position-relative me-4 my-auto"> <i
						class="fa fa-shopping-bag fa-2x" style=""></i> <span
						class="position-absolute bg-primary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
						style="top: -5px; left: 15px; height: 20px; min-width: 20px;" >${countCellPhones}</span>
					</a> <a
						href="../fruitables-1.0.0/login-form-20/login-form-20/index.html"
						class="my-auto"> <i class="fas fa-user fa-2x"></i>
					</a>
					<c:if test="${not empty sessionScope.user}">
						<a class="nav-link nav-link-1 " data-toggle="modal"
							data-target="#changePassModel">Welcome,
							${sessionScope.user.id }</a>

					</c:if>
				</div>
			</div>
		</nav>
	</div>
</div>