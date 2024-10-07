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
.carousel {
	max-width: 100%;
	height: auto;
	position: relative;
	display: block;
	margin: 0 auto;
}

.carousel img {
	width: 100% !important;
	height: 100% !important;
	display: block;
}

.ms-3 a.active {
	color: #C92127;
	cursor: pointer;
	border-bottom: #C92127 solid 5px;
	font-weight: bold;
	margin-top: 1px;
}

img {
	width: 100%;
	height: 100%;
	object-fit: contain;
}

.fw-bold:hover {
	background-color: #FCDDEF;
}
</style>

<body>

	<div class="col-12"></div>
	<div class="container ">
		<!-- SLIDERS   -->
		<div id="carouselExample" class="carousel slide">
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="2000">
					<img src="/asm2_webbansach/img/ms_banner_img1.webp" class=" img-fluid"
						alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img src="/asm2_webbansach/img/ms_banner_img3.webp " class="  img-fluid"
						alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img src="/asm2_webbansach/img/ms_banner_img5.webp" class="img-fluid"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExample" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExample" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
			<div
				style="position: absolute; top: 0%; left: 10%; right: 10%; background: rgba(255, 255, 255, 0.4);">
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
							data-bs-toggle="dropdown" aria-expanded="false">TIN TỨC
						</button>
						<ul class="dropdown-menu rounded-0  top-0">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul>
					</div>
					<div class="dropdown">
						<button
							class="btn btn-secondary dropdown-toggle rounded-0  col-10 border-0 "
							type="button"
							style="background: rgba(255, 255, 255, 0.0); color: #333333; font-size: 15px; font-weight: bold;"
							data-bs-toggle="dropdown" aria-expanded="false">GIỚI
							THIỆU</button>
						<ul class="dropdown-menu rounded-0  top-0">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<!-- SLIDERS   -->
		<!-- PRODUCT HOT -->
		<img src="/ASM1_JAVA4/img/banner3.webp"
			class="img-fluid mt-3 mb-3 d-block" alt="">
		<div class="container p-0 ">
			<div class="card-title fw-bold mt-2 pb-1"
				style="background-color: #FCDDEF; border-top-left-radius: 10px; border-top-right-radius: 10px;">
				<i class='bx bx-line-chart-down fs-4 ms-2 mt-1'></i> MUA SẮM THỊNH
				HÀNH
			</div>
			<div class=" ms-3 me-3 mt-2 "
				style="border-bottom: #333333 solid 1px;">
				<a href="#" class="text-decoration-none text-black ms-3 active"><span
					class="">Xu Hướng Theo Ngày</span></a> <a href="#"
					class="text-decoration-none text-black ms-3"><span class="">Sách
						Hot</span></a>
			</div>
			<div class="mt-3 mb-3 row d-flex justify-content-sm-center ">
				<c:forEach var="bookItems" items="${books}">
					<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
						style="width: 18rem;">
						<img src="/asm2_webbansach/img/${bookItems.hinhchinh }"
							class="card-img-top img-fluid">
						<div class="card-body">
							<h5 class="card-title fs-6">${bookItems.tenSP }</h5>
							<p class="card-text fs-5 fw-bold text-danger">${bookItems.gia }
								vnđ</p>
						</div>
					</div>
				</c:forEach>
				<!-- <div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="//img/product1.webp" class="card-img-top img-fluid"
						alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div>
				<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="/ASM1_JAVA4/img/product1.webp"
						class="card-img-top img-fluid" alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div>
				<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="/ASM1_JAVA4/img/product1.webp"
						class="card-img-top img-fluid" alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div>
				<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="/ASM1_JAVA4/img/product1.webp"
						class="card-img-top img-fluid " alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div> -->
			</div>
			<div class="d-flex justify-content-center">
			<form action="home" method="post">
				<button class="fw-bold rounded-2 p-2 "
					style="color: #C92127; border: #C92127 solid 2px; text-decoration: none;" formaction="category">XEM
					THÊM</button>
			</form>
				
				<!-- <a href="#" class=" fw-bold rounded-2 p-2 "
					style="color: #C92127; border: #C92127 solid 2px; text-decoration: none;">XEM
					THÊM</a> -->
			</div>
		</div>
		<!-- PRODUCT HOT -->
		<!-- PRODUCT MANGA -->
		<img src="img/banner_home_pro_4.webp"
			class="img-fluid mt-3 mb-3 d-block" alt="">
		<div class="container p-0 ">
			<div class="card-title fw-bold mt-2 pb-1"
				style="background-color: #FCDDEF; border-top-left-radius: 10px; border-top-right-radius: 10px;">
				<i class='bx bxs-balloon fs-4 ms-2 mt-1'></i> MANGA
			</div>
			<div class="mt-3 mb-3 row d-flex justify-content-sm-center ">
				<c:forEach var="bookItems" items="${books}">
					<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
						style="width: 18rem;">
						<img src="/asm2_webbansach/img/${bookItems.hinhchinh }"
							class="card-img-top img-fluid">
						<div class="card-body">
							<h5 class="card-title fs-6">${bookItems.tenSP }</h5>
							<p class="card-text fs-5 fw-bold text-danger">${bookItems.gia }
								vnđ</p>
						</div>
					</div>
				</c:forEach>
				<!-- <div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="/ASM1_JAVA4/img/product1.webp"
						class="card-img-top img-fluid" alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div>
				<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="/ASM1_JAVA4/img/product1.webp"
						class="card-img-top img-fluid" alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div>
				<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="/ASM1_JAVA4/img/product1.webp"
						class="card-img-top img-fluid" alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div>
				<div class="card col-md-4 col-sm-3 col-lg-6 col-xl-12 border-0 p-0"
					style="width: 18rem;">
					<img src="/ASM1_JAVA4/img/product1.webp"
						class="card-img-top img-fluid " alt="...">
					<div class="card-body">
						<h5 class="card-title fs-6">Doraemon - Movie Story Màu -
							Nobita Và Bản Giao Hưởng Địa Cầu</h5>
						<p class="card-text fs-5 fw-bold text-danger">35.000 đ</p>
					</div>
				</div> -->
			</div>
			<div class="d-flex justify-content-center">
				<form action="home" method="post">
				<button class="fw-bold rounded-2 p-2 "
					style="color: #C92127; border: #C92127 solid 2px; text-decoration: none;" formaction="category">XEM
					THÊM</button>
			</form>
			</div>
		</div>
		<!-- PRODUCT MANGA -->
		<!-- BANNER PARTNER -->
		<div id="carouselExample1" class="carousel slide mt-2   ">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="/asm2_webbansach/img/z5647613806443_4c80ee43b6e50c42f9b5d3402597ffc4.jpg"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="/asm2_webbansach/img/z5647613828225_e3f34a86fa9d426db23891d5e1d317e5.jpg"
						class="d-block w-100 " alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExample1" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExample1" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- BANNER PARTNER -->
	</div>
	<div class="col-12"></div>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			$(".text-decoration-none").click(function(e) {
				e.preventDefault(); // Prevent the default link behavior
				$(".text-decoration-none").removeClass("active");
				$(this).addClass("active");
			});
		});
	</script>
</body>
</html>