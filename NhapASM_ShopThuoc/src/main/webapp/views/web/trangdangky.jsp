<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="<c:url value='/template/web/login-form-20/login-form-20/css/style.css'/>" rel="stylesheet"> 
</head>
<body class="img js-fullheight" style="background-image: url(https://nhathuoclongchau.com.vn/estore-images/home/heath/heath-check.png);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center"></div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center">Create an Account</h3>
						<form action="/NhapASM_ShopThuoc/DangKy" class="signin-form"
							method="POST">
							<div class="form-group">
								<input type="text" class="form-control" name="tendangnhap"
									placeholder="Username" required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" name="matkhau"
									class="form-control" placeholder="Password" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="ten"
									placeholder="Ten" required>
							</div>
							<div class="form-group">
								<label class="radio-inline"> <input type="radio"
									name="gioitinh" value="nam" required> Nam
								</label> <label class="radio-inline"> <input type="radio"
									name="gioitinh" value="nu"> Nữ
								</label>
							</div>
							<div class="form-group">
								<button type="submit" name="buttonDangKy"
									class="form-control btn btn-primary submit px-3">Register</button>
							</div>
							<div class="form-group d-md-flex">
								<div class="w-100">
									<label class="checkbox-wrap checkbox-primary">By
										creating an account, you agree to our <a href="#">Terms &
											Privacy</a>. <input type="checkbox" required> <span
										class="checkmark"></span>
									</label>
								</div>
							</div>
						</form>
						<p class="w-100 text-center">&mdash; Or Sign Up With &mdash;</p>
						<div class="social d-flex text-center">
							<a href="#" class="px-2 py-2 mr-md-1 rounded"><span
								class="ion-logo-facebook mr-2"></span> Nhân Viên</a> <a href="#"
								class="px-2 py-2 ml-md-1 rounded"><span
								class="ion-logo-twitter mr-2"></span> Twitter</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="<c:url value='/template/web/login-form-20/login-form-20/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/template/web/login-form-20/login-form-20/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/template/web/login-form-20/login-form-20/js/main.js'/>"></script>
	<script src="<c:url value='/template/web/login-form-20/login-form-20/js/popper.js'/>"></script>

</body>
</html>