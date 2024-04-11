<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>

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


	<div class="container " style="padding-top: 100px;">

		<div class=" row mt-5  ">

			<!-- san pham ban chay 1 -->
			<div class="col-lg-7 col-md-12 col-sm-12 col-12 "
				style="height: 100%;">
				<div class="imgg-wrap h-200">
					<div class="content h-200">

						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
							</div>
							<div class="carousel-inner rounded-1">
								<div class="carousel-item active">

									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/828x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/Banner_Web_PC_1610x492_460a8cbf22.png"
										class="img-fluid d-block " alt="" style="height: 300px;">
								</div>
								<div class="carousel-item">

									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/828x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/Banner_Web_PC_1610x492_6_d5e8587d08.png"
										class="img-fluid d-block w-100" alt="" style="height: 300px;">
								</div>
								<div class="carousel-item">

									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/828x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/1610x492_4bd9947007.jpg"
										class="img-fluid d-block w-100" alt="" style="height: 300px;">
								</div>
								<div class="carousel-item">

									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/828x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/Banner_Web_ff9321f8bb.jpg"
										class="img-fluid d-block w-100" alt="" style="height: 300px;">
								</div>
								<div class="carousel-item">

									<img
										src="https://cdn.nhathuoclongchau.com.vn/unsafe/828x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/1610x492_banner_desktop_dcd882dd4c.png"
										class="img-fluid d-block w-100" alt="" style="height: 300px;">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="row">
					<div class="col-md-2 col-lg-12 col-sm-12">
						<div class="featurs-item text-center rounded bg-light ">
							<img
								src="https://cdn.nhathuoclongchau.com.vn/unsafe/391x120/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/Sub_Banner782x240_aa1f39c53b.png"
								alt="" srcset="" class="img-fluid rounded-1"
								style="width: 100%;">
						</div>

						<!---------------1------------------->
					</div>

					<div class="col-md-2 col-lg-4 col-sm-4 pt-3 ">
						<div class="featurs-item text-center rounded bg-light py-4">

							<img
								src="https://cdn.nhathuoclongchau.com.vn/unsafe/40x40/https://cms-prod.s3-sgn09.fptcloud.com/smalls/can_mua_thuoc_40x40_3x_59367d7177.png"
								alt="" srcset="">

							<div class="featurs-content text-center ">
								<h5>Mua thuốc</h5>

							</div>
						</div>
					</div>
					<div class="col-md-2 col-lg-4 col-sm-4 pt-3">
						<div class="featurs-item text-center rounded bg-light py-4">
							<img
								src="https://cdn.nhathuoclongchau.com.vn/unsafe/40x40/https://cms-prod.s3-sgn09.fptcloud.com/smalls/tu_van_voi_duoc_sy_40x40_3x_aaa988a1a2.png"
								alt="" srcset="">
							<div class="featurs-content text-center">
								<h5>Tư vấn</h5>

							</div>
						</div>
					</div>
					<div class="col-md-2 col-lg-4 col-sm-4 pt-3">
						<div class="featurs-item text-center rounded bg-light py-4">
							<img
								src="https://cdn.nhathuoclongchau.com.vn/unsafe/40x40/https://cms-prod.s3-sgn09.fptcloud.com/smalls/tim_nha_thuoc_gan_day_40x40_3x_a116d4c818.png"
								alt="">
							<div class="featurs-content text-center ">
								<h5>Tìm nhà thuốc</h5>

							</div>
						</div>
					</div>

				</div>
			</div>
		</div>


		<div class="col-lg-12 mt-3 mb-4 rounded-1"
			style="background-color: #FCF3E8;">
			<div class="container">
				<div class="row justify-content-center align-items-center mb-4">
					<div class="col-12 col-md-auto position-relative">
						<img
							src="https://cdn.nhathuoclongchau.com.vn/unsafe/320x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/smalls/san_pham_ban_chay_website_320x41_3x_88c599649c.png"
							alt="" class="img-fluid">
						<div
							class="position-absolute top-50 start-50 translate-middle text-white "
							style="font-weight: 100;">Sản phẩm bán chạy</div>
					</div>
				</div>
			</div>


			<div class="row g-4 justify-content-center">
				<c:forEach var="user" items="${ListSP}">
					<div class=" col-md-6 col-6 col-xl-2 rounded-bottom ">
						<div
							class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
							style="background-color: #FFFFFF;">
							<div class="fruite-img">
								<%-- <a
									href="/NhapASM_ShopThuoc/sanPhamChiTietController?id=${user.idThuoc}"><img
									src="${user.hinh}" class="img-fluid w-100 rounded-top" alt=""></a> --%>
								<%-- <a
									href="/BanNhapASMThuoc/sanPhamChiTietController?id=${user.idThuoc}">
									<img src="${user.hinh}" class="img-fluid w-100 rounded-top"
									alt="">
								</a> --%>

								<c:if
									test="${fn:startsWith(user.hinh, 'https://cdn.nhathuoclongchau.com.vn/unsafe/')}">
									<a
										href="/NhapASM_ShopThuoc/sanPhamChiTietController?id=${user.idThuoc}"><img
										src="${user.hinh}" class="img-fluid w-100 rounded-top" alt=""></a>

								</c:if>

								<!-- Nếu không, hiển thị hình ảnh từ đường dẫn cố định -->
								<c:if
									test="${not fn:startsWith(user.hinh, 'https://cdn.nhathuoclongchau.com.vn/unsafe/')}">

									<a
										href="/NhapASM_ShopThuoc/sanPhamChiTietController?id=${user.idThuoc}"><img
										src="<c:url value='/template/web/img/${user.hinh}' />"
										class="img-fluid w-100 rounded-top" alt=""></a>


								</c:if>

							</div>

							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<div class="p-2 ms-3">
								<h6 style="font-weight: bold;">${user.ten}</h6>
								<h6 class="text-truncate">${user.congDung}</h6>
								<div
									class="d-flex justify-content-between flex-lg-wrap align-items-center">

									<div class=" justify-content-between flex-lg-wrap ">
										<label class=""
											style="font-size: 15px; font-weight: bold; color: #3153DC;">${user.gia}đ/Hộp</label>
										<p class="text-decoration-line-through  "
											style="font-size: 13px; color: black;">2.235.000đ /Hộp</p>
										<p class=" rounded-pill px-4"
											style="font-size: 13px; color: black; background-color: #EDF0F3;">
											Hộp lớn</p>
									</div>


								</div>

								<a href="/NhapASM_ShopThuoc/addToCart1?id=${user.idThuoc}"
									class="btn border border-info rounded-pill px-1 text-info me-3"
									style="font-size: 15px; display: block; margin: 0 auto;"><i
									class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>



							</div>
						</div>

					</div>
				</c:forEach>


			</div>

		</div>



		<div class="container-fluid mt-3">
			<div class="container">
				<div class="p-4 rounded" style="background-color: #2C6DD6">
					<div class="col-md-12  ">
						<label for=""
							style="font-size: 30px; font-weight: bold; color: #FFFFFF;">Kiểm
							tra sức khỏe </label> <br> <label for=""
							style="font-size: 18px; font-weight: bold; color: #FFFFFF;">Kết
							quả đánh giá sẽ cho bạn lời khuyên xử trí phù hợp!</label>

					</div>
					<div class="row justify-content-center mt-2"
						style="background-color: #2C6DD6">

						<div class="col-md-3 mb-2">
							<div class="counter bg-white rounded ">
								<img
									src="https://cdn.nhathuoclongchau.com.vn/unsafe/80x80/https://cms-prod.s3-sgn09.fptcloud.com/smalls/tim_mach_43be20993d.png"
									alt="" class="img-fluid w-25 rounded-top">
								<h4 style="color: gray;">Kiểm tra nguy cơ mắc bệnh tim mạch</h4>

							</div>
						</div>

						<div class="col-md-3 mb-2">
							<div class="counter bg-white rounded ">
								<img
									src="https://cdn.nhathuoclongchau.com.vn/unsafe/80x80/https://cms-prod.s3-sgn09.fptcloud.com/smalls/sa_sut_tri_tue_73b6b51a85.png"
									alt="" class="img-fluid w-25 rounded-top">
								<h4 style="color: gray;">Hãy ngủ đủ giấc để giúp trí não
									luôn khỏe</h4>

							</div>
						</div>
						<div class="col-md-3 ">
							<div class="counter bg-white rounded ">
								<img
									src="https://cdn.nhathuoclongchau.com.vn/unsafe/80x80/https://cms-prod.s3-sgn09.fptcloud.com/smalls/da_day_24ef495d10.png"
									alt="" class="img-fluid w-25 rounded-top">
								<h4 style="color: gray;">Hãy kiểm tra đường ruột ít nhất 6
									tháng 1 lần</h4>

							</div>
						</div>
						<div class="col-md-3">
							<div class=" ">
								<img
									src="https://nhathuoclongchau.com.vn/estore-images/home/heath/heath-check.png"
									alt="" class="img-fluid">

							</div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 20px;">
					<c:forEach var="user" items="${ListSP2}">
						<div class="col-md-3 py-3 py-md-0">
							<div class="product-card-wrapper">
								<div class="card">
									<div
										class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
										style="top: 0px; left: 0px;">-20%</div>
									<c:if
									test="${fn:startsWith(user.hinh, 'https://cdn.nhathuoclongchau.com.vn/unsafe/')}">
									<a
										href="/NhapASM_ShopThuoc/sanPhamChiTietController?id=${user.idThuoc}"><img
										src="${user.hinh}" class="img-fluid w-100 rounded-top" alt=""></a>

								</c:if>

								<!-- Nếu không, hiển thị hình ảnh từ đường dẫn cố định -->
								<c:if
									test="${not fn:startsWith(user.hinh, 'https://cdn.nhathuoclongchau.com.vn/unsafe/')}">

									<a
										href="/NhapASM_ShopThuoc/sanPhamChiTietController?id=${user.idThuoc}"><img
										src="<c:url value='/template/web/img/${user.hinh}' />"
										class="img-fluid w-100 rounded-top" alt=""></a>


								</c:if>
									
									<div class="card-body">
										<div class="slider-product-one-content-item-text">
											<li><img
												src="<c:url value='/template/web/img/icon1.webp' />" alt="">
												<p>Giảm sốc</p></li>
											<li>${user.ten}</li>
											<li><span style="color: blue;">${user.gia}<sup>đ</sup>/Hộp
											</span> <del>
													99.000<sup>đ</sup>
												</del></li> <a href="/NhapASM_ShopThuoc/addToCart1?id=${user.idThuoc}"
												class="btn border rounded-pill px-1 me-3"
												style="font-size: 15px; display: block; margin: 0 auto; background: #3153DC; color: white;"><i
												class="fa fa-shopping-bag  "></i> Thêm giỏ thuốc</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>


			<!-- Bestsaler Product End -->
			<div class="container mt-5" id="product-cards">
				<div class="col-md-12">
					<div class="product-gallery-one-content-title">
						<h2 class="text-center">Hỗ trợ sinh lý, nội tiết</h2>
						<ul>
							<li><a href="">Hỗ trợ sinh lý</a></li>
							<li><a href="">Làm đẹp giảm cân</a></li>
							<li><a href="">An toàn tình dục</a></li>
							<li><a href="">Chăm sóc vùng kín</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/nuoc.webp' />" alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text1">
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/nuoc1.webp' />" alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text1">
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/nuoc2.webp' />" alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text1">
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/nuoc3.webp' />" alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text1">
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<button class="btn btn-primary btn-dark d-block mx-auto px-4 my-2"
				type="button"
				style="display: block; margin: 0 auto; background-color: #3153DC;">
				Xem tất cả Hỗ trợ sinh lý ></button>



			<!---------------------------------------------------------->
			<div class="container mt-5" id="product-cards">
				<div class="col-md-12">
					<div class="product-gallery-one-content-title">
						<h2>Dược mỹ phẩm chính hãng</h2>
						<ul>
							<li><a href="">Nổi bật</a></li>
							<li><a href="">Làm sạch da</a></li>
							<li><a href="">Trị liệu da</a></li>
							<li><a href="">Dưỡng da</a></li>
							<li><a href="">Chống nắng</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/srm1.webp' />" alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Giảm sốc</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/anhthuoc2.webp' />"
								alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Giảm sốc</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/srm3.webp' />" alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Giảm sốc</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='/template/web/img/srm4.webp' />" alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Giảm sốc</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!----------------------------------------------------->
			<button class="btn btn-primary btn-dark d-block mx-auto px-4 my-2"
				type="button"
				style="display: block; margin: 0 auto; background-color: #3153DC;">
				Xem tất cả Hỗ trợ sinh lý ></button>

			<!----------------------sản phẩm khác---------------------------------------->
			<div class="container mt-5" id="product-cards">
				<div class="col-md-12">
					<div class="product-gallery-one-content-title">
						<h2>Sản phẩm khác</h2>
						<ul>
							<li><a href="">Nổi bật</a></li>
							<li><a href="">Sữa dinh dưỡng</a></li>
							<li><a href="">Trang thiết bị y tế</a></li>
							<li><a href="">Chăm sóc cá nhân</a></li>
							<li><a href="">Chăm sóc trẻ em</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='template/web/img/sanpham1.webp' />"
								alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Deal Sốc Online</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='template/web/img/sanpham2.webp' />"
								alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Deal Sốc Online</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='template/web/img/sanpham3.webp' />"
								alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Deal Sốc Online</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 py-3 py-md-0">
						<div class="card">
							<div
								class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
								style="top: 0px; left: 0px;">-20%</div>
							<img src="<c:url value='template/web/img/sanpham4.webp' />"
								alt="">
							<div class="card-body">
								<div class="slider-product-one-content-item-text">
									<li><img
										src="<c:url value='/template/web/img/icon1.webp' />" alt="">
										<p>Deal Sốc Online</p></li>
									<li>Nước súc miệng Listerine Cool Mint giúp hơi thở thơm
										mát</li>
									<li><span style="color: blue;">56.400<sup>đ</sup>/Hộp
									</span> <del>
											99.000<sup>đ</sup>
										</del></li>
									<button type="submit" class="btn btn-primary btn-dark"
										style="display: block; margin: 0 auto; background-color: #3153DC;">Thêm
										vào giỏ thuốc</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--------------------------------sản phẩm khác----------------------------------------------->
			<button class="btn btn-primary btn-dark d-block mx-auto px-4 my-2"
				type="button"
				style="display: block; margin: 0 auto; background-color: #3153DC;">
				Xem tất cả Hỗ trợ sinh lý ></button>

			<div class="container">
				<div class="bg-light px-2 rounded mt-3">
					<div class="row  justify-content-center">
						<div class="col-md-4 col-lg-4 col-xl-4 h-300">
							<div class="counter bg-white rounded">
								<img
									src="https://cdn.nhathuoclongchau.com.vn/unsafe/860x456/https://s3-sgn09.fptcloud.com/cms-prod/PAP_04033_1_28629844e7.jpg"
									alt="" srcset=" " class="img-fluid rounded-1"
									style="width: 100%; height: 200px;"> <span
									class="badge bg-secondary">Truyền thông</span>

								<h6>FPT Long Châu tiên phong mang thuốc điều trị thế hệ mới
									đến người bệnh phổi tắc nghẽn mạn tính</h6>

							</div>
						</div>
						<div class="col-md-4 col-lg-4 col-xl-4">
							<div class="row">
								<div class=" bg-white rounded">
									<div class="row ">

										<div class="col-sm-4 ps-0 ">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/226x126/https://s3-sgn09.fptcloud.com/cms-prod/PAP_00020_50a7a98cb1.JPG"
												alt="" srcset=" " class=" rounded-1"
												style="height: 98px; width: 100%;">
										</div>
										<div class="col-sm-8 py-0">
											<span class="badge bg-secondary" style="font-size: 10px;">Tin
												tức & Sự kiện</span>
											<h6 class=" multi-line " style="">Dược sĩ Long Châu tham
												gia chương trình đào tạo toàn cầu cùng Boehringer Ingelheim</h6>
											<p style="font-size: 12px;">1 tuần trước</p>
										</div>
									</div>
								</div>
								<div class=" bg-white rounded">
									<div class="row ">

										<div class="col-sm-4 ps-0">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/226x126/https://s3-sgn09.fptcloud.com/cms-prod/PAP_017861_3dc3806de8.jpg"
												alt="" srcset=" " class=" rounded-1"
												style="height: 98px; width: 100%;">
										</div>
										<div class="col-sm-8 py-0">
											<span class="badge bg-secondary" style="font-size: 10px;">Tin
												tức & Sự kiện</span>
											<h6 class=" multi-line " style="">FPT Long Châu hợp tác
												chiến lược với Tập đoàn IHH Healthcare Singapore để đưa y
												học tiên tiến đến gần hơn với người Việt</h6>
											<p style="font-size: 12px;">1 tuần trước</p>
										</div>
									</div>
								</div>
								<div class=" bg-white rounded">
									<div class="row ">

										<div class="col-sm-4   ps-0">
											<img
												src="https://cdn.tgdd.vn/News/Thumb/0/dau-xanh-co-giai-doc-gan-khong-7-cach-giai-docthumb-1200x628.jpg"
												alt="" srcset=" " class=" rounded-1"
												style="height: 98px; width: 100%;">
										</div>
										<div class="col-sm-8  py-0 ">
											<span class="badge bg-secondary" style="font-size: 10px;">Sức
												khoẻ</span>
											<h6 class=" multi-line " style="">
												Đậu xanh có giải độc gan không? 7 cách nấu nước đậu xanh
												giải độc gan/h6>
												<p style="font-size: 12px;">1 tuần trước</p>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="col-md-4 col-lg-4 col-xl-4px-3 ">
							<div class="row">
								<div class=" bg-white rounded">
									<div class="row ">

										<div class="col-sm-4   ps-0">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/226x126/https://s3-sgn09.fptcloud.com/cms-prod/PAP_00020_50a7a98cb1.JPG"
												alt="" srcset=" " class=" rounded-1"
												style="height: 98px; width: 100%;">
										</div>
										<div class="col-sm-8  py-0 ">
											<span class="badge bg-secondary" style="font-size: 10px;">Tin
												tức & Sự kiện</span>
											<h6 class=" multi-line " style="">Dược sĩ Long Châu tham
												gia chương trình đào tạo toàn cầu cùng Boehringer Ingelheim</h6>
											<p style="font-size: 12px;">1 tuần trước</p>
										</div>
									</div>
								</div>
								<div class=" bg-white rounded">
									<div class="row ">

										<div class="col-sm-4   ps-0">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/226x126/https://s3-sgn09.fptcloud.com/cms-prod/PAP_017861_3dc3806de8.jpg"
												alt="" srcset=" " class=" rounded-1"
												style="height: 98px; width: 100%;">
										</div>
										<div class="col-sm-8  py-0 ">
											<span class="badge bg-secondary" style="font-size: 10px;">Tin
												tức & Sự kiện</span>
											<h6 class=" multi-line " style="">FPT Long Châu hợp tác
												chiến lược với Tập đoàn IHH Healthcare Singapore để đưa y
												học tiên tiến đến gần hơn với người Việt</h6>
											<p style="font-size: 12px;">1 tuần trước</p>
										</div>
									</div>
								</div>
								<div class=" bg-white rounded">
									<div class="row ">

										<div class="col-sm-4   ps-0">
											<img
												src="https://cdn.tgdd.vn/News/Thumb/0/dau-xanh-co-giai-doc-gan-khong-7-cach-giai-docthumb-1200x628.jpg"
												alt="" srcset=" " class=" rounded-1"
												style="height: 98px; width: 100%;">
										</div>
										<div class="col-sm-8 py-0 ">
											<span class="badge bg-secondary" style="font-size: 10px;">Sức
												khoẻ</span>
											<h6 class=" multi-line " style="">
												Đậu xanh có giải độc gan không? 7 cách nấu nước đậu xanh
												giải độc gan/h6>
												<p style="font-size: 12px;">1 tuần trước</p>
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

	<%@ include file="/common/web/footer.jsp"%>
</body>
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

