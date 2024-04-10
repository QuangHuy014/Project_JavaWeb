<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="Tooplate">

<title>Mini Finance Dashboard Template</title>
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
	<div class="container-fluid">
		<div class="row">

			<main
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">


				<div class="row my-4">
					<div class="col-lg-7 col-12">
						<div class="custom-block bg-white">

							<div class="tab-pane fade show active" id="profile-tab-pane"
								role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
								<h6 class="mb-4">Create product</h6>
								<form action="/NhapASM_ShopThuoc/addProduct" method="post">
									<div class="form-group mb-3">
										<label for="idThuoc">ID Thuoc</label> <input type="text"
											class="form-control" id="idThuoc" name="idThuoc">
									</div>
									
									<div class="form-group mb-3">
										<label for="idThuoc">ID NhomThuoc</label> <input type="text"
											class="form-control" id="nhomThuoc" name="nhomThuoc">
									</div>
									<!-- Input for Ten -->
									<div class="form-group mb-3">
										<label for="ten">Tên Thuốc</label> <input type="text"
											class="form-control" id="ten" name="ten">
									</div>

									<!-- Input for SoLuong -->
									<div class="form-group mb-3">
										<label for="soLuong">Số Lượng</label> <input type="number"
											class="form-control" id="soLuong" name="soLuong">
									</div>

									<!-- Input for Gia -->
									<div class="form-group mb-3">
										<label for="gia">Giá</label> <input type="number"
											class="form-control" id="gia" name="gia">
									</div>

									<!-- Input for NguonGoc -->
									<div class="form-group mb-3">
										<label for="nguonGoc">Nguồn Gốc</label> <input type="text"
											class="form-control" id="nguonGoc" name="nguonGoc">
									</div>

									<!-- Input for CongDung -->
									<div class="form-group mb-3">
										<label for="congDung">Công Dụng</label> <input type="text"
											class="form-control" id="congDung" name="congDung">
									</div>

									<!-- Input for NgaySanXuat -->
									<div class="form-group mb-3">
										<label for="ngaySanXuat">Ngày Sản Xuất</label> <input
											type="date" class="form-control" id="ngaySanXuat"
											name="ngaySanXuat">
									</div>

									<!-- Input for Hinh -->
									<div class="form-group mb-3">
										<label for="hinh">Hình</label> <input type="file"
											class="form-control" id="hinh" name="hinh">
									</div>

									<!-- Input for isActive -->
									<div class="form-group mb-3">
										<label for="isActive">Is Active</label>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="isActive"
												id="activeRadio" value="true" checked> <label
												class="form-check-label" for="activeRadio"> Active </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="isActive"
												id="inactiveRadio" value="false"> <label
												class="form-check-label" for="inactiveRadio">
												Inactive </label>
										</div>
									</div>

									<div class="form-group mb-3">
										<label for="baoQuan">Bảo Quản</label> <input type="text"
											class="form-control" id="baoQuan" name="baoQuan">
									</div>

									<!-- Input for DonVi -->
									<div class="form-group mb-3">
										<label for="donVi">Đơn Vị</label> <input type="text"
											class="form-control" id="donVi" name="donVi">
									</div>

									<div class="form-group form-button">
										<input type="submit" name="buttonAdd" class="form-submit" />
									</div>
								</form>



								<!-- <form class="custom-form profile-form"
									action="/NhapASM_ShopThuoc/addProduct" method="post">
									<div class="form-group mb-3">
										<label for="idThuoc">ID Thuoc</label> <input type="text"
											class="form-control" id="idThuoc" name="idThuoc">
									</div>
									Input for Ten
									<div class="form-group mb-3">
										<label for="ten">Tên Thuốc</label> <input type="text"
											class="form-control" id="ten" name="ten">
									</div>

									Input for SoLuong
									<div class="form-group mb-3">
										<label for="soLuong">Số Lượng</label> <input type="number"
											class="form-control" id="soLuong" name="soLuong">
									</div>

									Input for Gia
									<div class="form-group mb-3">
										<label for="gia">Giá</label> <input type="number"
											class="form-control" id="gia" name="gia">
									</div>

									Input for NguonGoc
									<div class="form-group mb-3">
										<label for="nguonGoc">Nguồn Gốc</label> <input type="text"
											class="form-control" id="nguonGoc" name="nguonGoc">
									</div>

									Input for CongDung
									<div class="form-group mb-3">
										<label for="congDung">Công Dụng</label> <input type="text"
											class="form-control" id="congDung" name="congDung">
									</div>

									Input for NgaySanXuat
									<div class="form-group mb-3">
										<label for="ngaySanXuat">Ngày Sản Xuất</label> <input
											type="date" class="form-control" id="ngaySanXuat"
											name="ngaySanXuat">
									</div>

									Input for Hinh
									<div class="form-group mb-3">
										<label for="hinh">Hình</label> <input type="file"
											class="form-control" id="hinh" name="hinh">
									</div>

									Input for isActive
									<div class="form-group mb-3">
										<label for="isActive">Is Active</label>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="isActive"
												id="activeRadio" value="true" checked> <label
												class="form-check-label" for="activeRadio"> Active </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="isActive"
												id="inactiveRadio" value="false"> <label
												class="form-check-label" for="inactiveRadio">
												Inactive </label>
										</div>
									</div>
			
									<div class="form-group mb-3">
										<label for="baoQuan">Bảo Quản</label> <input type="text"
											class="form-control" id="baoQuan" name="baoQuan">
									</div>

									Input for DonVi
									<div class="form-group mb-3">
										<label for="donVi">Đơn Vị</label> <input type="text"
											class="form-control" id="donVi" name="donVi">
									</div>

									Add or Update button
									<div class="d-flex mt-4">
										<button type="submit" class="form-control ms-2"
											name="buttonAdd">Add</button>
									</div>
								</form> -->
							</div>


						</div>
					</div>
				</div>

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