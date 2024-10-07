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
<style>
.text-decoration-underline:hover {
	cursor: pointer;
}

.bg-danger:hover {
	
}
</style>

<body>
	<div class="col-12"></div>
	<div class="container mt-1">
		<table class="table border-bottom-1 align-items-center">
			<thead>
				<tr>
					<th scope="col" class="col-5">Sản Phẩm</th>
					<th scope="col" class="col-1">Mùa</th>
					<th scope="col" class="col-2">Đơn Giá</th>
					<th scope="col" class="col-2">Số Lượng</th>
					<th scope="col" class="col-2">Tổng Giá</th>
				</tr>
			</thead>
			<tbody class="fw-bold">

				<c:forEach var="cartItems" items="${cart}">
					<form action="home" method="post">
						<input type="hidden" class="form-control" name="MaGH" value="${cartItems.getMaGH()}"> 
						<input type="hidden" class="form-control" name="tenSP" value="${cartItems.tenSP}">
						<input type="hidden" class="form-control" name="season" value="${cartItems.mua}"> 
						<input type="hidden" class="form-control" name="quantityV2" value="${cartItems.soluong}">
						<tr>

							<td class="row"><img
								src="/asm2_webbansach/img/${cartItems.img }"
								class="img-fluid w-25 h-25 " alt="">
								<div class="col-8 row mt-3 text-danger ">
									<span class="col-12">${cartItems.tenSP }</span>
									<button class="btn btn-outline-danger col-3 h-25"
										formaction="deleteCart">Xóa</button>
								</div></td>
							<td name="season">${cartItems.mua }</td>
							<td name="price">${cartItems.gia }vnđ</td>
							<td><input name="quatityV0" type="number" class="w-50"
								min="1" value="${cartItems.soluong }"></td>
							<td name="total">${cartItems.getThanhtien() }vnđ</td>
						</tr>
					</form>
				</c:forEach>

			</tbody>
		</table>
		<div class="text-end col">
			<span>Tạm Tính:</span> <span class="fw-bold">${tamtinh } vnđ</span>
		</div>
		<div class="text-end mt-3">
			<a class="bg-danger text-white rounded-1 border-0 p-2 ms-2" href="/asm2_webbansach/home/payment"
				style="text-decoration: none">Thanh Toán</a>
		</div>

	</div>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<div class="col-12"></div>
</body>
</html>