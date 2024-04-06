<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
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
<link href="<c:url value='/template/web/css/style1.css'/>"
	rel="stylesheet">

<style>
.multi-line {
	max-height: 3em;
	/* Độ cao tối đa là 3 dòng (tùy chỉnh theo nhu cầu) */
	overflow: hidden;
	text-overflow: ellipsis;
	/* Hiển thị dấu chấm (...) khi văn bản bị cắt */
	display: -webkit-box;
	-webkit-line-clamp: 2;
	/* Số dòng tối đa */
	-webkit-box-orient: vertical;
}
</style>
</head>
<body>

<%@ include file="/common/web/header.jsp"%>
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">Shop Detail</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Pages</a></li>
			<li class="breadcrumb-item active text-white">Shop Detail</li>
		</ol>
	</div>
	<!-- Single Page Header End -->


	<!-- Single Product Start -->
	<div class="container-fluid py-5 mt-5">
		<div class="container py-5">
			<div class="row g-4 mb-5">
				<div class="col-lg-8 col-xl-9">
					<div class="row g-4">
						<div class="col-lg-6">
							<div class="border rounded">
								<a href="#"> <img
									src="${thuoc.hinh}"
									class="img-fluid rounded" alt="Image">
								</a>
							</div>
						</div>
						<div class="col-lg-6">
							<h4 class="fw-bold mb-3">Viên uống Glucosamine And
								Chondroitin Jpanwell hỗ trợ bổ sung chất nhờn dịch khớp (120
								viên)</h4>
							<p class="mb-3">Danh muc: Cơ xương khớp</p>
							<div class="content_recoment d-flex justify-content-around">
								<p style="font: bold;">00032918</p>
								<div class="d-flex mb-4">
									<i class="fa fa-star text-secondary"></i> <i
										class="fa fa-star text-secondary"></i> <i
										class="fa fa-star text-secondary"></i> <i
										class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
								</div>
								<a href="">32 đánh giá</a> <a href="">272 bình luận</a>
							</div>
							<h5 class="fw-bold mb-3" style="display: flex;">
								768.000đ /
								<p>Hộp</p>
							</h5>
							<h5 class="text-decoration-line-through">960.000đ</h5>

							<p class="mb-4">TGlucosamine And Chondroitin JpanWell hỗ trợ
								bổ sung chất nhờn dịch khớp, giúp khớp vận động linh hoạt, hỗ
								trợ giảm đau khớp, khô khớp do viêm khớp và thoái hóa khớp.</p>
							<p class="mb-4">Canxi từ vỏ sò, Glucosamine, Collagen,
								Chondroitin, Collagen type II, Hyaluronic acid, Vitamin B12,
								Vitamin B1, Elastin</p>
							<div class="input-group quantity " style="width:160px;">
								<div class="input-group-btn">
									<button
										class="btn btn-sm btn-minus rounded-circle bg-light border">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<input type="text"
									class="form-control form-control-sm text-center border-0"
									value="1" style="width: 60px">
								<div class="input-group-btn">
									<button
										class="btn btn-sm btn-plus rounded-circle bg-light border">
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>
							<a href="#"
								class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"
								style="background-color: #2167dd;"><i
								class="fa fa-shopping-bag me-2 "></i> Add to cart</a>
						</div>
						<div class="col-lg-12">
							<nav>
								<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
									<button
										class="nav-link text-secondary border-white border-bottom-0 active"
										id="nav-mota-tab" data-bs-toggle="tab"
										data-bs-target="#nav-mota" aria-controls="nav-mota"
										aria-selected="true">Mô Tả</button>
									<button
										class="nav-link text-secondary border-white border-bottom-0"
										id="nav-thanhphan-tab" data-bs-toggle="tab"
										data-bs-target="#nav-thanhphan" aria-controls="nav-thanhphan"
										aria-selected="false">Thành Phần</button>
									<button
										class="nav-link text-secondary border-white border-bottom-0"
										id="nav-about-tab" data-bs-toggle="tab"
										data-bs-target="#nav-about" aria-controls="nav-about"
										aria-selected="false">Công Dụng</button>
									<button
										class="nav-link text-secondary border-white border-bottom-0"
										id="nav-mission-tab" data-bs-toggle="tab"
										data-bs-target="#nav-mission" aria-controls="nav-mission"
										aria-selected="false">Cách Dùng</button>
									<button
										class="nav-link text-secondary border-white border-bottom-0"
										id="nav-tacdungphu-tab" data-bs-toggle="tab"
										data-bs-target="#nav-tacdungphu"
										aria-controls="nav-tacdungphu" aria-selected="false">Tác
										dụng phụ</button>
									<button
										class="nav-link text-secondary border-white border-bottom-0"
										id="nav-luuy-tab" data-bs-toggle="tab"
										data-bs-target="#nav-luuy" aria-controls="nav-luuy"
										aria-selected="false">Lưu ý</button>
									<button
										class="nav-link text-secondary border-white border-bottom-0"
										id="nav-baoquan-tab" data-bs-toggle="tab"
										data-bs-target="#nav-baoquan" aria-controls="nav-baoquan"
										aria-selected="false">Bảo quản</button>
								</div>
							</nav>
							<div class="tab-content mb-5" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-mota"
									role="tabpanel" aria-labelledby="nav-mota-tab">
									<h3>Viên uống Glucosamine And Chondroitin là gì?</h3>
									<h6>Tăng cường dưỡng chất giúp xương khớp chắc khỏe</h6>
									<p>Glucosamine And Chondroitin với các hoạt chất chuyên
										biệt giúp tăng sức mạnh của hệ thống cơ xương khớp, phòng ngừa
										loãng xương, thoái hóa khớp và nâng cao chất lượng cuộc sống ở
										những người mắc bệnh lý về xương khớp. Sản phẩm được sản xuất
										tại Nhật Bản và là một trong những TPCN có hàm lượng
										glucosamine cao nhất.</p>
									<img
										src="${thuoc.hinh}"
										class="img-fluid" alt="">
								</div>
								<div class="tab-pane fade" id="nav-thanhphan" role="tabpanel"
									aria-labelledby="nav-thanhphan-tab">
									<h3>Thành Phần của Viên uống Glucosamine And Chondroitin</h3>
									<h6>Thành phần cho 4 viên</h6>
									<div class="px-2">
										<div class="row g-4">
											<div class="col-6">
												<div
													class="row bg-light align-items-center text-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Thông tin thành phần</p>
													</div>
													<div class="col-6">
														<p class="mb-0">Hàm lượng</p>
													</div>
												</div>
												<div
													class="row text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Canxi từ vỏ sò</p>
													</div>
													<div class="col-6">
														<p class="mb-0">1600mg</p>
													</div>
												</div>
												<div
													class="row  text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Collagen</p>
													</div>
													<div class="col-6">
														<p class="mb-0">100mg</p>
													</div>
												</div>
												<div
													class="row text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Chondroitin</p>
													</div>
													<div class="col-6">
														<p class="mb-0">31.6mg</p>
													</div>
												</div>
												<div
													class="row  text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Collagen type II</p>
													</div>
													<div class="col-6">
														<p class="mb-0">12mg</p>
													</div>
												</div>
												<div
													class="row  text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Hyaluronic acid</p>
													</div>
													<div class="col-6">
														<p class="mb-0">4mg</p>
													</div>
												</div>
												<div
													class="row  text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Vitamin B12</p>
													</div>
													<div class="col-6">
														<p class="mb-0">2.08mg</p>
													</div>
												</div>
												<div
													class="row text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Vitamin B1</p>
													</div>
													<div class="col-6">
														<p class="mb-0">2.08mg</p>
													</div>
												</div>
												<div
													class="row  text-center align-items-center justify-content-center py-2">
													<div class="col-6">
														<p class="mb-0">Elastin</p>
													</div>
													<div class="col-6">
														<p class="mb-0">2mg</p>
													</div>
												</div>
												<!-- Thêm các thành phần khác tại đây -->
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="nav-about" role="tabpanel"
									aria-labelledby="nav-about-tab">
									<h3>Công dụng của Viên uống Glucosamine And Chondroiti</h3>
									<p style="font-size: 20px;">Glucosamine And Chondroitin
										JpanWell hỗ trợ bổ sung chất nhờn dịch khớp, giúp khớp vận
										động linh hoạt. Hỗ trợ giảm đau khớp, khô khớp do viêm khớp và
										thoái hóa khớp.</p>
								</div>
								<div class="tab-pane fade" id="nav-mission" role="tabpanel"
									aria-labelledby="nav-mission-tab">
									<h3>Cách dùng Viên uống Glucosamine And Chondroitin</h3>
									<h6>Cách dùng</h6>
									<p style="font-size: 20px;">Uống 4 viên/ngày với nước nguội
										hoặc nước ấm.</p>
									<h6>Đối tượng sử dụng</h6>
									<p style="font-size: 20px;">Glucosamine And Chondroitin
										JpanWell dùng cho người trưởng thành bị viêm khớp, thoái hóa
										khop</p>
								</div>
								<div class="tab-pane fade" id="nav-tacdungphu" role="tabpanel"
									aria-labelledby="nav-tacdungphu-tab">
									<h3>Tác dụng phụ</h3>
									<p style="font-size: 20px;">Chưa có thông tin về tác dụng
										phụ của sản phẩm.</p>
								</div>
								<div class="tab-pane fade" id="nav-luuy" role="tabpanel"
									aria-labelledby="nav-luuy-tab">
									<h6>
										Lưu ý: <br> Không sử dụng cho người mẫn cảm với bất kỳ
										thành phần nào của sản phẩm. Sản phẩm này không phải là thuốc
										và không có tác dụng thay thế thuốc chữa bệnh. Đọc kỹ hướng
										dẫn sử dụng trước khi dùng.
									</h6>
								</div>
								<div class="tab-pane fade" id="nav-baoquan" role="tabpanel"
									aria-labelledby="nav-baoquan-tab">
									<h3>Bảo quản</h3>
									<ps style="font-size: 20px;"> Bảo quản nơi khô ráo, thoáng
									mát, nhiệt độ dưới 30 độ C.
									</p>
									<ps style="font-size: 20px;">Để xa tầm tay trẻ em.
									</p>
								</div>
							</div>
						</div>

						<form action="#">
							<h4 class="mb-5 fw-bold">Leave a Reply</h4>
							<div class="row g-4">
								<div class="col-lg-6">
									<div class="border-bottom rounded">
										<input type="text" class="form-control border-0 me-4"
											placeholder="Yur Name *">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="border-bottom rounded">
										<input type="email" class="form-control border-0"
											placeholder="Your Email *">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="border-bottom rounded my-4">
										<textarea name="" id="" class="form-control border-0"
											cols="30" rows="8" placeholder="Your Review *"
											spellcheck="false"></textarea>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="d-flex justify-content-between py-3 mb-5">
										<div class="d-flex align-items-center">
											<p class="mb-0 me-3">Please rate:</p>
											<div class="d-flex align-items-center"
												style="font-size: 12px;">
												<i class="fa fa-star text-muted"></i> <i class="fa fa-star"></i>
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i>
											</div>
										</div>
										<a href="#"
											class="btn border border-secondary text-primary rounded-pill px-4 py-3 "
											style="background-color: #2167dd;"> Post Comment</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-4 col-xl-3">
					<div class="row g-4 fruite">
						<div class="col-lg-12">
							<div class="input-group w-100 mx-auto d-flex mb-4">
								<input type="search" class="form-control p-3"
									placeholder="keywords" aria-describedby="search-icon-1">
								<span id="search-icon-1" class="input-group-text p-3"><i
									class="fa fa-search"></i></span>
							</div>
							<div class="mb-4">
								<h4>Categories</h4>
								<ul class="list-unstyled fruite-categorie">
									<li>
										<div class="d-flex justify-content-between fruite-name">
											<a href="#" style="font-size: 20px; color: #2167dd;"><i
												class="fas fa-pills me-2" style="color: coral;"></i> Thực
												phẩm chức năng</a> <span>(3)</span>
										</div>
									</li>
									<li>
										<div class="d-flex justify-content-between fruite-name">
											<a href="#" style="font-size: 20px; color: #2167dd;""><i
												class="fas fa-pills me-2" style="color: coral;"></i></i>Thực
												phẩm chức năng</a> <span>(5)</span>
										</div>
									</li>
									<li>
										<div class="d-flex justify-content-between fruite-name">
											<a href="#" style="font-size: 20px; color: #2167dd;""><i
												class="fas fa-pills me-2" style="color: coral;"></i></i>chăm sóc
												cá nhân</a> <span>(2)</span>
										</div>
									</li>
									<li>
										<div class="d-flex justify-content-between fruite-name">
											<a href="#" style="font-size: 20px; color: #2167dd;""><i
												class="fas fa-pills me-2" style="color: coral;"></i></i>Thuoc</a> <span>(8)</span>
										</div>
									</li>
									<li>
										<div class="d-flex justify-content-between fruite-name">
											<a href="#" style="font-size: 20px; color: #2167dd;""><i
												class="fas fa-pills me-2" style="color: coral;"></i></i>Thiet Bi
												y
												<template></template></a> <span>(5)</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-12">
							<h4 class="mb-4">Featured products</h4>
							<div class="d-flex align-items-center justify-content-start">
								<div class="rounded" style="width: 100px; height: 100px;">
									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00032918_glucosamine_and_chondroitin_jpanwell_120v_9745_61a5_large_41ffa86dc1.JPG"
										class="img-fluid rounded"
										alt="Viên uống Glucosamine And Chondroitin">
								</div>
								<div>
									<h6 class="mb-2">Viên uống Glucosamine And Chondroitin</h6>
									<div class="d-flex mb-2">
										<i class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
									</div>
									<div class="d-flex mb-2">
										<h5 class="fw-bold me-2">768.000đ</h5>
										<h5 class="text-danger text-decoration-line-through">960.000đ</h5>
									</div>
								</div>
							</div>

							<div class="d-flex align-items-center justify-content-start">
								<div class="rounded" style="width: 100px; height: 100px;">
									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00032918_glucosamine_and_chondroitin_jpanwell_120v_9745_61a5_large_41ffa86dc1.JPG"
										class="img-fluid rounded"
										alt="Viên uống Glucosamine And Chondroitin">
								</div>
								<div>
									<h6 class="mb-2">Viên uống Glucosamine And Chondroitin</h6>
									<div class="d-flex mb-2">
										<i class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
									</div>
									<div class="d-flex mb-2">
										<h5 class="fw-bold me-2">768.000đ</h5>
										<h5 class="text-danger text-decoration-line-through">960.000đ</h5>
									</div>
								</div>
							</div>

							<div class="d-flex align-items-center justify-content-start">
								<div class="rounded" style="width: 100px; height: 100px;">
									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/373x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00032918_glucosamine_and_chondroitin_jpanwell_120v_9745_61a5_large_41ffa86dc1.JPG"
										class="img-fluid rounded"
										alt="Viên uống Glucosamine And Chondroitin">
								</div>
								<div>
									<h6 class="mb-2">Viên uống Glucosamine And Chondroitin</h6>
									<div class="d-flex mb-2">
										<i class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i
											class="fa fa-star text-secondary"></i> <i class="fa fa-star"></i>
									</div>
									<div class="d-flex mb-2">
										<h5 class="fw-bold me-2">768.000đ</h5>
										<h5 class="text-danger text-decoration-line-through">960.000đ</h5>
									</div>
								</div>
							</div>
							<div class="d-flex justify-content-center my-4">
								<a href="#"
									class="btn border border-secondary px-4 py-3 rounded-pill text-primary w-100"
									style="background-color: #2167dd;">View More</a>
							</div>
						</div>

						<div class="col-lg-12">
							<div class="position-relative">
								<img
									src="https://cdn.nhathuoclongchau.com.vn/unsafe/800x0/https://cms-prod.s3-sgn09.fptcloud.com/photo_2024_01_17_13_48_49_72f3cc2bfe.jpg"
									class="img-fluid w-100 rounded" alt="">

							</div>
						</div>
					</div>
				</div>
			</div>
			<h1 class="fw-bold mb-0">Related products</h1>
			<div class="vesitable">
				<div class="owl-carousel vegetable-carousel justify-content-center">
					<div
						class="rounded position-relative fruite-item border border-primary-subtle  rounded-bottom"
						style="background-color: #FFFFFF;">
						<div class="fruite-img">
							<img
								src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/DSC_09218_9f36409f09.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
							style="top: 0px; left: 0px;">-20%</div>
						<div class="p-2 ms-3">
							<h6 style="font-weight: bold;">Tổ yến tinh chế sợi dài Kami
								Nest bổ dưỡng cho hệ tim</h6>
							<h6 class="text-truncate">mạch, tăng cường hệ thống miễn
								dịch (50g)</h6>
							<div
								class="d-flex justify-content-between flex-lg-wrap align-items-center">
								<div class=" justify-content-between flex-lg-wrap">
									<label class=""
										style="font-size: 15px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
									<p class="text-decoration-line-through  "
										style="font-size: 13px; color: black;">2.235.000đ /Hộp</p>
									<p class=" rounded-pill px-4 mt-3"
										style="font-size: 13px; color: black; background-color: #EDF0F3;">
										Hộp lớn</p>
								</div>
							</div>

							<a href="#"
								class="btn border border-info rounded-pill px-1 text-info me-3"
								style="font-size: 15px"><i
								class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>

						</div>
					</div>
					<!-- Add other product items similarly -->
					<!-- Product item 2 -->
					<div
						class="rounded position-relative fruite-item border border-primary-subtle  rounded-bottom"
						style="background-color: #FFFFFF;">
						<div class="fruite-img">
							<img
								src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/DSC_08495_8950475c57.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
							style="top: 0px; left: 0px;">-20%</div>
						<div class="p-2 ms-3">
							<h6 style="font-weight: bold;">Tổ yến tinh chế sợi dài Kami
								Nest bổ dưỡng cho hệ tim</h6>
							<h6 class="text-truncate">mạch, tăng cường hệ thống miễn
								dịch (50g)</h6>
							<div
								class="d-flex justify-content-between flex-lg-wrap align-items-center">
								<div class=" justify-content-between flex-lg-wrap">
									<label class=""
										style="font-size: 15px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
									<p class="text-decoration-line-through  "
										style="font-size: 13px; color: black;">2.235.000đ /Hộp</p>
									<p class=" rounded-pill px-4 mt-3"
										style="font-size: 13px; color: black; background-color: #EDF0F3;">
										Hộp lớn</p>
								</div>
							</div>

							<a href="#"
								class="btn border border-info rounded-pill px-1 text-info me-3"
								style="font-size: 15px"><i
								class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>

						</div>
					</div>
					<!-- Product item 3 -->
					<div
						class="rounded position-relative fruite-item border border-primary-subtle  rounded-bottom"
						style="background-color: #FFFFFF;">
						<div class="fruite-img">
							<img
								src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00500955_tra_nhan_sam_ko_ginseng_royal_tea_10_hop_x_10_goi_2156_62e3_large_100c138c8c.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
							style="top: 0px; left: 0px;">-20%</div>
						<div class="p-2 ms-3">
							<h6 style="font-weight: bold;">Tổ yến tinh chế sợi dài Kami
								Nest bổ dưỡng cho hệ tim</h6>
							<h6 class="text-truncate">mạch, tăng cường hệ thống miễn
								dịch (50g)</h6>
							<div
								class="d-flex justify-content-between flex-lg-wrap align-items-center">
								<div class=" justify-content-between flex-lg-wrap">
									<label class=""
										style="font-size: 15px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
									<p class="text-decoration-line-through  "
										style="font-size: 13px; color: black;">2.235.000đ /Hộp</p>
									<p class=" rounded-pill px-4 mt-3"
										style="font-size: 13px; color: black; background-color: #EDF0F3;">
										Hộp lớn</p>
								</div>
							</div>

							<a href="#"
								class="btn border border-info rounded-pill px-1 text-info me-3"
								style="font-size: 15px"><i
								class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>

						</div>
					</div>
					<!-- Add more product items similarly if needed -->
				</div>
			</div>

		</div>
	</div>
		<%@ include file="/common/web/footer.jsp"%>
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
	

</body>
</html>