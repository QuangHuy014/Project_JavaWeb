<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<%@include file="/common/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap"
	rel="stylesheet">
<link href="<c:url value='/template/web/admin/css/apexcharts.css'/>"
	rel="stylesheet">
<link href="<c:url value='/template/web/admin/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/template/web/admin/css/bootstrap-icon.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/template/web/admin/css/tooplate-mini-finance.css'/>"
	rel="stylesheet">
</head>

<body>
	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="showProduct"> <i class="bi-box"></i>
				ADMIN
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
			action="/NhapASM_ShopThuoc/showProduct" method="get" role="form">
			<input class="form-control" name="fullname" type="text"
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

									<p>12 days ago</p>
								</div>
						</a></li>

						<li class="notifications-block border-bottom pb-2 mb-2"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-info">
									<i class="notifications-icon bi-folder"></i>
								</div>

								<div>
									<span>Please check. We have sent a Daily report.</span>

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
							href="index.html"> <i class="bi-house-fill me-2"></i> List
								Bill
						</a></li>

						<li class="nav-item"><a class="nav-link active"
							href="showProduct"> <i class="bi-wallet me-2"></i> List
								Product
						</a></li>

						<li class="nav-item"><a class="nav-link" href="profile.html">
								<i class="bi-person me-2"></i> Revenue
						</a></li>

						<li class="nav-item"><a class="nav-link" href="setting.html">
								<i class="bi-gear me-2"></i> Account
						</a></li>



						<li class="nav-item featured-box mt-lg-5 mt-4 mb-4"><img
							src="images/credit-card.png" class="img-fluid" alt=""> <a
							class="btn custom-btn" href="addProduct">ADD PRODUCT</a></li>

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
					<h1 class="h2 mb-0">LIST PRODUCT</h1>
				</div>

				<div class="row my-4">
					<div class="col-lg-12 col-12">
						<div class="custom-block bg-white">

							<div class="table-responsive">


								<table class="account-table table">
									<thead>
										<tr>
											<th scope="col">IDHoaDonChiTiet</th>
											<th scope="col">TenThuoc</th>
											<th scope="col">SoLuong</th>
											<th scope="col">Gia</th>
											<th scope="col">IDThuoc</th>
											<th scope="col">IDHoaDon</th>
											<th scope="col">Ngày đặt</th>
										</tr>
									</thead>
									<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

									<tbody>
										<c:forEach items="${ListSP}" var="item">
											<tr>
												<td>${item.IDHoaDonChiTiet}</td>
												<td>${item.tenThuoc}</td>
												<td>${item.soLuong}</td>
												<td>${item.gia}</td>
												<td>${item.IDThuoc}</td>
												<td>${item.hoaDon.IDHoaDon}</td>
													<td><fmt:formatDate value="${item.hoaDon.ngayDH}"
														pattern="dd/MM/yyyy" /></td>
							
											</tr>
										</c:forEach>
									</tbody>

								</table>
								
								
								<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<table class="revenue-table table">
    <thead>
        <tr>
            <th scope="col">Ngày</th>
            <th scope="col">Doanh thu</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${ListSP}" var="item" varStatus="loop">
            <c:set var="currentDate" value="${item.hoaDon.ngayDH}" />
            <c:set var="totalRevenue" value="0" />
            <c:forEach items="${ListSP}" var="subItem">
                <c:if test="${subItem.hoaDon.ngayDH == currentDate}">
                    <c:set var="totalRevenue" value="${totalRevenue + (subItem.soLuong * subItem.gia)}" />
                </c:if>
            </c:forEach>
            <c:if test="${loop.first || ListSP[loop.index - 1].hoaDon.ngayDH != currentDate}">
                <tr>
                    <td><fmt:formatDate value="${currentDate}" pattern="dd/MM/yyyy" /></td>
                    <td>${totalRevenue}</td>
                </tr>
            </c:if>
        </c:forEach>
    </tbody>
</table>
								
								
							</div>

							<!-- <nav aria-label="Page navigation example">
								
							</nav> -->
						</div>
					</div>
				</div>

				<footer class="site-footer">
					<div class="container">
						<div class="row">

							<div class="col-lg-12 col-12">
								<p class="copyright-text">
									NghiaDzai: <a rel="sponsored" href="https://www.tooplate.com"
										target="_blank">Tooplate</a>
								</p>
							</div>

						</div>
					</div>
				</footer>
			</main>

		</div>
	</div>
	<script src="<c:url value='/template/web/admin/js/apexcharts.min.js'/>"></script>
	<script
		src="<c:url value='/template/web/admin/js/bootstrap.bundle.min.js'/>"></script>
	<script src="<c:url value='/template/web/admin/js/custom.js'/>"></script>
	<script src="<c:url value='/template/web/admin/js/jquery.min.js'/>"></script>


</body>
</html>