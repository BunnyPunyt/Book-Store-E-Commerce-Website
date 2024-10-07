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
header {
	background-color: brown;
	position: relative;
	font-variant: small-caps;
}

.shopping-mall {
	position: relative;
	font-variant: small-caps;
	padding: 20px;
	display: flex;
	flex-direction: column;
	align-content: flex-start;
	justify-content: flex-end;
}

.shopping-mall>h1 {
	font-family: Impact;
	font-size: 50px;
	color: white;
	letter-spacing: 0.3px;
	text-shadow: 0 0 2px black;
	padding-bottom: 10px;
	margin: 0;
}

.shopping-mall>h5 {
	margin-top: 5px;
	letter-spacing: 0.5px;
	color: aliceblue
}

aside {
	padding: 20px;
}

footer {
	background-color: grey;
	color: white;
}

.col-sm-3 {
	flex: 0 0 auto;
	width: 273px;
}

.polycart {
	margin-top: 5px;
}

.poly-cart {
	padding: 0px;
	margin: 0px;
	list-style: none;
	font-variant: small-caps;
}

.poly-cart .cards-heading strong {
	font-variant: small-caps;
	font-size: larger;
	text-shadow: 0 0 2px darkgray;
}

.ms-auto {
	margin-left: auto !important;
	display: flex;
}

.card-body {
	display: flex;
	align-items: center;
}

.dropdown-menu2 {
	display: flex;
	justify-content: space-between;
}

.poly-prod {
	text-align: center;
	padding: 5px;
}

.poly-prod .card-body {
	height: 150px;
	max-width: 95%;
}

.card-heading {
	background-color: whitesmoke;
}

.card-footer {
	background-color: whitesmoke;
}

.card {
	padding: 20px;
}

p {
	text-align: center;
}

html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

.social-media {
	display: flex;
	gap: 20px;
}

.social-link {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	background-color: #6c4e3f;
	color: #fff;
	border-radius: 50%;
	transition: background-color 0.3s;
}

.social-link:hover {
	background-color: #816048;
}

.cafe-info {
	text-align: center;
	font-size: 16px;
	line-height: 1.5;
}

.cafe-info h3 {
	margin-bottom: 10px;
}

.contact-info {
	font-size: 16px;
	line-height: 1.5;
}

.contact-info p {
	margin: 15px 0;
	display: flex;
	align-items: center;
}

.contact-info i {
	margin-right: 10px;
	font-size: 20px;
}

.contact-info a {
	color: #fff;
	text-decoration: none;
	transition: color 0.3s;
}

.contact-info a:hover {
	color: #c4b0a4;
}

.btn-hover {
	position: relative;
	display: inline-block;
	padding: 10px 20px;
	background-color: brown;
	color: white;
	border: none;
	cursor: pointer;
	overflow: hidden;
}

.btn-hover .default-text, .btn-hover .hover-text {
	display: inline-block;
	transition: opacity 0.3s ease, transform 0.3s ease;
}

.btn-hover .hover-text {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	opacity: 0;
}

.btn-hover:hover .default-text {
	opacity: 0;
	transform: translateY(20px);
}

.btn-hover:hover .hover-text {
	opacity: 1;
	transform: translate(-50%, -50%);
}
</style>

<body>
	<div class="col-12 "></div>
	<div class="container col-12  m-0" style="padding-top: 50px">


		<div class="row justify-content-between " id="hehe">
			<aside class="col-3  ">

				<strong style="padding-left: 20px;">Kết quả: 89 sản phẩm</strong>
				<div class="poly-cart mt-2 mb-2">
					<form action="home" method="post">
							<label class="form-label fs-3">Thể loại <button class="btn btn-danger " type="submit" formaction="phanloai">
							<i class="fas fa-search"></i> Tìm kiếm
						</button></label> <br> <select
								class="form-select" aria-label="Default select example"
								name="theloai">
								<option value="DM001">Trinh thám</option>
								<option value="DM002">Kinh dị</option>
								<option value="DM003">Học tập</option>
								<option value="DM004">Truyện tranh</option>
								<option value="DM005">Tài liệu</option>
							</select>
					</form>
				</div>



<!-- 				<div class="poly-cart mt-2 mb-2">
					<div class="accordion" id="accordionPanelsStayOpenExample">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse"
									data-bs-target="#panelsStayOpen-collapseOne1"
									aria-expanded="true"
									aria-controls="panelsStayOpen-collapseOne3">
									<i class='bx bx-menu'>SÁCH GIÁO KHOA</i>
								</button>
							</h2>
							<div id="panelsStayOpen-collapseOne1"
								class="accordion-collapse collapse show">
								<ul class=" list-group ">
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà xanh'">VẬT LÍ <span
											class="badge text-bg-secondary"> 2</span></li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà đen'">TOÁN <span
											class="badge text-bg-secondary"> 3</span>
									</li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà olong'">SINH HỌC <span
											class="badge text-bg-secondary"> 2</span></li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà atiso'">HÓA HỌC <span
											class="badge text-bg-secondary"> 3</span></li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà thảo mộc'">TIẾNG ANH <span
											class="badge text-bg-secondary"> 3 </span></li>
									</a>
								</ul>
							</div>
						</div>

					</div>
				</div> -->

				<!-- <div class="poly-cart mt-2 mb-2">
					<div class="accordion" id="accordionPanelsStayOpenExample">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse"
									data-bs-target="#panelsStayOpen-collapseOne2"
									aria-expanded="true"
									aria-controls="panelsStayOpen-collapseOne3">
									<i class='bx bx-menu'>LỊCH SỬ - ĐỊA LÍ</i>
								</button>
							</h2>
							<div id="panelsStayOpen-collapseOne2"
								class="accordion-collapse collapse show">
								<ul class=" list-group ">
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà xanh'">Trà xanh <span
											class="badge text-bg-secondary"> 2</span></li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà đen'">Trà đen <span
											class="badge text-bg-secondary"> 3</span>
									</li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà olong'">Trà ô long <span
											class="badge text-bg-secondary"> 2</span></li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà atiso'">Trà Atiso <span
											class="badge text-bg-secondary"> 3</span></li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà thảo mộc'">Trà thảo mộc <span
											class="badge text-bg-secondary"> 3 </span></li>
									</a>
								</ul>
							</div>
						</div>

					</div>
				</div> -->
				<!-- <div class="poly-cart mt-2 mb-2">
					<div class="accordion" id="accordionPanelsStayOpenExample">
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse"
									data-bs-target="#panelsStayOpen-collapseOne3"
									aria-expanded="true"
									aria-controls="panelsStayOpen-collapseOne3">
									<i class='bx bx-menu'>THIẾU NHI</i>
								</button>
							</h2>
							<div id="panelsStayOpen-collapseOne3"
								class="accordion-collapse collapse show">
								<ul class=" list-group ">
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà xanh'">DORAEMON <span
											class="badge text-bg-secondary"> 2</span></li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà đen'">THÁM TỬ LỪNG DANH CONAN <span
											class="badge text-bg-secondary"> 3</span>
									</li>
									</a>
									<a class=" list-group-item list-group-item-action ">
										<li class="" style="list-style-type: none;"
										ng-click="keyword='trà olong'">Trà ô long <span
											class="badge text-bg-secondary"> 2</span></li>
									</a>

								</ul>
							</div>
						</div>

					</div>
				</div> -->
			</aside>
			<article class="col-9 ps-5">



				<div class="row ">
					<c:forEach var="bookItems" items="${books}">
						<div class="card col-md-3">
							<th scope="row"><a
								href="/asm2_webbansach/home/bookdetail?id=${bookItems.maSP}"><img
									src="/asm2_webbansach/img/${bookItems.hinhchinh }"
									style="height: 200px;"></a></th>
							<td>${bookItems.tenSP }</td> <br />
							<td>${bookItems.gia }VNĐ</td> <br /> <br />

							<!-- <button class="btn-hover btn-primary"
									style="width: 27.5%; position: absolute; bottom: 35%;">
									<span class="default-text"><i class='bx bx-cart'></i></span> <span
										class="hover-text " style="font-size: x-small;"
										ng-click="insert(p)">Thêm vào giỏ hàng</span>
								</button> -->

						</div>
					</c:forEach>

					<!-- <div class="card col-md-3"
						ng-repeat="p in products | filter:keyword |orderBy:order| limitTo: limit  : start">
						<th scope="row"><a href="#!listdetail/{{p.id}}"><img
								src="/ASM1_JAVA4/img/conan1.jpg" style="height: 200px;"></a></th>
						<td>{{p.name | uppercase}}</td>
						<br />
						<td>{{p.price | number :3}}VNĐ</td> <br />
						<br />
						<td>{{p.purchase}} lượt mua</td>

						<button class="btn-hover btn-primary"
							style="width: 27.5%; position: absolute; bottom: 35%;">
							<span class="default-text"><i class='bx bx-cart'></i></span> <span
								class="hover-text " style="font-size: x-small;"
								ng-click="insert(p)">Thêm vào giỏ hàng</span>
						</button>
						</tr>


					</div>
					<div class="card col-md-3"
						ng-repeat="p in products | filter:keyword |orderBy:order| limitTo: limit  : start">
						<th scope="row"><a href="#!listdetail/{{p.id}}"><img
								src="/ASM1_JAVA4/img/conan1.jpg" style="height: 200px;"></a></th>
						<td>{{p.name | uppercase}}</td>
						<br />
						<td>{{p.price | number :3}}VNĐ</td> <br />
						<br />
						<td>{{p.purchase}} lượt mua</td>

						<button class="btn-hover btn-primary"
							style="width: 27.5%; position: absolute; bottom: 35%;">
							<span class="default-text"><i class='bx bx-cart'></i></span> <span
								class="hover-text " style="font-size: x-small;"
								ng-click="insert(p)">Thêm vào giỏ hàng</span>
						</button>
						</tr>


					</div>
					<div class="card col-md-3"
						ng-repeat="p in products | filter:keyword |orderBy:order| limitTo: limit  : start">
						<th scope="row"><a href="#!listdetail/{{p.id}}"><img
								src="/ASM1_JAVA4/img/conan1.jpg" style="height: 200px;"></a></th>
						<td>{{p.name | uppercase}}</td>
						<br />
						<td>{{p.price | number :3}}VNĐ</td> <br />
						<br />
						<td>{{p.purchase}} lượt mua</td>

						<button class="btn-hover btn-primary"
							style="width: 27.5%; position: absolute; bottom: 35%;">
							<span class="default-text"><i class='bx bx-cart'></i></span> <span
								class="hover-text " style="font-size: x-small;"
								ng-click="insert(p)">Thêm vào giỏ hàng</span>
						</button>
						</tr>


					</div>
					<div class="card col-md-3"
						ng-repeat="p in products | filter:keyword |orderBy:order| limitTo: limit  : start">
						<th scope="row"><a href="#!listdetail/{{p.id}}"><img
								src="/ASM1_JAVA4/img/conan1.jpg" style="height: 200px;"></a></th>
						<td>{{p.name | uppercase}}</td>
						<br />
						<td>{{p.price | number :3}}VNĐ</td> <br />
						<br />
						<td>{{p.purchase}} lượt mua</td>

						<button class="btn-hover btn-primary"
							style="width: 27.5%; position: absolute; bottom: 35%;">
							<span class="default-text"><i class='bx bx-cart'></i></span> <span
								class="hover-text " style="font-size: x-small;"
								ng-click="insert(p)">Thêm vào giỏ hàng</span>
						</button>
						</tr>


					</div>
					<div class="card col-md-3"
						ng-repeat="p in products | filter:keyword |orderBy:order| limitTo: limit  : start">
						<th scope="row"><a href="#!listdetail/{{p.id}}"><img
								src="/ASM1_JAVA4/img/conan1.jpg" style="height: 200px;"></a></th>
						<td>{{p.name | uppercase}}</td>
						<br />
						<td>{{p.price | number :3}}VNĐ</td> <br />
						<br />
						<td>{{p.purchase}} lượt mua</td>

						<button class="btn-hover btn-primary"
							style="width: 27.5%; position: absolute; bottom: 35%;">
							<span class="default-text"><i class='bx bx-cart'></i></span> <span
								class="hover-text " style="font-size: x-small;"
								ng-click="insert(p)">Thêm vào giỏ hàng</span>
						</button>
						</tr>


					</div>
					<div class="card col-md-3"
						ng-repeat="p in products | filter:keyword |orderBy:order| limitTo: limit  : start">
						<th scope="row"><a href="#!listdetail/{{p.id}}"><img
								src="/ASM1_JAVA4/img/conan1.jpg" style="height: 200px;"></a></th>
						<td>{{p.name | uppercase}}</td>
						<br />
						<td>{{p.price | number :3}}VNĐ</td> <br />
						<br />
						<td>{{p.purchase}} lượt mua</td>

						<button class="btn-hover btn-primary"
							style="width: 27.5%; position: absolute; bottom: 35%;">
							<span class="default-text"><i class='bx bx-cart'></i></span> <span
								class="hover-text " style="font-size: x-small;"
								ng-click="insert(p)">Thêm vào giỏ hàng</span>
						</button>
						</tr>


					</div>
					<div class="card col-md-3"
						ng-repeat="p in products | filter:keyword |orderBy:order| limitTo: limit  : start">
						<th scope="row"><a href="#!listdetail/{{p.id}}"><img
								src="/ASM1_JAVA4/img/conan1.jpg" style="height: 200px;"></a></th>
						<td>{{p.name | uppercase}}</td>
						<br />
						<td>{{p.price | number :3}}VNĐ</td> <br />
						<br />
						<td>{{p.purchase}} lượt mua</td>

						<button class="btn-hover btn-primary"
							style="width: 27.5%; position: absolute; bottom: 35%;">
							<span class="default-text"><i class='bx bx-cart'></i></span> <span
								class="hover-text " style="font-size: x-small;"
								ng-click="insert(p)">Thêm vào giỏ hàng</span>
						</button>
						</tr>


					</div> -->
				</div>





			</article>

		</div>
	</div>

	<div class="col-12"></div>
	<!-- PRODUCT HOT -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
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