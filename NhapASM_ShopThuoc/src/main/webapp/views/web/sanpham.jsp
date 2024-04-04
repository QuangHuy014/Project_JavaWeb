<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản Phẩm</title>
</head>

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
	
<%-- 	<%@ include file="/common/web/header.jsp"%> --%>
	
	
	 <c:forEach var="user" items="${ListUser}" >
               <%--  <tr>
                    <td>${user.idThuoc}</td>
                    <td>${user.ten}</td>
                   
                </tr> --%>
                
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
											<h6 style="font-weight: bold;">${user.ten}</h6>
											<h6 class="text-truncate">hỗ trợ làm đẹp da, giúp da
												trắng sáng (60 viên)</h6>
											<div
												class=" justify-content-between flex-lg-wrap align-items-center">

												<div class="d-flex  justify-content-between flex-lg-wrap">
													<label class=""
														style="font-size: 18px; font-weight: bold; color: #3153DC;">1.235.000/Hộp</label>
													<p class="text-decoration-line-through  mt-1 me-3"
														style="font-size: 15px; color: black;">${user.soLuong}</p>

												</div>
												<div class="d-flex  justify-content-between ">
										<%-- 	<form action="/NhapASM_ShopThuoc/addToCart1?id=${user.idThuoc}" method="POST"> --%>
										
													<!-- <a href="" class="btn border rounded-pill px-3 me-3"
														style="font-size: 13px" > Tc</a> <a href="#"
														class="btn border border-info rounded-pill px-1 text-info me-3"
														style="font-size: 15px">
														</a> -->
														<a href="/NhapASM_ShopThuoc/addToCart1?id=${user.idThuoc}">Thêm giỏ thuốcc</a>
														
														
														<!-- <i
														class="fa fa-shopping-bag  text-info">Hộp lớn</i>  -->
														
													<input type="hidden" name="idThuoc" value="${user.idThuoc}">
													<h3>${user.idThuoc}</h3> 
								
														  		<!-- </form>   -->
												</div>


											</div>



										</div>
									</div>
								</div>
            </c:forEach>	
            
            
            
	
<%-- <%@ include file="/common/web/footer.jsp"%> --%>



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