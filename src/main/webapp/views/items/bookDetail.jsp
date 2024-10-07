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
<body>
	<div class="col-12 "></div>
	<div class="  col-12" style="padding-top: 50px">
		<div class="row p-0 m-2">




			<div class="col-4 p-0">
				<img class="ps-5 w-75 h-75"
					src="/asm2_webbansach/img/${book.hinhchinh }">

				<fieldset>

					<c:forEach var="imgGalery" items="${galery}">
						<img class="img-thumbnail"
							src="/asm2_webbansach/img/${imgGalery.img}"
							style="height: 100px; max-width: 100%;" />

					</c:forEach>


				</fieldset>
			</div>

			<div class="col-7 ms-5">
				<div class="">
					<h4>${book.tenSP }</h4>

					<div class="rating">
						<span class="star" style="color: yellow;">&#9733;</span> <span
							class="star" style="color: yellow;">&#9733;</span> <span
							class="star" style="color: yellow;">&#9733;</span> <span
							class="star" style="color: yellow;">&#9733;</span> <span
							class="star" style="color: yellow;">&#9733;</span> <span
							style="color: red;">(5.0)</span>
					</div>
					<h4 class="p-2"
						style="border-top: 1px solid grey; border-bottom: 1px solid grey; color: red">Giá:
						${book.gia } vnđ</h4>
				</div>
				<div class="mt-5 row col-12">
					<div class="col-8">
						<h5>Mã SP: ${book.maSP }</h5>
						<h5>NXB: ${book.nxb }</h5>
						<h5>Ngày thêm: ${book.ngaythem }</h5>
					</div>
					<form action="home" method="post">
						<input type="hidden" class="form-control" name="maSP"
							value="${book.maSP }"> 
						<%-- <input type="hidden"
							class="form-control" name="maCTS" value="${bookdetail.maCTS }"> --%>
						<div class="col-4">
							<label class="form-label">Season</label> <br> <select
								class="form-select" aria-label="Default select example"
								name="season">
								<c:forEach var="bitems" items="${bookdetail }">
									<option value="${bitems.mua }">Season ${bitems.mua }</option>
								</c:forEach>
							</select>

							<button class="btn btn-danger col-10 mt-3" formaction="addToCart">Thêm
								vào giỏ hàng</button>
							<button class="btn btn-danger col-10 mt-1">Mua ngay</button>
						</div>
						<h2>${message }</h2>
					</form>
				</div>
				<div class="mt-5">
					<h5>15 lượt mua</h5>
				</div>

			</div>
		</div>
	</div>


	<div class="row col-12 mt-5">

		<div class="row">
			<div class="col-8 m-3 pt-5">
				<div class="" style="background-color: rgba(229, 119, 119, 0.4);">
					<button
						class="btn btn-secondary  rounded-0 bg-danger fs-6 fw-medium border-0 d-block"
						type="button" aria-expanded="false">
						<span style="font-size: 15px; font-weight: bold;">MÔ TẢ -
							ĐÁNH GIÁ</span>
					</button>
				</div>

				<div class="detail container p-3"
					style="background-color: rgba(240, 218, 218, 0.4); border-left: 1px solid rgb(207, 205, 205); border-right: 1px solid rgb(200, 198, 198)">
					<span> “SMERSH. Vậy ra đây là đáp án - tệ nhất trong số các
						đáp án.” Trong cuốn tiểu thuyết này của tác giả Ian Fleming, James
						Bond phải đối mặt với lệnh hành hình của cơ quan phản gián SMERSH.
						SMERSH là viết tắt của “Án tử cho gián điệp”, và chẳng mật vụ nào
						chúng muốn huỷ hoại hơn 007. Nhưng để đánh bẫy đặc vụ số một của
						Cục Tình báo Anh Quốc, chúng cần một mồi nhử hấp dẫn đến độ bất
						khả chối từ. Và đó là lúc Tatiana Romanova xuất hiện. Một nữ điệp
						viên với sắc đẹp mê đắm lòng người, và vụ “đào ngũ” của cô đã khởi
						động một cái bẫy được thiết kế với độ chuẩn xác của bộ máy đồng
						hồ. Nhiệm vụ của cô: quyến rũ James Bond, rồi trốn chạy về phía
						Tây trên chuyến tàu tốc hành phương Đông. Náu mình trong bóng tối
						là hai trong số những phản diện sinh động nhất của Ian Fleming:
						Grant Đỏ – đao phủ thần chết của SMERSH, cùng Trưởng Phân bộ quản
						lí điệp vụ và hành hình Rosa Klebb – với thân hình một mét sáu ba
						chứa đầy sức mạnh giết chóc. Ứ tràn hành động và mưu đồ, LỜI CHÀO
						TỪ MOSKVA là một trong những tác phẩm được yêu thích nhất trong
						loạt truyện James Bond – một cuốn tiểu thuyết mới sinh ra đã thành
						kinh điển, định rõ tiêu chuẩn cho dòng văn học điệp viên suốt
						nhiều thập kỉ sau đó. --- Một “điệp viên nổi tiếng thế giới”: tên
						gọi này dường như là một tổ hợp đầy mâu thuẫn của những danh xưng.
						Nhưng còn từ ngữ nào có thể miêu tả Bond – JAMES BOND – cái tên đã
						bán được hơn 60 triệu cuốn sách tính đến nay, và làm nên loạt phim
						thành công nhất thế giới? Ít nhân vật văn học nào có được tầm ảnh
						hưởng văn hóa sánh ngang với 007. Đây rõ ràng không phải là tương
						lai mà tác giả Ian Fleming trông đợi vào tháng Một năm 1952, khi
						ông lần đầu tiên lấy tên nhân vật chính của mình từ bìa một cuốn
						sách về các loài chim ở Jamaica. Với hành trang là chiếc máy đánh
						chữ, một kho tàng trải nghiệm thời chiến (tuyệt mật) trong hàng
						ngũ tình báo Hải quân, phong cách văn xuôi được trui rèn nhờ sự
						nghiệp báo chí, và khát khao đánh lạc hướng tâm trí khỏi cuộc hôn
						nhân đang cận kề, Fleming bắt đầu viết Casino Royale – cuốn sách
						đầu tiên về chàng điệp viên 007. Cuốn tiểu thuyết ngay lập tức
						thành công vang dội. Sức cuốn hút đầy hoa lệ của những câu chuyện
						điệp viên giả tưởng – những chiếc xe siêu tốc, các điểm đến mới
						lạ, những bữa ăn đắt đỏ và quần áo đẹp, phần nhiều dựa trên gu
						riêng của Fleming – đã mang lại một thế giới tưởng tượng hoàn hảo
						dành cho những người muốn trốn tránh hiện thực trong một thế giới
						hậu chiến. Cho tới khi Ian Fleming qua đời vào tháng Tám năm 1964,
						James Bond đã trở thành một hiện tượng toàn cầu. Sách cùng series
						đã phát hành: Casino Royale. Lời Chào Từ Moskva (Series James
						Bond) – Phiên bản tặng kèm 01 Bìa áo + 01 Postcard 2 Mặt</span>
				</div>

			</div>

			<div class="col-3 m-3 pt-5">

				<button
					class="btn btn-secondary rounded-0 bg-danger fs-6 fw-medium border-0 d-block"
					type="button" aria-expanded="false">
					<span
						style="font-size: 15px; font-weight: bold; padding-right: 189px;">SÁCH
						LIÊN QUAN</span>

				</button>
				<div class="" style="background-color: rgb(241, 236, 236);">
					<div class="detail container p-3 col-12 row">
						<img src="/ASM1_JAVA4/img/bookdetail1.webp"
							class="w-25 h-50 col-3"></img>
						<div class="col-8">
							<span>LỜI CHÀO TỪ MASKVA</span> <span>Giá: 58.000 d</span>
						</div>

					</div>
					<div class="detail container p-3 col-12 row">
						<img src="/ASM1_JAVA4/img/bookdetail1.webp"
							class="w-25 h-50 col-3"></img>
						<div class="col-8">
							<span>LỜI CHÀO TỪ MASKVA</span> <span>Giá: 58.000 d</span>
						</div>

					</div>
					<div class="detail container p-3 col-12 row">
						<img src="/ASM1_JAVA4/img/bookdetail1.webp"
							class="w-25 h-50 col-3"></img>
						<div class="col-8">
							<span>LỜI CHÀO TỪ MASKVA</span> <span>Giá: 58.000 d</span>
						</div>

					</div>
					<div class="detail container p-3 col-12 row">
						<img src="/ASM1_JAVA4/img/bookdetail1.webp"
							class="w-25 h-50 col-3"></img>
						<div class="col-8">
							<span>LỜI CHÀO TỪ MASKVA</span> <span>Giá: 58.000 d</span>
						</div>

					</div>

				</div>
				<center>
					<div class="m-1">
						<button class="btn btn-danger rounded-0">Xem thêm</button>

					</div>
				</center>
			</div>
		</div>
	</div>

	<div class="col-12"></div>
</body>
</html>