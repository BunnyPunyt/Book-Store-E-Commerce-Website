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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
	integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!-- or -->
<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>
<style>
.mumei {
	font-size: 3rem;
	font-weight: bold;
	text-shadow: 0 0 20px black, 0 0 40px black, 0 0 60px black;
	animation: glow 2s ease-in-out infinite;
}

@
keyframes glow { 0%, 100% {
	text-shadow: 0 0 20px rgb(188, 83, 83), 0 0 40px rgb(188, 83, 83), 0 0
		60px rgb(188, 83, 83);
}

50



%
{
text-shadow



:



0



0



30px



rgb



(



249
,
0
,
0



)
,
0



0



50px



rgb



(



255
,
0
,
0



)
,
0



0



70px



rgb



(



246
,
246
,
246



)



;
}
}
.search-container {
	display: flex;
	align-items: center;
}

.search-container .search-input {
	flex-grow: 1;
}

.search-container .search-icons {
	display: flex;
	gap: 10px;
}

/* Small screens (col-sm and below) */
@media ( max-width : 767.98px) {
	/* .search-container .search-icons, */
	.search-container .search-input {
		display: none;
	}
	.search-container .dropdown {
		display: block;
	}
}

@media ( max-width :700px) {
	.search-icons .words {
		display: none;
	}
}

/* Medium screens (col-md and above) */
@media ( min-width : 768px) {
	.search-container .dropdown {
		display: none;
	}
	.search-container .search-input, .search-container .search-icons {
		display: flex;
	}
}

.btn-secondary {
	color: #fff;
	background-color: #dc3545; /* Red color */
	border-color: #dc3545;
	padding: 0.5rem 1rem;
	border-radius: 0.5rem;
	transition: background-color 0.3s, color 0.3s;
}

.btn-secondary:hover {
	color: #fff;
	background-color: #c82333; /* Darker red on hover */
	border-color: #bd2130;
}

.btn-secondary:focus, .btn-secondary.focus {
	color: #fff;
	background-color: #c82333;
	border-color: #bd2130;
	box-shadow: 0 0 0 0.2rem rgba(225, 83, 97, 0.5);
	/* Subtle box-shadow on focus */
}

.btn-secondary.disabled, .btn-secondary:disabled {
	color: #fff;
	background-color: #dc3545;
	border-color: #dc3545;
	opacity: 0.65;
}

.btn-secondary:not(:disabled):not(.disabled):active, .btn-secondary:not(:disabled):not(.disabled).active,
	.show>.btn-secondary.dropdown-toggle {
	color: #fff;
	background-color: #bd2130;
	border-color: #b21f2d;
}

.btn-secondary:not(:disabled):not(.disabled):active:focus,
	.btn-secondary:not(:disabled):not(.disabled).active:focus, .show>.btn-secondary.dropdown-toggle:focus
	{
	box-shadow: 0 0 0 0.2rem rgba(225, 83, 97, 0.5);
}
</style>
<body>



	<div class="header">
		<div class="row px-0 m-0" style="background-color: red; height: 22px;">
			<div class="col-3 col-sm-2 col-md-2	col-lg-2 col-xl-2">
				<i class='bx bxl-facebook-circle'
					style="font-size: 20px; color: black"></i> <i
					class='bx bxl-instagram-alt' style="font-size: 20px; color: black"></i>
				<i class='bx bxl-youtube' style="font-size: 20px; color: black"></i>

			</div>

			<div
				class=" d-none d-md-block d-xl-block col-sm-0 col-md-2 col-lg-3 col-xl-4 px-0 m-0">
				<marquee direction="left" behavior="scroll" scrollamount="5">
					<p style="color: aliceblue">Chào mừng bạn đến với MuMeii -
						Trang web mua sắm sách đầy sôi động và sáng tạo. Tại đây, bạn sẽ
						khám phá và sở hữu vô vàn những ấn phẩm sách chất lượng.</p>
				</marquee>
			</div>
			<div class="col-4 col-sm-5  col-md-4  col-lg-3 col-xl-3 ps-3 "
				style="color: aliceblue;">
				<i class='bx bx-phone-call'></i>(+84)19001234

			</div>
			<div class="col-5 col-sm-5 col-md-4 col-lg-3 col-xl-3 px-0 m-0 "
				style="color: aliceblue;">

				<i class='bx bx-envelope'></i>MuMeii@gmail.com.vn <a href="?lang=vi"
					class="text-white"> Tiếng Việt </a> <a href="?lang=en"
					class="text-white"> English </a> <a href="?lang=jp"
					class="text-white"> Chinese </a>
				<fmt:setLocale value="${sessionScope.lang}" scope="request" />
				<fmt:setBundle basename="global" scope="request" />
				<c:url var="home" value="/home" />
			</div>
		</div>
	</div>

	<div class="row mt-3 p-0 m-0">
		<div class="col-3 text-center">
			<div class="mumei">
				<a class="text-dark" href="/asm2_webbansach/home/index"
					style="text-decoration: none">MuMeii</a>
			</div>
		</div>
		<div class="col-5 search-container">
			<div class="search-input">
				<form action="home" method="post" class="w-100">
					<div class="input-group input-group-sm ">
						<input type="text" class="form-control" style="height: 2rem;"
							placeholder="Nhập từ khóa tìm kiếm" name="timkiem">
						<button class="btn btn-danger " type="submit" formaction="search">
							<i class="fas fa-search"></i> Tìm kiếm
						</button>
					</div>
				</form>
			</div>
			<div class="dropdown col-sm-5  ps-5">
				<button class="btn btn-secondary dropdown-toggle ps-4" type="button"
					id="dropdownMenuButton" data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasWithBothOptions"
					aria-controls="offcanvasWithBothOptions" aria-expanded="false">
					<i class="fas fa-search"></i>
				</button>
				<div class="offcanvas offcanvas-start" data-bs-scroll="true"
					tabindex="-1" id="offcanvasWithBothOptions"
					aria-labelledby="offcanvasWithBothOptionsLabel">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Tìm
							kiếm sản phẩm</h5>
						<button type="button" class="btn-close"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body ">
						<div class="input-group input-group-sm">
							<input type="text" class="form-control" style="height: 2rem;"
								placeholder="Nhập từ khóa tìm kiếm">
							<button class="btn btn-danger " type="button">
								<i class="fas fa-search"></i> Tìm kiếm
							</button>
						</div>
						<div class="d-flex flex-column mt-5 mp-5">
							<div class="text-center">
								<div class="search-icons fs-1 my-2">
									<a href="#" style="text-decoration: none; color: black;"
										class="d-flex justify-content-around  ms-3"><i
										class='bx bx-bell pt-2' style="font-size: xx-large;"></i><br>
										<div class=" ms-3">Thông báo</div> </a>
								</div>
							</div>
							<div class="text-center">
								<div class="search-icons fs-1 my-2">
									<a href="#" style="text-decoration: none; color: black;"
										class="d-flex justify-content-around ms-3"><i
										class='bx bx-cart pt-2' style="font-size: xx-large;"></i><br>
										<div class=" ms-3">Giỏ hàng</div> </a>
								</div>
							</div>

							<div class="text-center">
								<div class="search-icons fs-1 my-2">
									<a href="" style="text-decoration: none; color: black;"
										class="d-flex justify-content-around ms-3"><i
										class='bx bxs-user-circle m pt-2' style="font-size: xx-large;"></i><br>
										<div class=" ms-3">Tài khoản</div> </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-4 d-flex justify-content-around ">
			<div class="text-center">
				<div class="search-icons">
					<a href="#" style="text-decoration: none; color: black;"><i
						class='bx bx-bell' style="font-size: xx-large;"></i><br>
						<div class="words">
							<fmt:message key="menu.home" />
						</div> </a>
				</div>
			</div>

			<c:if test="${not empty chuadangnhap }">
				<div class="text-center">
					<div class="search-icons">
						<a href="/asm2_webbansach/home/login"
							style="text-decoration: none; color: black;"><i
							class='bx bxs-user-circle m' style="font-size: xx-large;"></i><br>
							<div class="words">
								<fmt:message key="menu.user" />
							</div> </a>
					</div>
				</div>
			</c:if>
			<c:if test="${not empty dadangnhap }">
				<div class="text-center">
					<div class="search-icons">
						<a href="/asm2_webbansach/home/cart"
							style="text-decoration: none; color: black;"><i
							class='bx bx-cart' style="font-size: xx-large;"></i><br>
							<div class="words">Giỏ hàng</div> </a>
					</div>
				</div>
				<div class="text-center">
					<div class="search-icons">
						<a href="/asm2_webbansach/home/logout"
							style="text-decoration: none; color: black;"><i
							class='bx bx-log-out' style="font-size: xx-large;"></i><br>
							<div class="words">Đăng xuất</div> </a>
					</div>
				</div>
			</c:if>

		</div>
	</div>



	<div class="row p-4 m-0">
		<div class="col-1 " style="border-top: 1px solid silver; color: red;">
			<strong>
				<p style="font-size: large;">Cam kết</p>
			</strong>
		</div>
		<div class="col-2 " style="border-top: 1px solid silver;">
			<strong>
				<p style="border-right: 1px solid silver;">
					<i class='bx bxs-check-circle mx-2' style="color: red;"></i>100%
					hàng thật
				</p>
			</strong>
		</div>
		<div class="col-3" style="border-top: 1px solid silver;">
			<strong>
				<p style="border-right: 1px solid silver;">
					<i class='bx bx-refresh mx-2' style="color: red;"></i>Hoàn 200% nếu
					hàng giả
				</p>
			</strong>
		</div>
		<div class="col-2 " style="border-top: 1px solid silver;">
			<strong>
				<p style="border-right: 1px solid silver;">
					<i class='bx bxs-box ' style="color: red;"></i>30 ngày đổi trả
				</p>
			</strong>
		</div>
		<div class="col-2 " style="border-top: 1px solid silver;">
			<strong>
				<p style="border-right: 1px solid silver;">
					<i class='bx bx-accessibility mx-2' style="color: red;"></i>Giao
					nhanh 2d
				</p>
			</strong>
		</div>
		<div class="col-2 " style="border-top: 1px solid silver;">
			<strong>
				<p style="border-right: 1px solid silver;">
					<i class='bx bxs-discount ' style="color: red;"></i>Giá siêu rẻ
				</p>
			</strong>
		</div>
	</div>
	<div style="position: absolute; background: rgba(255, 255, 255, 0.4);">
		<div class="d-flex">
			<div class="dropdown ">
				<button
					class="btn btn-secondary dropdown-toggle rounded-0 bg-danger fs-6 fw-medium border-0 d-block"
					type="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class='bx bx-menu'> </i> <span
						style="font-size: 15px; font-weight: bold;">DANH MỤC SẢN
						PHẨM</span>
				</button>
				<ul class="dropdown-menu rounded-0  top-0">
					<li><a class="dropdown-item text-danger fw-bold" href="#">Tất
							cả sản phẩm</a></li>
					<hr class="dropdown-divider">
					<li><a class="dropdown-item" href="#"><i
							class='bx bx-book-bookmark'></i> LỊCH SỬ, TRUYỀN THỐNG</a></li>
					<hr class="dropdown-divider">
					<li><a class="dropdown-item" href="#"><i
							class='bx bx-book-bookmark'></i> VĂN HỌC VIỆT NAM</a></li>
					<hr class="dropdown-divider">
					<li><a class="dropdown-item" href="#"><i
							class='bx bx-book-bookmark'></i> KIẾN THỨC, KHOA HỌC</a></li>
					<hr class="dropdown-divider">
					<li><a class="dropdown-item" href="#"><i
							class='bx bx-book-bookmark'></i> TRUYỆN TRANH</a></li>
				</ul>
			</div>
			<div class="dropdown">
				<button
					class="btn btn-secondary dropdown-toggle  d-block rounded-0  border-0"
					type="button"
					style="background: rgba(255, 255, 255, 0.0); color: #333333; font-size: 15px; font-weight: bold;"
					data-bs-toggle="dropdown" aria-expanded="false">TIN TỨC</button>
				<ul class="dropdown-menu rounded-0  top-0">
					<li><a class="dropdown-item" href="#">Action</a></li>
					<li><a class="dropdown-item" href="#">Another action</a></li>
					<li><a class="dropdown-item" href="#">Something else here</a></li>
				</ul>
			</div>
			<div class="dropdown">
				<button
					class="btn btn-secondary dropdown-toggle rounded-0  col-10 border-0 "
					type="button"
					style="background: rgba(255, 255, 255, 0.0); color: #333333; font-size: 15px; font-weight: bold;"
					data-bs-toggle="dropdown" aria-expanded="false">GIỚI THIỆU
				</button>
				<ul class="dropdown-menu rounded-0  top-0">
					<li><a class="dropdown-item" href="#">Action</a></li>
					<li><a class="dropdown-item" href="#">Another action</a></li>
					<li><a class="dropdown-item" href="#">Something else here</a></li>
				</ul>
			</div>

		</div>
</body>
</html>