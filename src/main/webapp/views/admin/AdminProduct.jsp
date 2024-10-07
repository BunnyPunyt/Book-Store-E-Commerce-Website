<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book List</title>
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
		<!-- Thông tin sản phẩm -->

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
						<div class="d-flex justify-content-between">
							<div>
								<h2 style="border-bottom: 1px grey;">Thông tin sách</h2>
							</div>
							<div class="p-1">
								<button class="btn btn-info ">
									<a class="text-decoration-none text-dark"
										href="${pageContext.request.contextPath}/book/add">Add new
										Book</a>
								</button>
							</div>
						</div>

						<table class="table border border-dark">
							<thead class="thead-dark font-weight-bold bg-dark text-white">
								<tr class="table-header">
									<td>No.</td>
									<td>Book ID</td>
									<td>Category ID</td>
									
									<td>Book Title</td>
									<td>Price</td>
									<td>Author</td>
									<td>Publisher</td>
									<td>Description</td>
									<td>Date add</td>
									<td>Image</td>
									<td>&nbsp;</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="b" items="${listBooks}" varStatus="status">
									<tr>
										<td>${status.count}</td>
										<td>${b.maSP}</td>
										<td>${b.category.maDM}</td>
										
										<td>${b.tenSP}</td>
										<td>${b.gia} VNĐ</td>
										<td>${b.tacgia}</td>
										<td>${b.nxb}</td>
										<td>${b.mota}</td>
										<td>${b.ngaythem}</td>
										<td><img src="./img/${b.hinhchinh}" alt="${b.tenSP}"
											width="100"></td>
										<td>
											<button class="btn btn-primary ">
												<a class="text-decoration-none text-light"
													href="${pageContext.request.contextPath}/book/edit?id=${b.maSP}">Edit</a>
											</button> |
											<button class="btn btn-danger ">
												<a class="text-decoration-none text-light"
													href="${pageContext.request.contextPath}/book/delete?id=${b.maSP}">Delete</a>
											</button>

										</td>
									</tr>
								</c:forEach>
							</tbody>
							
						</table>
						<a href="${pageContext.request.contextPath}/adminBookList/export" class="btn btn-primary">Export to Excel</a>
						<nav aria-label="Page navigation example ">
							<ul class="pagination justify-content-center">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>


					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
