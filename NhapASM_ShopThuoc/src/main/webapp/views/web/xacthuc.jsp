<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xác thực và đặt lại mật khẩu</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link href="<c:url value='/template/web/quenmk/quenmk.css'/>"
	rel="stylesheet">
</head>
<body>
	<form action="/NhapASM_ShopThuoc/xacThuc" method="POST">
		<div class="form-bg">
			<div class="container">
				<div class="row col-md-12">
					<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
						<div class="form-container">
							<h3 class="title">Xác thực và đặt lại mật khẩu</h3>

							<div class="form-group phone-no">
								<label>Mã xác thực</label> <input class="form-control"
									type="text" id="maXacThuc" name="maXacThuc" required>
							</div>

							<div class="form-group phone-no mt-3">
								<label>Mật khẩu mới</label> <input class="form-control"
									type="password" id="matKhauMoi" name="matKhauMoi" required>
							</div>

							<input type="hidden" name="tendangnhap" value="${param.tendangnhap}">

							<div class="form-horizontal mt-3">
								<button class="btn signin" name="buttonxacthuc">Đổi mật
									khẩu</button>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>

