<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="modal fade" id="searchModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content rounded-0">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Search by
						keyword</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body d-flex align-items-center">
					<div class="input-group w-75 mx-auto d-flex">
						<input type="search" class="form-control p-3"
							placeholder="keywords" aria-describedby="search-icon-1">
						<span id="search-icon-1" class="input-group-text p-3"><i
							class="fa fa-search"></i></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Search End -->


	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">Checkout</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Pages</a></li>
			<li class="breadcrumb-item active text-white">Checkout</li>
		</ol>
	</div>
	<!-- Single Page Header End -->


	<!-- Checkout Page Start -->
	<div class="container-fluid py-5">
		<div class="container py-5">
			<h1 class="mb-4">Chi tiết thanh toán</h1>
			<form action="#">
				<div class="row g-5">
					<div class="col-md-12 col-lg-6 col-xl-7">
						<div class="row">
							<div class="col-md-12 col-lg-6">
								<div class="form-item w-100">
									<label class="form-label my-3">Tên<sup>*</sup></label> <input
										type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-12 col-lg-6">
								<div class="form-item w-100">
									<label class="form-label my-3">Họ<sup>*</sup></label> <input
										type="text" class="form-control">
								</div>
							</div>
						</div>
						<div class="form-item">
							<label class="form-label my-3">Tên công ty<sup>*</sup></label> <input
								type="text" class="form-control">
						</div>
						<div class="form-item">
							<label class="form-label my-3">Địa chỉ <sup>*</sup></label> <input
								type="text" class="form-control" placeholder="">
						</div>
						<div class="form-item">
							<label class="form-label my-3">Quốc gia<sup>*</sup></label> <input
								type="text" class="form-control">
						</div>
						<div class="form-item">
							<label class="form-label my-3">Mã bưu<sup>*</sup></label> <input
								type="text" class="form-control">
						</div>
						<div class="form-item">
							<label class="form-label my-3">Số điện thoại<sup>*</sup></label>
							<input type="tel" class="form-control">
						</div>
						<div class="form-item">
							<label class="form-label my-3">Email<sup>*</sup></label> <input
								type="email" class="form-control">
						</div>
						<div class="form-check my-3">
							<input type="checkbox" class="form-check-input" id="Account-1"
								name="Accounts" value="Accounts"> <label
								class="form-check-label" for="Account-1">Tạo tài khoản?</label>
						</div>
						<hr>
						<div class="form-check my-3">
							<input class="form-check-input" type="checkbox" id="Address-1"
								name="Address" value="Address"> <label
								class="form-check-label" for="Address-1">Đã có tài khoản
								?</label>
						</div>
						<div class="form-item">
							<textarea name="text" class="form-control" spellcheck="false"
								cols="30" rows="11" placeholder="Oreder Notes (Optional)"></textarea>
						</div>
					</div>
					<div class="col-md-12 col-lg-6 col-xl-5">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Sản phẩm</th>
										<th scope="col">Tên</th>
										<th scope="col">Giá</th>
										<th scope="col">Số lượng</th>
										<th scope="col">Tổng</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
											<div class="d-flex align-items-center mt-2">
												<img src="img/anhthuoc1.webp"
													class="img-fluid rounded-circle"
													style="width: 90px; height: 90px;" alt="">
											</div>
										</th>
										<td class="py-5">Viên uống Glucosamine</td>
										<td class="py-5">768.000đ/hộp</td>
										<td class="py-5">2</td>
										<td class="py-5">1.500.000đ</td>
									</tr>
									<tr>
										<th scope="row">
											<div class="d-flex align-items-center mt-2">
												<img src="img/anhthuoc2.webp"
													class="img-fluid rounded-circle"
													style="width: 90px; height: 90px;" alt="">
											</div>
										</th>
										<td class="py-5">Viên uống Glucosamine</td>
										<td class="py-5">768.000đ/hộp</td>
										<td class="py-5">2</td>
										<td class="py-5">1.500.000đ</td>
									</tr>
									<tr>
										<th scope="row">
											<div class="d-flex align-items-center mt-2">
												<img src="img/anhthuoc3.webp"
													class="img-fluid rounded-circle"
													style="width: 90px; height: 90px;" alt="">
											</div>
										</th>
										<td class="py-5">Viên uống Glucosamine</td>
										<td class="py-5">768.000đ/hộp</td>
										<td class="py-5">2</td>
										<td class="py-5">1.500.000đ</td>
									</tr>
									<tr>
										<th scope="row"></th>
										<td class="py-5"></td>
										<td class="py-5"></td>
										<td class="py-5">
											<p class="mb-0 text-dark py-3">Subtotal</p>
										</td>
										<td class="py-5">
											<div class="py-3 border-bottom border-top">
												<p class="mb-0 text-dark">3.500.000đ</p>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row"></th>
										<td class="py-5">
											<p class="mb-0 text-dark py-4">Mã giảm giá</p>
										</td>
										<td colspan="3" class="py-5">
											<div class="form-check text-start">
												<input type="checkbox"
													class="form-check-input bg-primary border-0"
													id="Shipping-1" name="Shipping-1" value="Shipping">
												<label class="form-check-label" for="Shipping-1">Miễn
													phí vận chuyển</label>
											</div>
											<div class="form-check text-start">
												<input type="checkbox"
													class="form-check-input bg-primary border-0"
													id="Shipping-2" name="Shipping-1" value="Shipping">
												<label class="form-check-label" for="Shipping-2">Mã
													đã áp dụng: $15.00</label>
											</div>
											<div class="form-check text-start">
												<input type="checkbox"
													class="form-check-input bg-primary border-0"
													id="Shipping-3" name="Shipping-1" value="Shipping">
												<label class="form-check-label" for="Shipping-3">Tổng
													số tiền : $8.00</label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row"></th>
										<td class="py-5">
											<p class="mb-0 text-dark text-uppercase py-3">TOTAL</p>
										</td>
										<td class="py-5"></td>
										<td class="py-5"></td>
										<td class="py-5">
											<div class="py-3 border-bottom border-top">
												<p class="mb-0 text-dark">$135.00</p>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div
							class="row g-4 text-center align-items-center justify-content-center border-bottom py-3">
							<div class="col-12">
								<div class="form-check text-start my-3">
									<input type="checkbox"
										class="form-check-input bg-primary border-0" id="Payments-1"
										name="Payments" value="Payments"> <label
										class="form-check-label" for="Payments-1">Check
										Payments</label>
								</div>
							</div>
						</div>
						<div
							class="row g-4 text-center align-items-center justify-content-center border-bottom py-3">
							<div class="col-12">
								<div class="form-check text-start my-3">
									<input type="checkbox"
										class="form-check-input bg-primary border-0" id="Delivery-1"
										name="Delivery" value="Delivery"> <label
										class="form-check-label" for="Delivery-1">Cash On
										Delivery</label>
								</div>
							</div>
						</div>
						<div
							class="row g-4 text-center align-items-center justify-content-center border-bottom py-3">
							<div class="col-12">
								<div class="form-check text-start my-3">
									<input type="checkbox"
										class="form-check-input bg-primary border-0" id="Paypal-1"
										name="Paypal" value="Paypal"> <label
										class="form-check-label" for="Paypal-1">Paypal</label>
								</div>
							</div>
						</div>
						<div
							class="row g-4 text-center align-items-center justify-content-center pt-4">
							<button type="button"
								class="btn border-secondary py-3 px-4 text-uppercase w-100 text-primary">Place
								Order</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>