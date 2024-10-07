<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!-- or -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>
<body>


    <div class="row  p-0 m-0">
        <div class="col-2" style="background-color: #379ab1; ">
            <div class=" " style="padding-top:80px; padding-left: 60px;"><a href="#1"
                    style="color:aliceblue; font-size: large; text-decoration: none;"><i class='bx bx-bar-chart'></i>
                    Dashboard</a></div>
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
            <div class=" " style="padding-top:50px; padding-left: 60px;"><a href="#4"
                    style="color:aliceblue; font-size: large;text-decoration: none"><i class='bx bx-cart'></i> Đơn
                    hàng</a></div>
            <div class=" " style="padding-top:250px; padding-left: 60px; padding-bottom: 30px;"><a href="#4"
                    style="color:aliceblue; font-size: large;text-decoration: none"><i class='bx bx-log-out'></i>
                    Thoát</a></div>
        </div>


        <div class="col-10 p-0 m-0">
            <div class="col-12">
                <div class="row p-0 m-0">
                    <h1 class="col-6" style="padding-left: 10px;background-color: #D9D9D9;  ">Dashboard</h1>
                    <h2 class="col-6" style="padding-left: 500px; font-size: 20px; background-color: #D9D9D9;"><i
                            class='bx bx-user'></i>MuMeii</h2>

                    <div class="col-12 m-0" style="background-color: #e1e0e0; ">
                        <h2 style="border-bottom: 1px grey;">Chi tiết đơn hàng</h2>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">First</th>
                                    <th scope="col">Last</th>
                                    <th scope="col">Handle</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td colspan="2">Larry the Bird</td>
                                    <td>@twitter</td>
                                </tr>
                             
                            </tbody>
                           
                        </table>
                       <nav aria-label="Page navigation example ">
                        <ul class="pagination justify-content-center">
                              <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                  <span aria-hidden="true">&laquo;</span>
                                </a>
                              </li>
                              <li class="page-item"><a class="page-link" href="#">1</a></li>
                              <li class="page-item"><a class="page-link" href="#">2</a></li>
                              <li class="page-item"><a class="page-link" href="#">3</a></li>
                              <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                  <span aria-hidden="true">&raquo;</span>
                                </a>
                              </li>
                            </ul>
                          </nav> 

                    </div>
                </div>
            </div>
        </div>
</body>
</html>