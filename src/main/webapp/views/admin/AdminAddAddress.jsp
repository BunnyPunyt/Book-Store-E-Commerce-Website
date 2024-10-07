<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update User</title>
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


						<c:if test="${not empty userId}">
							<div class="add-form-container">
								<h3>Add Address</h3>
								<form action="${pageContext.request.contextPath}/address/add"
									method="POST">
									<input type="hidden" name="userId" value="${userId}">
									<div class="mb-3">
										<label class="form-label">Address</label> <input type="text"
											class="form-control" name="sonha" required>
									</div>
									<div class="mb-3">
										<label class="form-label">Province or City</label> <input
											type="text" class="form-control" name="tinhtp" required>
									</div>
									<div class="mb-3">
										<label class="form-label">District</label> <input type="text"
											class="form-control" name="quanhuyen" required>
									</div>
									<button type="submit" class="btn btn-primary">Add
										Address</button>
								</form>
							</div>
						</c:if>
						<c:if test="${not empty message}">
							<p>${message}</p>
							<button class="btn btn-info ">
							<a class="text-decoration-none text-dark"
								href="${pageContext.request.contextPath}/userList">List of Users</a>
						</button>
						</c:if>
						<c:if test="${not empty error}">
							<p>${error}</p>
						

						<button class="btn btn-info ">
							<a class="text-decoration-none text-dark"
								href="${pageContext.request.contextPath}/userList">List of Users</a>
						</button>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>
