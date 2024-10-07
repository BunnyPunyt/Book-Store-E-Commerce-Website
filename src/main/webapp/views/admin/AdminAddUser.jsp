<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add User</title>
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


	<div class="row p-0 m-0">
		<div class="col-2" style="background-color: #379ab1;">
			<div class=" " style="padding-top: 80px; padding-left: 60px;">
				<a href="#1"
					style="color: aliceblue; font-size: large; text-decoration: none;"><i
					class='bx bx-bar-chart'></i> Dashboard</a>
			</div>
			<div class=" " style="padding-top: 50px; padding-left: 60px;">
				<a href="${pageContext.request.contextPath}/userList"
					style="color: aliceblue; font-size: large; text-decoration: none"><i
					class='bx bx-user'></i> Người dùng</a>
			</div>
			<div class=" " style="padding-top: 50px; padding-left: 60px;">
				<a href="${pageContext.request.contextPath}/adminBookList"
					style="color: aliceblue; font-size: large; text-decoration: none"><i
					class='bx bx-user-open'></i> Sản phẩm</a>
			</div>
			<div class=" " style="padding-top: 50px; padding-left: 60px;">
				<a href="#4"
					style="color: aliceblue; font-size: large; text-decoration: none"><i
					class='bx bx-cart'></i> Đơn hàng</a>
			</div>
			<div class=" "
				style="padding-top: 250px; padding-left: 60px; padding-bottom: 30px;">
				<a href="#4"
					style="color: aliceblue; font-size: large; text-decoration: none"><i
					class='bx bx-log-out'></i> Thoát</a>
			</div>
		</div>


		<div class="col-10 p-0 m-0">
			<div class="col-12">
				<div class="row p-0 m-0">
					<h1 class="col-6"
						style="padding-left: 10px; background-color: #D9D9D9;">Dashboard</h1>
					<h2 class="col-6"
						style="padding-left: 500px; font-size: 20px; background-color: #D9D9D9;">
						<i class='bx bx-user'></i>MuMeii
					</h2>

					<div class="col-12 m-0" style="background-color: #e1e0e0;">
						<div class="container mb-5">
							<h2>ADD User</h2>
							<h2>${message }</h2>
							<form class="${pageContext.request.contextPath}/user/add row" method="POST">
								<div class="mb-3">
									<label class="form-label">User ID</label> <input type="text"
										class="form-control" name="maND">
								</div>
								<div class="mb-3">
									<label class="form-label">Password</label> <input
										type="password" class="form-control" name="matkhau">
								</div>
								<div class="mb-3">
									<label class="form-label">Fullname</label> <input type="text"
										class="form-control" name="hoten">
								</div>
								<div class="mb-3">
									<label class="form-label">Email</label> <input type="email"
										class="form-control" name="email">
								</div>
								<div class="mb-3">
									<label class="form-label">Phone number</label> <input
										type="text" class="form-control" name="sdt">
								</div>
								<div class="mb-3">
									<label class="form-label">Role</label> <br> <input
										type="radio" name="vaitro" value="admin" checked /> Admin <input
										type="radio" name="vaitro" value="staff" /> Staff
								</div>
								<div class="mb-3">
									<label class="form-label">Address</label> <input type="text"
										class="form-control" name="sonha">
								</div>
								<div class="col-md-6">
									<label class="form-label">Province or City</label> <input
										type="text" class="form-control" name="tinhtp">
								</div>
								<div class="col-md-6">
									<label class="form-label">District</label> <input type="text"
										class="form-control" name="quanhuyen">
								</div>

								<div class=" col-11 mt-3 d-flex justify-content-between">
									<div class="col-12 ">
										<button type="submit" class="btn btn-primary"
											name="addUserButton" formaction="${pageContext.request.contextPath}/user/add">Submit</button>
									</div>
									<div class="col-12 ">
										<button class="btn btn-info ">
											<a class="text-decoration-none text-dark"
												href="${pageContext.request.contextPath}/userList">List of Users</a>
										</button>
									</div>
								</div>



							</form>

						</div>


					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>