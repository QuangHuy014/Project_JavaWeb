<!DOCTYPE html>
<%@include file="/common/taglib.jsp"%>
<html>
	<head>
		<meta charset="utf-8">
		<title>FormWizard_v1</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
<!-- 		<link href="/template/web/fonts/material-design-iconic-font/css/material-design-iconic-font.css"/> -->
		<!-- STYLE CSS -->
<link href="<c:url value='/template/web/fonts/material-design-iconic-font/css/material-design-iconic-font.css'/>"
	rel="stylesheet">
	</head>
<!-- 		<link href="/template/web/order_confirm/css/style.css"/> -->
<link href="<c:url value='/template/web/order_confirm/css/style.css'/>"
	rel="stylesheet">
	</head>
	<body>
		<div class="wrapper">
            <form action="" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div class="image-holder">
							<!-- <img src="images/form-wizard-1.jpg" alt=""> -->
							<img src="<c:url value='/template/web/order_confirm/images/form-wizard-1.jpg'/>" alt="">
						</div>
						<div class="form-content" >
							<div class="form-header">
								<h3>Registration</h3>
							</div>
							<p>Please fill with your details</p>
							<div class="form-row">
							
								<div class="form-holder">
									<input type="text" placeholder="tenKhachHang" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-holder">
									<input type="text" placeholder="email" class="form-control">
								</div>
								<div class="form-holder">
									<input type="text" placeholder="soDienThoai" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-holder w-100">
									<input type="text" placeholder="diaChi" class="form-control">
								</div>
							</div>
							
						</div>
					</div>
                </section>

				

                <!-- SECTION 3 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div class="image-holder">
								<img src="<c:url value='/template/web/order_confirm/images/form-wizard-3.jpg'/>" alt="">

						</div>
						<div class="form-content">
							<div class="form-header">
								<h3>Registration</h3>
							</div>
							<p>Send an optional message</p>
							<div class="form-row">
								<div class="form-holder w-100">
									<textarea name="" id="" placeholder="Your messagere here!" class="form-control" style="height: 99px;"></textarea>
								</div>
							</div>
							<div class="checkbox-circle mt-24">
								<label>
									<input type="checkbox" checked>  Please accept <a href="#">terms and conditions ?</a>
									<span class="checkmark"></span>
								</label>
							</div>
						</div>
					</div>
                </section>
            </form>
		</div>

		<!-- JQUERY -->
<!-- 		<script src="/template/web/order_confirm/js/jquery-3.3.1.min.js"></script> -->
<script
	src="<c:url value='/template/web/order_confirm/js/jquery-3.3.1.min.js'/>"></script>
		<!-- JQUERY STEP -->
<!-- 		<script src="/template/web/order_confirm/js/jquery.steps.js"></script> -->
		<script
	src="<c:url value='/template/web/order_confirm/js/jquery.steps.js'/>"></script>
	
		<script
	src="<c:url value='/template/web/order_confirm/js/main.js'/>"></script>
<!-- 		<script src="/template/web/order_confirm/js/main.js"></script> -->
		<!-- Template created and distributed by Colorlib -->
</body>
</html>
