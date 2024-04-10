<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link href="<c:url value='/template/web/quenmk/quenmk.css'/>" rel="stylesheet">
</head>
<body>
<div class="form-bg">
    <div class="container">
        <div class="row col-md-12">
            <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
                <div class="form-container">
                    <h3 class="title">Quên mật khẩu</h3>
                    <form action="/NhapASM_ShopThuoc/quenMK" method="POST">
                        <div class="form-group phone-no">
                            <label>Email cá nhân</label>
                            <input class="form-control" type="email" id="to" name="to" required>
                        </div>
                        <div class="form-group phone-no mt-3">
                            <label>Tên đăng nhập</label>
                            <input class="form-control" type="text" id="tendangnhap" name="tendangnhap" value="${param.tendangnhap}" required>
                        </div>
                        <input type="hidden" name="tendangnhap" value="${param.tendangnhap}">
                        <div class="form-horizontal mt-3">
                            <button class="btn signin" name="buttonquenmk">Tiếp tục</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

