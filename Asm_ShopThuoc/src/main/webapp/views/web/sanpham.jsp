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

	<!-- Fruits Shop Start-->
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
												<form class="d-flex mt-2 mb-3" role="search">
													<input class="form-control" type="search"
														placeholder="Tìm kiếm theo tên" ng-model="searchTerm">

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
							<div class="d-flex justify-content-center ">
								<div class="row col-md-12">
									<div class="col-md-12 mb-4" style="color: black;">
										<span style="font-weight: bold;">SẮP XẾP</span> <br> <span
											class="me-3"><input type="checkbox" name="sorting">HÀNG
											MỚI</span> <span class="me-3"><input type="radio"
											name="sorting" id="lowToHigh" value="lowToHigh">TỪ
											THẤP LÊN CAO</span> <span><input type="radio" name="sorting"
											id="highToLow" value="highToLow">TỪ CAO XUỐNG THẤP</span>
									</div>
								</div>

							</div>


							<div class="row g-5 justify-content-center">
								<!-- 1 -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00021929_perfect_white_60v_3739_600f_large_6794b33ce3.JPG"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Viên uống Perfect White
												Jpanwell</h6>
											<h6 class="text-truncate">hỗ trợ làm đẹp da, giúp da
												trắng sáng (60 viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!--2  -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00031834_dai_trang_hai_thuong_vuong_vesta_2x10_6583_616d_large_a83f90816b.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Viên uống Đại Tràng Hải
												Thượng Vương hỗ trợ kiện tỳ vị,</h6>
											<h6 class="text-truncate">giảm triệu chứng rối loạn tiêu
												hóa (2 vỉ x 10 viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!-- 3 -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00032785_vuong_nu_khang_royal_care_60v_5656_61aa_large_7ec72e2f67.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Viên nang cứng Vương Nữ
												Khang Royal Care hỗ trợ</h6>
											<h6 class="text-truncate">hạn chế sự phát triển u xơ tử
												cung, u vú lành tính (60 viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!--  -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00032568_phe_khang_hai_thuong_vuong_3x10_7009_616f_large_12889d8d3b.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Viên uống Phế Khang Hải
												Thượng Vương Vesta hỗ trợ giảm đau rát họng,</h6>
											<h6 class="text-truncate">khản tiếng do ho kéo dài (3 vỉ
												x 10 viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!--  -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00033675_mat_na_xong_hoi_mat_megrhythm_khong_huong_9663_641a_large_b1d577c8a2.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Mặt nạ xông hơi mắt
												MegRhythm KAO không hương dễ chịu,</h6>
											<h6 class="text-truncate">thư giãn đôi mắt (5 miếng)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!--  -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00503276_vien_uong_ho_tro_tang_cuong_tuan_hoan_nao_natto_gold_3000fu_royal_care_60v_8247_63ed_large_1d74618cb5.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Viên uống Natto Gold
												3000FU Royal Care hỗ trợ hoạt huyết</h6>
											<h6 class="text-truncate">, tăng cường tuần hoàn não (60
												viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!--  -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/128x128/https://cms-prod.s3-sgn09.fptcloud.com/00345454_siro_an_ngon_healthy_new_kid_8980_5f62_large_f0c20d905d.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Siro Healthy New Kids bổ
												sung vitamin,</h6>
											<h6 class="text-truncate">lysine, taurin, hỗ trợ kích
												thích tiêu hóa (120ml)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!--  -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/256x256/https://cms-prod.s3-sgn09.fptcloud.com/00345353_hair_volume_vien_uong_duong_toc_7952_62af_large_46a5a99e57.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Viên uống Hair Volume New
												Nordic giúp tóc chắc khỏe,</h6>
											<h6 class="text-truncate">đẹp tóc, hạn chế rụng tóc (30
												viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>
								<!--  -->
								<div class="col-md-6 col-lg-6 col-xl-4">
									<div
										class="rounded position-relative fruite-item border border-primary-subtle rounded-bottom"
										style="background-color: #FFFFFF;">
										<div
											class="fruite-img d-flex justify-content-center align-items-center">
											<img
												src="https://cdn.nhathuoclongchau.com.vn/unsafe/256x256/https://cms-prod.s3-sgn09.fptcloud.com/1_a2daaedb7c.jpg"
												class="img-fluid w-50 rounded-top" alt="">
										</div>


										<div
											class="text-white bg-danger px-3 py-1 rounded-end position-absolute"
											style="top: 0px; left: 0px;">-20%</div>
										<div class="p-2 ms-3">
											<h6 style="font-weight: bold;">Viên uống BIO Hair, Nail
												& Skin Royal Care hỗ trợ cải thiện sạm da,</h6>
											<h6 class="text-truncate">khô da, giúp móng tóc chắc
												khỏe (30 viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">2.235.000đ /Hộp</p>

												</div>
												<div class="d-flex  justify-content-between ">
													<a href="#" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px"> Hộp lớn</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px"><i
														class="fa fa-shopping-bag  text-info"></i> Thêm giỏ thuốc</a>
												</div>


											</div>



										</div>
									</div>
								</div>


								<div class="col-12">
									<div class="pagination d-flex justify-content-center mt-5">
										<a href="#" class="rounded">&laquo;</a> <a href="#"
											class="active rounded">1</a> <a href="#" class="rounded">2</a>
										<a href="#" class="rounded">3</a> <a href="#" class="rounded">4</a>
										<a href="#" class="rounded">5</a> <a href="#" class="rounded">6</a>
										<a href="#" class="rounded">&raquo;</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>