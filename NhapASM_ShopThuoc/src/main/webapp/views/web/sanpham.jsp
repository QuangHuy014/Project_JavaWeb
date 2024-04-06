<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản Phẩm</title>


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
	<div class="container-fluid"
		style="padding-top: 100px; padding-bottom: 20px; background-color: #EAEFFB;">
		<div
			class="row col-lg-12 mt-5 justify-content-center align-items-center ">
			<!-- san pham ban chay 1 -->
			<div class="col-lg-3 col-md-12 col-sm-12 col-12 ">
				<div class="col-md-12">
					<div class="counter bg-white rounded ">
						<img
							src="https://cdn.nhathuoclongchau.com.vn/unsafe/301x173/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/icon_noi_dung_san_pham_doi_tuong_4f5363c4ef.png"
							alt="" class="img-fluid w-100 rounded-top">
					</div>
				</div>
			</div>
			<div class="col-lg-8 col-md-12 col-sm-12 col-12 m-2">
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
									<img src="<c:url value='/template/web/img/AnhCara2.PNG'/>"
										class="img-fluid d-block" alt="" style="height: 200px;">
								</div>
								<div class="carousel-item">
									<img src="<c:url value='/template/web/img/AnhCara1.PNG'/>"
										class="img-fluid d-block w-100" alt="" style="height: 200px;">
								</div>
								<div class="carousel-item">
									<img src="<c:url value='/template/web/img/AnhCara3.png'/>"
										class="img-fluid d-block w-100" alt="" style="height: 200px;">
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
			<!--san pham ban chay -->
		</div>
	</div>




	<div class="container-fluid fruite py-5">
		<div class="container ">

			<div class="row g-4 py-3">
				<div class="col-lg-12">

					<div class="row g-4 ">
						<div class="col-lg-3">
							<div class="row g-4">
								<div class="">
									<div class="card">
										<div class="card-header">
											<span style="font-weight: bold; color: black;">BỘ LỌC</span>
											<br> <span style="color: black;">Giúp tìm kiếm
												sản phẩm nhanh hơn</span>
										</div>
										<ul class="list-group list-group-flush">

											<li class="list-group-item mt-2 "><span
												style="font-weight: bold;">Thương hiệu</span> <br> 

												<form class="d-flex mt-2 mb-3"
													action="/BanNhapASMThuoc/sanPhamController" method="get"
													role="search">
													<input class="form-control me-2"
														placeholder="Tìm kiếm theo tên" type="text"
														name="fullname">
													<button>Tìm kiếm</button>
												</form></li>


											<li class="list-group-item"><span
												style="font-weight: bold;">Giá sản phẩm</span> <br>

												<div class="col-sm-12">
													<div class="form-check">
														<input class="form-check-input" type="checkbox"> <label
															class="form-check-label" for="blueCheckbox">Nhỏ
															hơn 100.000Đ</label>
													</div>

												</div>


												<div class="col-sm-12">
													<div class="form-check">
														<input class="form-check-input" type="checkbox"> <label
															class="form-check-label" for="blueCheckbox">100.000Đ
															- 200.000Đ</label>
													</div>

												</div>

												<div class="col-sm-12">
													<div class="form-check">
														<input class="form-check-input" type="checkbox"> <label
															class="form-check-label" for="blueCheckbox">200.000Đ-500.000Đ</label>
													</div>
												</div>
												<div class="col-sm-12">
													<div class="form-check">
														<input class="form-check-input" type="checkbox"> <label
															class="form-check-label" for="blueCheckbox">Trên
															500.000Đ</label>
													</div>
												</div></li>

										</ul>
									</div>
								</div>

								<div class="col-lg-12">
									<div class="mb-3">
										<div class="mt-lg-2">
											<div class="card">
												<div class="card-body" style="color: black;">
													<span class="card-title ms-2 fw-bold "
														style="color: black;">Lứa tuổi</span>
													<div class="row">
														<div class="ms-lg-2">
															<div class="col-sm-12">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox">
																	<label class="form-check-label" for="redCheckbox">Trẻ
																		em</label>
																</div>
															</div>

															<div class="col-sm-12">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox">
																	<label class="form-check-label" for="blueCheckbox">Người
																		trưởng thành</label>
																</div>
															</div>

															<div class="col-sm-12">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox">
																	<label class="form-check-label" for="whiteCheckbox">Người
																		cao tuổi</label>
																</div>
															</div>

															<div class="col-sm-12">
																<div class="form-check">
																	<input class="form-check-input" type="checkbox">
																	<label class="form-check-label" for="yellowCheckbox">Thiếu
																		niên</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-12">
									<h4 class="mb-3">Sản phẩm yêu thích</h4>
									<div
										class="d-flex align-items-center justify-content-start mb-2">
										<div class="rounded me-4" style="width: 100px; height: 100px;">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/256x256/https://cms-prod.s3-sgn09.fptcloud.com/00503128_bao_cao_su_sagami_love_me_gold_vay_tu_y_te_ha_noi_hop_10_cai_6824_63d7_large_7280123f66.jpg"
												class="img-fluid rounded" alt="">
										</div>
										<div>
											<h6 class="mb-2">Safefit Dots Long</h6>
											<div class="d-flex mb-2">
												<i class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="d-flex mb-2">
												<h5 class="fw-bold me-2">200.000Đ</h5>
												<h5 class="text-danger text-decoration-line-through">400.000Đ</h5>
											</div>
										</div>
									</div>
									<div
										class="d-flex align-items-center justify-content-start mb-2">
										<div class="rounded me-4" style="width: 100px; height: 100px;">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/256x256/https://cms-prod.s3-sgn09.fptcloud.com/00500209_bcs_safefit_4in1_s52_3_cai_gan_gai_co_that_keo_dai_thoi_gian_cuc_manh_1668_629d_large_f231596910.jpg"
												class="img-fluid rounded" alt="">
										</div>
										<div>
											<h6 class="mb-2">Safefit Freezer Max S52</h6>
											<div class="d-flex mb-2">
												<i class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="d-flex mb-2">
												<h5 class="fw-bold me-2">150.000Đ</h5>
												<h5 class="text-danger text-decoration-line-through">300.00Đ
												</h5>
											</div>
										</div>
									</div>
									<div class="d-flex align-items-center justify-content-start">
										<div class="rounded me-4" style="width: 100px; height: 100px;">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/256x256/https://cms-prod.s3-sgn09.fptcloud.com/00500212_bcs_safefit_003_s52_12_cai_sieu_mong_nhieu_silicon_1363_62c3_large_e1b8bdcfe7.jpg"
												class="img-fluid rounded" alt="">
										</div>
										<div>
											<h6 class="mb-2">Safefit 003 S52</h6>
											<div class="d-flex mb-2">
												<i class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="d-flex mb-2">
												<h5 class="fw-bold me-2">500.000Đ</h5>
												<h5 class="text-danger text-decoration-line-through">700.000Đ</h5>
											</div>
										</div>
									</div>
									<div class="d-flex justify-content-center my-4">
										<a href="#"
											class="btn border border-info px-4 py-3 rounded-pill text-info w-100">Xem
											thêm</a>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="position-relative">
										<img
											src="https://cdn.nhathuoclongchau.com.vn/unsafe/768x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/icon_content_chuyen_trang_ung_thu_413229160a.png"
											class="img-fluid w-100 rounded" alt="">

									</div>
								</div>
							</div>
						</div>

						<!-- tach -->
						<div class="col-lg-9">
							<!-- Thuoc tinh -->

							<form action="/sanPhamController" method="POST">
								<div class="d-flex justify-content-center ">
									<div class="row col-md-12">
										<div class="col-md-12 mb-4" style="color: black;">
											<span style="font-weight: bold;">SẮP XẾP</span> <br> 
											<span
												class="me-3"> <input type="checkbox"
												name="chkHangMoiConnect" id="chkHangMoi"> <label
												for="chkHangMoi">HÀNG MỚI</label>
											</span> 
											
											<span class="me-3"><input type="radio" name="sorting"
												id="lowToHigh" value="lowToHigh">TỪ THẤP LÊN CAO</span> 
												<span><input
												type="radio" name="OptionHightoLow" id="highToLow" >TỪ
												CAO XUỐNG THẤP</span>
										</div>
									</div>

								</div>
							</form>

							<div class="row g-5 justify-content-center">
								<!-- 1 -->
								<c:forEach var="user" items="${ListUser}">
									<div class="col-md-6 col-lg-6 col-xl-4">
										<div
											class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
											style="background-color: #FFFFFF;">
											<div
												class="fruite-img d-flex justify-content-center align-items-center">
												<a
													href="/BanNhapASMThuoc/sanPhamChiTietController?id=${user.idThuoc}"><img
													src="${user.hinh}" class="img-fluid w-100 rounded-top"
													alt=""></a>
											</div>
											<div
												class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
												style="top: 0px; left: 0px;">-20%</div>
											<div class="p-2 ms-3">
												<input type="hidden" name="idThuoc" placeholder="Username"
													value="${user.idThuoc}" />
												<%--  ID: ${user.idThuoc} --%>

												<h6 style="font-weight: bold;">${user.ten}</h6>
												<h6 class="text-truncate">${user.congDung}</h6>
												<div
													class=" justify-content-between flex-lg-wrap align-items-center">

													<div class="d-flex  justify-content-between flex-lg-wrap">
														<label class=""
															style="font-size: 18px; font-weight: bold; color: #3153DC;">${user.gia}đ/Hộp</label>
														<p class="text-decoration-line-through  mt-1 me-3"
															style="font-size: 15px; color: black;">2.235.000đ
															/Hộp</p>

													</div>
													<div class="d-flex  justify-content-between ">
														<a href="#" class="btn border rounded-pill px-3 me-3"
															style="font-size: 13px"> ${user.donVi}</a> 
																														
															<a href="/NhapASM_ShopThuoc/addToCart1?id=${user.idThuoc}"
															class="btn border border-info rounded-pill px-1 text-info me-3"
															style="font-size: 15px"><i
															class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
													</div>


												</div>



											</div>
										</div>
									</div>
								</c:forEach>
								<!--2  -->

							<div class="col-12">
									<div class="pagination d-flex justify-content-center mt-5">
										<c:set var="totalPages" value="${TotalPages}" />
										<c:set var="currentPage" value="${CurrentPage}" />
										<c:if test="${currentPage > 0}">
											<a class="rounded" href="?page=${currentPage - 1}">Previous</a>
										</c:if>
										<c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
											<a class="rounded" href="?page=${loop.index}">${loop.index + 1}</a>

										</c:forEach>

										<c:if test="${currentPage < totalPages - 1}">
											<a class="rounded" href="?page=${currentPage + 1}">Next</a>
										</c:if>

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

<script>
document.getElementById("chkHangMoi").addEventListener("change", function(event) {
    // Ngăn chặn hành vi mặc định của form
    event.preventDefault();
    
    // Kiểm tra xem checkbox có được chọn hay không
    if (this.checked) {
        // Tạo một đối tượng XMLHttpRequest
        var xhr = new XMLHttpRequest();
        
        // Xác định phương thức và URL của yêu cầu
        xhr.open("POST", "/BanNhapASMThuoc/sanPhamController", true);
        
        // Xác định hàm xử lý được gọi khi yêu cầu hoàn thành
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // Cập nhật nội dung của trang web với dữ liệu nhận được từ máy chủ
                document.getElementById("content").innerHTML = xhr.responseText;
            }
        };
        
        // Gửi yêu cầu
        xhr.send();
    }
});


</script>


	<!-- <script>
	document.getElementById("chkHangMoi").addEventListener("change", function() {
	    // Kiểm tra xem checkbox có được chọn hay không
	    if (this.checked) {
	        // Tạo một biến form
	        var form = document.createElement("form");
	        // Đặt action của form là URL của controller
	        form.setAttribute("action", "/BanNhapASMThuoc/sanPhamController");
	        // Đặt phương thức của form là POST
	        form.setAttribute("method", "POST");
	        // Tạo một input ẩn với tên là chkHangMoi và giá trị là true
	        var input = document.createElement("input");
	        input.setAttribute("type", "hidden");
	        input.setAttribute("name", "chkHangMoiConnect");
	        input.setAttribute("value", "true");
	        // Thêm input vào form
	        form.appendChild(input);
	        // Thêm form vào body của trang web
	        document.body.appendChild(form);
	        // Gửi form
	        form.submit();
	    }
	});

	</script>  -->
	
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