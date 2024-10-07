<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!-- or -->
<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>
<body>
	<div class="col-12"></div>
	<div class="row col-12  m-0" style="padding-top: 50px">
	<!-- <form action="home" method="post"> -->
		<form action="home" method="post" class=" row col-6 m-0 " style="padding-bottom: 390px;">
			<h1>Thông tin thanh toán</h1>
			<div class="use-info"></div>
			<div class="input-group flex-nowrap">

				<input type="text" class="form-control m-5 mt-3 mb-2  "
					placeholder="Họ và tên" aria-label="Username"
					aria-describedby="addon-wrapping" value="${user.hoten }">
			</div>
			<div class="input-group flex-nowrap">

				<input type="text" class="form-control  m-5 mt-3 mb-2 "
					placeholder="Điện thoại" aria-label="Username"
					aria-describedby="addon-wrapping" value="${user.sdt }">
			</div>
			<div class="input-group flex-nowrap">

				<input type="text" class="form-control  m-5 mt-3 mb-2 "
					placeholder="Địa chỉ" aria-label="Username" name="sonha"
					aria-describedby="addon-wrapping">
			</div>


			<div class="row " style="padding-left: 60px;">
				<div class="col-12 my-3 me-4">

						<input type="text" class="form-control"
							placeholder="Chọn tỉnh thành" name="tinhTP"
							aria-label="Text input with dropdown button">
				</div>
				<div class="col-12 my-3 me-4">
						<input type="text" class="form-control"
							placeholder="Chọn quận/huyện" name="quanhuyen"
							aria-label="Text input with dropdown button">

				</div>
				<div class="col-12 my-3 me-4">
					
						<input type="text" class="form-control"
							placeholder="Chọn phường/xã" name="phuongxa"
							aria-label="Text input with dropdown button">
				</div>
				<div class="col-4 mt-5 ">
					<a href="/asm2_webbansach/home/cart" style="text-decoration: none">Quay lại giỏ hàng</a>
				</div>
				<div class="col-8 mt-5 ps-5">
					<label class="form-label">Phương thức thanh toán</label> <br> <select
								class="form-select" aria-label="Default select example"
								name="pttt">
								<option value="Tiền mặt"> Tiền mặt</option>
								<option value="MoMo"> MoMo</option>
								<option value="Credit card"> Credit card</option>
							</select>
				</div>
			</div>
			<h2 class="ms-5 mt-5 w-75 ${text }">${message }</h2>
			<button class="btn btn-danger ms-5 mt-5 w-50" formaction="thanhtoan">Thanh
						toán</button>

		</form>
		<div class=" row col-6 p-0 m-0"
			style="border-left: 1px solid grey; background-color: rgb(231, 229, 229);">

			<div class=" col-12 ">

				<c:forEach var="cartItems" items="${cart}">
					<div class="row  p-0 mt-3">
						<img src="/asm2_webbansach/img/${cartItems.img }"
							class="w-25 h-25 col-2">

						<div class="col-8">
							<div class="row">
								<span class="col-7">${cartItems.tenSP } x
									${cartItems.soluong }</span> <span class="col-2">Season ${cartItems.mua }</span>
								<span class="col-3">${cartItems.gia } vnđ</span>
							</div>
						</div>

					</div>
				</c:forEach>
				<!-- <div class="row mt-3 p-0">
					<img src="/ASM1_JAVA4/img/product1.webp" class="w-25 h-25 col-2">

					<div class="col-7 ">
						<div class="row">
							<span class="col-7">DORAEMON NOBITA VÀ SHIZUKÔN</span> <span
								class="col-5"> 40.000 vnd</span>
						</div>
					</div>

				</div>
				<div class="row  p-0 mt-3">
					<img src="/ASM1_JAVA4/img/product2.jpg" class="w-25 h-25 col-2">

					<div class="col-7">
						<div class="row">
							<span class="col-7">Tên Sản Phẩm</span> <span class="col-5">
								400.000 vnd</span>
						</div>
					</div>

				</div>
				<div class="row p-0 mt-3">
					<img src="/ASM1_JAVA4/img/VNpay.webp" class="w-25 h-25 col-2">

					<div class="col-7">
						<div class="row">
							<span class="col-7">Tên Sản Phẩm</span> <span class="col-5">
								40.000 vnd</span>
						</div>
					</div>

				</div>
 -->


				<div class=" container col-12 mt-5">
					<div class="row"
						style="border-top: 1px solid grey; border-bottom: 1px solid grey;">
						<span class="col-8">Tạm tính : </span> <span class="col-4">${tamtinh }
							vnđ</span> <span class="col-8">Phí ship : </span>
							<span class="col-4">50.000
							vnd</span>
					</div>
					<div class="row">
						<span class="col-8" style="font-size: x-large;">Tổng tiền :</span>
						<span class="col-4" style="font-size: x-large;">${tamtinh + 50000 } vnđ</span>
					</div>
				</div>

			</div>
		</div>
		<!-- </form> -->
	</div>
	<div class="p-0 m-0"></div>
</body>
<script src="bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/080e653522.js"
	crossorigin="anonymous"></script>
<script>
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
</script>
</html>