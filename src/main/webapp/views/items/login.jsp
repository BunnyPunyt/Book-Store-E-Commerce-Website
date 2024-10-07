<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
a {
	color: black;
	text-decoration: none;
}

.mt-2 a.active {
	color: #C92127;
	cursor: pointer;
	border-bottom: #C92127 solid 3px;
	font-weight: bold;
	border-radius: 5px;
	padding: 4px;
	margin-top: 1px;
}

img {
	width: 100%;
	height: 100%;
	object-fit: contain;
}
</style>

<body>
	<form action="home" method="post">
	<h2>${message }</h2>
		<div class="container p-0 m-0 w-100 ">
			<div class="mt-1 pt-1 pb-1 row text-center w-100 ms-1 "
				style="background-color: #f8f6f0;">
				<div class="bg-white p-0">
					<div class="  mt-2 pt-2 pb-2 ">
						<a href="#" class="text-decoration-none pe-5 ps-5 col-6 active ">Đăng
							Nhập</a> <a href="#" class="text-decoration-none pe-5 ps-5 col-6 ">Đăng
							Ký</a>
					</div>
					<div class="pt-3 mb-2 align-items-center position-relative "
						style="left: 25%;">
						<div class="row">
							<div class="col-6">
								<div>
									<span class="d-block text-start">Email</span>
								</div>
								<div>
									<input type="text"
										class="w-100 rounded-1 mt-1 border-2 border-danger"
										placeholder="Nhập email" name="email">
								</div>
							</div>
						</div>
						<div class="row mt-2">
							<div class="col-6">
								<div>
									<span class="d-block text-start">Mật Khẩu</span>
								</div>
								<div class="search-input">
									<div class="input-group input-group-sm ">
										<input type="text" class="form-control border-2 border-danger"
											style="height: 2rem;" placeholder="Mật Khẩu" name="password">
										<button class="btn btn-danger  " type="button">
											<i class='bx bxs-show'></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mt-2" style="margin-right: 38%;">
						<a href="#" class="text-danger">Quên Mật Khẩu?</a>
					</div>
					<div class="mt-4 mb-3 ">

						<button class=" fw-bold rounded-2 p-2" formaction="doLogin"
							style="background-color: white; color: #C92127; border: #C92127 solid 2px; text-decoration: none;">Đăng
							Nhập</button>
					</div>
				</div>

			</div>
		</div>
	</form>
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