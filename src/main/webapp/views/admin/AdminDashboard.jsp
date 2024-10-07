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


    <div class="row p-0 m-0">
        <div class="col-2" style="background-color: #379ab1; ">
            <div class=" " style="padding-top:80px; padding-left: 60px;"><a href="#1"
                    style="color:aliceblue; font-size: large; text-decoration: none;"><i class='bx bx-bar-chart'></i>
                    Dashboard</a></div>
            <div class=" " style="padding-top:50px; padding-left: 60px;"><a href="${pageContext.request.contextPath}/userList"
                    style="color:aliceblue; font-size: large;text-decoration: none"><i class='bx bx-user'></i> Người
                    dùng</a></div>
            <div class=" " style="padding-top:50px; padding-left: 60px;"><a href="${pageContext.request.contextPath}/adminBookList"
                    style="color:aliceblue; font-size: large;text-decoration: none"><i class='bx bx-book-open'></i> Sản
                    phẩm</a></div>
            <div class=" " style="padding-top:50px; padding-left: 60px;"><a href="#4"
                    style="color:aliceblue; font-size: large;text-decoration: none"><i class='bx bx-cart'></i> Đơn
                    hàng</a></div>
            <div class=" " style="padding-top:250px; padding-left: 60px; padding-bottom: 30px;"><a href="#4"
                    style="color:aliceblue; font-size: large;text-decoration: none"><i class='bx bx-log-out'></i>
                    Thoát</a></div>
        </div>


        <div class="col-10 p-0 m-0">
            <div class="col-12 p-0 m-0">
                <div class="row p-0 m-0">
                    <h1 class="col-6" style="padding-left: 10px;background-color: #D9D9D9;">Dashboard</h1>
                    <h2 class="col-6" style="padding-left: 500px; font-size: 20px; background-color: #D9D9D9;"><i
                            class='bx bx-user'></i>MuMeii</h2>
                    <div class="row p-0 m-0">
                        <div class="col-3">
                            <div class=" col-11 p-5 m-2" style="background-color: #e9e6e6">
                                <center><div class="col-12" style="font-size: larger;">Tổng doanh thu</div >
                                <div class="col-12" style="font-size:x-large;">19,567,500 vnd</div ></center>
                            </div>
                        </div>
                        <div class="col-3 ">
                            <div class=" col-9  p-5 m-1" style="background-color: #e9e6e6">
                                <center><div class="col-12"style="font-size: larger;">Người dùng</div>
                               <div class="col-12"style="font-size:x-large;">19</div></center> 
                            </div>
                        </div>
                        <div class="col-3 ">
                            <div class=" col-9 p-5 m-1" style="background-color: #e9e6e6">
                                <center> <div class="col-12" style="font-size: larger;">Sản phẩm</div>
                                <div class="col-12" style="font-size:x-large;">54</div></center>
                            </div>
                        </div>
                        <div class="col-3 ">
                            <div class=" col-9 p-5 m-1" style="background-color: #e9e6e6">
                                <center><div class="col-12" style="font-size: larger;">Đơn hàng</div >
                                <div class="col-12" style="font-size:x-large;">125</div ></center>
                            </div>
                        </div>
                        <div class="col-12 m-3 " style="background-color: #e9e6e6; ">
                            <div class=" col-12 p-5 m-1" style="background-color: #e9e6e6">
                                <table class="table">
                                    <button class="btn btn-primary">TOP SẢN PHẨM</button ><button class="btn btn-primary">TOP ĐƠN HÀNG</button>
                                    <thead>
                                      <tr>
                                        <th scope="col">#</th>
                                        <th scope="col"></th>
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
                                
                            </div>
                        </div>
                    </div>
                   

                    </div>
                </div>
            </div>

        </div>
</body>
</html>