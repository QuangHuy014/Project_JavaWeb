<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
        <link
	href="<c:url value='/template/web/dangky/dangky.css'/>"
	rel="stylesheet">
</head>
<body>
    <div class="form-bg">
        <div class="container">
            <div class="row col-md-12">
                <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
                    <div class="form-container">
                        <h3 class="title">Đăng ký tài khoản</h3>
                        <form class="form-horizontal" action="/NhapASM_ShopThuoc/dangkyPQ" method="POST">
                            <div class="form-group">
                                <label>Mã nhân viên</label>
                                <input class="form-control" type="text" name="idmanv">
                            </div>
                            <div class="form-group">
                                <label>Tên nhân viên</label>
                                <input class="form-control" type="text" name="ten">
                            </div>
                            <div class="form-group">
                                <label>Tuổi</label>
                                <input class="form-control" type="number" name="age">
                            </div>
                            <div class="form-group">
                                <label for="birthday">Ngày sinh</label>
                                <input class="form-control" type="date" id="birthday" name="birthday">
                            </div>
                            <div class="form-group">
                                <label>Vai trò*</label> 
                            </br>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="vaitro" id="admin" value="admin">
                                    <label class="form-check-label" for="admin">Admin</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="vaitro" id="nhanvien" value="nhanvien">
                                    <label class="form-check-label" for="nhanvien">Nhân viên</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ</label>
                                <input class="form-control" type="text" name="diachi">
                            </div>
                            <div class="form-group">
                                <label>Giới tính</label> 
                                <br>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gioitinh" id="nam" value="nam">
                                    <label class="form-check-label" for="nam">Nam</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gioitinh" id="nu" value="nu">
                                    <label class="form-check-label" for="nu">Nữ</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Trạng thái</label> 
                                <br>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="trangthai" id="danglam" value="danglam">
                                    <label class="form-check-label" for="danglam">Đang làm</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="trangthai" id="dangnghi" value="dangnghi">
                                    <label class="form-check-label" for="dangnghi">Đang nghỉ</label>d
                                </div>
                            </div>
                            <h4 class="sub-title">Thông tin đăng nhập</h4>
                            <div class="form-group phone-no">
                                <label>Tên đăng nhập</label>
                                <input class="form-control" type="text" name = "tendangnhap">
                            </div>
                          <div class="form-group age">
                                <label>Mật khẩu</label>
                                <input class="form-control" type="password" name = "matkhau">
                            </div> 
                            
                            
                            
                            <button class="btn signin" name="buttonDangKyPQ">Tạo tài khoản</button>
                            <span class="user-login">Bạn đã có tài khoản? Bấm vào đây <a href="#">Đăng nhập</a></span>
                        </form>
                        <div class="social-links">
                            <span>Hoặc đăng nhập</span>
                            <a href="#"><i class="fab fa-twitter"></i> twitter</a>
                            <a href="#"><i class="fab fa-facebook-f"></i> facebook</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>  
</body>
</html>