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
       <link href="<c:url value='/template/web/doimatkhau/doimatkhau.css'/>" rel="stylesheet"> >
</head>
<body>
    <form action="/NhapASM_ShopThuoc/doiMatKhau" method="POST">
        <div class="form-bg">
            <div class="container">
                <div class="row col-md-12">
                    <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
                        <div class="form-container">
                            <h3 class="title">Đổi mật khẩu</h3>
                           <%--  <input type="hidden" name="loaiTaiKhoan" value="<%= request.getParameter("loaiTaiKhoan") %>"> --%>
                            <div class="form-group phone-no mt-3">
                                <label>Tên đăng nhập</label> 
                                <input class="form-control" type="text" name="tenTaiKhoan">
                            </div>
                            <div class="form-group phone-no mt-3">
                                <label>Mật khẩu cũ</label> 
                                <input class="form-control" type="password" name="matKhauCu">
                            </div>
                            <div class="form-group phone-no mt-3">
                                <label>Mật khẩu mới</label> 
                                <input class="form-control" type="password" name="matKhauMoi">
                            </div>
                            <div class="form-group phone-no mt-3">
                                <label>Xác nhận mật khẩu mới</label> 
                                <input class="form-control" type="password" name="xacNhanMatKhauMoi">
                            </div>
                            <div class="form-horizontal mt-3">
                                <button class="btn signin" type="submit" name="buttonQuenMk">Đổi mật khẩu</button>
                            </div>
                            <div class="social-links">
                                <span>Hoặc đăng nhập</span> <a href="#"><i
                                    class="fab fa-twitter"></i> twitter</a> <a href="#"><i
                                    class="fab fa-facebook-f"></i> facebook</a>
                            </div>
                            <% if (request.getAttribute("error") != null) { %>
                                <div class="alert alert-danger mt-3" role="alert">
                                    <%= request.getAttribute("error") %>
                                </div>
                            <% } else if (request.getAttribute("message") != null) { %>
                                <div class="alert alert-success mt-3" role="alert">
                                    <%= request.getAttribute("message") %>
                                </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>