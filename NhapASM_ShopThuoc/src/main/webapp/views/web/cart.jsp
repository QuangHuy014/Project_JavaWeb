<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="<c:url value='/template/web/lib/lightbox/css/lightbox.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/template/web/lib/owlcarousel/assets/owl.carousel.min.css'/>"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="<c:url value='/template/web/css/bootstrap.min.css'/>"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="<c:url value='/template/web/css/style.css'/>"
	rel="stylesheet">
<%-- <link href="<c:url value='/template/web/css/style1.css'/>"
	rel="stylesheet"> --%>
</head>
<body>
	<%@ include file="/common/web/header.jsp"%>

	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">Cart</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Pages</a></li>
			<li class="breadcrumb-item active text-white">Cart</li>
		</ol>
	</div>
	<!-- Single Page Header End -->


	<!-- Cart Page Start -->
	<div class="container-fluid py-5">
		<div class="container py-5">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Products</th>
							<th scope="col">Name</th>
							<th scope="col">Price</th>
							<th scope="col">Quantity</th>
							<th scope="col">Total</th>
							<th scope="col">Handle</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="sum" value="0" />
						<c:forEach var="entry" items="${cartThuocss}" varStatus="status">
							<tr>
								<th scope="row">
									<div class="d-flex align-items-center">
										<img src="${entry.value.hinh}"
											class="img-fluid me-5 rounded-circle"
											style="width: 80px; height: 80px;" alt="">
									</div>
								</th>
								<td>
									<p class="mb-0 mt-4">${entry.value.ten}</p>
								</td>
								<td>
									<p class="mb-0 mt-4">${entry.value.gia}</p>
								</td>

								 <td>
									<div class="input-group quantity mt-4" style="width: 100px;">

										<div class="input-group-btn">
											<a  href="cartMinus?id=${entry.value.idThuoc}&action=minus"
												class="btn btn-sm btn-minus rounded-circle bg-light border">
												<i class="fa fa-minus"></i>
											</a>
										</div>
										<input type="text"
											class="form-control form-control-sm text-center border-0 "
											value="${entry.value.quantity}">
										<div class="input-group-btn">
											<a href="cartPlus?id=${entry.value.idThuoc}&action=plus"
												class="btn btn-sm btn-plus rounded-circle bg-light border">
												<i class="fa fa-plus"></i>
											</a>
										</div>
									</div>
								</td> 



								<td><fmt:formatNumber type="number" maxFractionDigits="3"
										value="${entry.value.gia * entry.value.quantity}" /> <c:set
										var="sum"
										value="${sum+(entry.value.gia * entry.value.quantity)}" /></td>
								<td>
									

								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="mt-5">
				<input type="text"
					class="border-0 border-bottom rounded me-5 py-3 mb-4"
					placeholder="Coupon Code">
				<button
					class="btn border-secondary rounded-pill px-4 py-3 text-primary"
					type="button" >Apply Coupon</button>
			</div>
			<div class="row g-4 justify-content-end">
				<div class="col-8"></div>
				<div class="col-sm-8 col-md-7 col-lg-6 col-xl-4">
					<div class="bg-light rounded">
						<div class="p-4">
							<h1 class="display-6 mb-4">
								Cart <span class="fw-normal">Total</span>
							</h1>

							<div
								class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
								<h5 class="mb-0 ps-4 me-4">Total</h5>
								<p class="mb-0 pe-4">
									<fmt:formatNumber type="number" maxFractionDigits="3"
										value="${sum}" />
									đ
								</p>
							</div>
							<a
								class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4"
								href="checkout">Proceed Checkout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Cart Page End -->
		<%@ include file="/common/web/footer.jsp"%>
</body>

<script>
	
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="<c:url value='/template/web/lib/easing/easing.min.js'/>"></script>
<script
	src="<c:url value='/template/web/lib/waypoints/waypoints.min.js'/>"></script>
<script
	src="<c:url value='/template/web/lib/lightbox/js/lightbox.min.js'/>"></script>
<script
	src="<c:url value='/template/web/lib/owlcarousel/owl.carousel.min.js'/>"></script>

<!-- Template Javascript -->
<script src="<c:url value='/template/web/js/main.js'/>"></script>
</html>