package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;

import org.eclipse.tags.shaded.org.apache.xalan.xsltc.compiler.sym;

import dao.*;

/**
 * Servlet implementation class MumeiShopServlet
 */
@WebServlet({ "/home/index", "/home/category", "/home/bookdetail", "/home/search", "/home/phanloai", "/home/deleteCart",
		"/home/addToCart", "/home/thanhtoan", "/home/payment", "/home/login", "/home/doLogin", "/home/logout",
		"/home/cart", "/userList", "/user/add", "/user/edit", "/address/edit", "/address/add", "/userList/export",
		"/adminBookList", "/book/add", "/adminBookList/export" })
public class MumeiShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MumeiShopServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();

		if (uri.contains("index")) {
			doPageHome(request, response);
		} else if (uri.contains("category")) {
			doPageCategory(request, response);
		} else if (uri.contains("bookdetail")) {
			doPageBookDetail(request, response);
		} else if (uri.contains("login")) {
			doPageLogin(request, response);
		} else if (uri.contains("doLogin")) {
			doDoLogin(request, response);
		} else if (uri.contains("logout")) {
			doDoLogout(request, response);
		} else if (uri.contains("cart")) {
			doPageCart(request, response);
		} else if (uri.contains("userList")) {
			doUserlist(request, response);
		} else if (uri.contains("user/add")) {
			doUserAdd(request, response);
		} else if (uri.contains("user/edit")) {
			try {
				doUserUpdate2(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.contains("addToCart")) {
			doAddToCart(request, response);
		} else if (uri.contains("deleteCart")) {
			doDeleteCart(request, response);
		} else if (uri.contains("payment")) {
			doPagePayment(request, response);
		} else if (uri.contains("thanhtoan")) {
			doPayment(request, response);
		} else if (uri.contains("search")) {
			doSearch(request, response);
		} else if (uri.contains("phanloai")) {
			doPhanloai(request, response);
		}
		else if (uri.contains("/address/add")) {
			doAddAddress(request, response);
		} else if (uri.contains("/userList/export")) {
			exportUserListToExcel(request, response);
		} else if (uri.contains("/adminBookList")) {
			doBooklist(request, response);
		} else if (uri.contains("/book/add")) {
			doBookAdd(request, response);
		} else if (uri.contains("/adminBookList/export")) {
			doBookAdd(request, response);
		}
	}

	void doPhanloai(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");
		String maDM = request.getParameter("theloai");

		if (userLogin == null || userLogin.getMaND().equals("")) {
			request.setAttribute("chuadangnhap", "123");
		} else {
			request.setAttribute("dadangnhap", "123");
		}
		try {
			BookDAO bdao = new BookDAO();
			request.setAttribute("books", bdao.selectListBookByMaDM(maDM));
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.setAttribute("view", "/views/items/Category.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");
		String tenSP = request.getParameter("timkiem");

		System.err.println("asdjfkslgfj");

		if (userLogin == null || userLogin.getMaND().equals("")) {
			request.setAttribute("chuadangnhap", "123");
		} else {
			request.setAttribute("dadangnhap", "123");
		}

		try {
			BookDAO bdao = new BookDAO();
			request.setAttribute("books", bdao.selectListBookByTenSP(tenSP));
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.setAttribute("view", "/views/items/Category.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doPayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");

		OrderDAO odao = new OrderDAO();
		OrderDetailDAO oddao = new OrderDetailDAO();
		PaymentDAO pdao = new PaymentDAO();
		CartDAO cdao = new CartDAO();
		BookDAO bdao = new BookDAO();

		String maHD = CreateID_Order();
		String maPT = CreateID_Payment();
		String pttt = request.getParameter("pttt");
		String tinhTp = request.getParameter("tinhTP");
		String quanhuyen = request.getParameter("quanhuyen");
		String phuongxa = request.getParameter("phuongxa");
		String sonha = request.getParameter("sonha");
		String diachi = tinhTp + ", " + quanhuyen + ", " + phuongxa + ", " + sonha;
		Date today = new Date();

		if (tinhTp.isEmpty() || quanhuyen.isEmpty() || phuongxa.isEmpty() || sonha.isEmpty()) {
			int tamtinh = 0;
			CartDetailDAO cddao = new CartDetailDAO();
			List<CartDetail> cartdetail = cddao.selectCartDetailByUserID(userLogin.getMaND());

			for (CartDetail cdt : cartdetail) {
				tamtinh += cdt.getThanhtien();
			}
			request.setAttribute("tamtinh", tamtinh);
			request.setAttribute("cart", cartdetail);
			request.setAttribute("user", userLogin);
			request.setAttribute("text", "text-danger");
			request.setAttribute("message", "Cần phải điền đầy đủ thông tin trước khi thanh toán!");
		} else {
			try {
				int tamtinh = 0;
				CartDetailDAO cddao = new CartDetailDAO();
				List<CartDetail> cartdetail = cddao.selectCartDetailByUserID(userLogin.getMaND());

				for (CartDetail cdt : cartdetail) {
					tamtinh += cdt.getThanhtien();
				}
				request.setAttribute("tamtinh", tamtinh);
				request.setAttribute("cart", cartdetail);
				request.setAttribute("user", userLogin);

				Order oder = new Order(maHD, userLogin, diachi, tamtinh + 50000, today);
				odao.save(oder);

				for (CartDetail cdt : cartdetail) {
					String maCT = CreateID_OrderDetail();
					Book book = bdao.selectBookByTenSP(cdt.getTenSP());
					OrderDetail orderdetail = new OrderDetail(maCT, oder, book, cdt.getGia(), cdt.getSoluong());
					oddao.save(orderdetail);
				}

				Payment payment = new Payment(maPT, oder, pttt, tamtinh + 50000);
				pdao.save(payment);

				cdao.deleteByUserID(userLogin.getMaND());

			} catch (Exception e) {
				// TODO: handle exception
				System.err.println(e);
			}
			request.setAttribute("text", "text-success");
			request.setAttribute("message", "Thanh toán thành công!");
		}
		request.setAttribute("view", "/views/items/payment.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doDeleteCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");
		CartDAO cdao = new CartDAO();
		BookDetailDAO bddao = new BookDetailDAO();
		BookDAO bdao = new BookDAO();

		try {
			String maGH = request.getParameter("MaGH");
			System.err.println(maGH);
			String tenSP = request.getParameter("tenSP");
			String season = request.getParameter("season");
			int quantity = Integer.parseInt(request.getParameter("quantityV2"));
			Book book = bdao.selectBookByTenSP(tenSP);
			String maSP = book.getMaSP();
			BookDetail bdt = bddao.selectByBookIDAndSeason(maSP, season);
			int sl = bdt.getSoluong() + quantity;
			try {
				Cart cart = new Cart(maGH, userLogin, book, quantity, season);
				cdao.delete(cart);
				BookDetail bookd = new BookDetail(bdt.getMaCTS(), book, season, sl);
				bddao.update(bookd);
			} catch (Exception e) {
				// TODO: handle exception
				System.err.println("cart voi bookdetail");
			}

			doPageCart(request, response);

		} catch (Exception e) {
			// TODO: handle exception
			System.err.println(e);
		}

	}

	void doPagePayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");

		if (userLogin == null || userLogin.getMaND().equals("")) {
			request.setAttribute("chuadangnhap", "123");
		} else {
			request.setAttribute("dadangnhap", "123");
		}

		try {
			int tamtinh = 0;
			CartDetailDAO cddao = new CartDetailDAO();
			List<CartDetail> cartdetail = cddao.selectCartDetailByUserID(userLogin.getMaND());
			for (CartDetail cdt : cartdetail) {
				tamtinh += cdt.getThanhtien();
			}
			request.setAttribute("tamtinh", tamtinh);
			request.setAttribute("cart", cartdetail);
			request.setAttribute("user", userLogin);
//			request.setAttribute("view", "/views/items/cart.jsp");
//			request.getRequestDispatcher("/views/index.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println(e);
		}

		request.setAttribute("view", "/views/items/payment.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doAddToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");
		String MaSP = request.getParameter("maSP");
		String mua = request.getParameter("season");
		int existProduct = 0;

		BookDAO bdao = new BookDAO();
		Book b = bdao.getById(MaSP);
		CartDAO cdao = new CartDAO();
		List<Cart> cartUser = cdao.selectByUserID(userLogin.getMaND());
		List<Cart> cart = cdao.getAll();
		BookDetailDAO bddao = new BookDetailDAO();
		BookDetail bookSeason = bddao.selectByBookIDAndSeason(MaSP, mua);
		int existBook = 0;
		String maCTS = bookSeason.getMaCTS();
		int slsp = bookSeason.getSoluong();

		if (slsp <= 0) {

			if (userLogin == null || userLogin.getMaND().equals("")) {
				request.setAttribute("chuadangnhap", "123");
			} else {
				request.setAttribute("dadangnhap", "123");
			}
			try {
				List<BookDetail> bookdt = bddao.selectByBookID(MaSP);
				request.setAttribute("book", bdao.getById(MaSP));
				GaleryDAO gdao = new GaleryDAO();
				List<Galery> galeries = gdao.getByProductCode(MaSP);
				request.setAttribute("galery", galeries);
				request.setAttribute("bookdetail", bookdt);
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "Lỗi: " + e.getMessage());
			}
			request.setAttribute("message", "Xin lỗi, sản phẩm này hiện đã hết!");
			request.setAttribute("view", "/views/items/bookDetail.jsp");
			request.getRequestDispatcher("/views/index.jsp").forward(request, response);
		} else {
			for (Cart c : cartUser) {
				if (c.getBook().getMaSP().equals(MaSP) && c.getMua().equals(mua)) {

					String maGH = c.getMaGH();
					int sl = c.getSoluong() + 1;
					Cart entity = new Cart(maGH, userLogin, b, sl, mua);
					cdao.update(entity);

					slsp = slsp - 1;
					BookDetail bss = new BookDetail(maCTS, b, mua, slsp);
					bddao.update(bss);

					existBook++;
					break;
				}
			}

			if (existBook == 0) {
				String magh = CreateID_Cart();
				Cart entity2 = new Cart(magh, userLogin, b, 1, mua);
				cdao.update(entity2);

				slsp = slsp - 1;
				BookDetail bss = new BookDetail(maCTS, b, mua, slsp);
				bddao.update(bss);
			}
			if (userLogin == null || userLogin.getMaND().equals("")) {
				request.setAttribute("chuadangnhap", "123");
			} else {
				request.setAttribute("dadangnhap", "123");
			}
			try {
				List<BookDetail> bookdt = bddao.selectByBookID(MaSP);
				request.setAttribute("book", bdao.getById(MaSP));
				GaleryDAO gdao = new GaleryDAO();
				List<Galery> galeries = gdao.getByProductCode(MaSP);
				request.setAttribute("galery", galeries);
				request.setAttribute("bookdetail", bookdt);
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "Lỗi: " + e.getMessage());
			}
			request.setAttribute("message", "Thêm sản phẩm vào giỏ hàng thành công!");
			request.setAttribute("view", "/views/items/bookDetail.jsp");
			request.getRequestDispatcher("/views/index.jsp").forward(request, response);

		}

	}

	void doPageHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");

		if (userLogin == null || userLogin.getMaND().equals("")) {
			request.setAttribute("chuadangnhap", "123");
		} else {
			request.setAttribute("dadangnhap", "123");
		}

		try {
			BookDAO bdao = new BookDAO();
			request.setAttribute("books", bdao.findTop4());
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.setAttribute("view", "/views/items/home.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doPageCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");

		if (userLogin == null || userLogin.getMaND().equals("")) {
			request.setAttribute("chuadangnhap", "123");
		} else {
			request.setAttribute("dadangnhap", "123");
		}
		try {
			BookDAO bdao = new BookDAO();
			request.setAttribute("books", bdao.getAll());
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.setAttribute("view", "/views/items/Category.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doPageBookDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");

		if (userLogin == null || userLogin.getMaND().equals("")) {
			request.setAttribute("chuadangnhap", "123");
		} else {
			request.setAttribute("dadangnhap", "123");
		}
		try {
			String masp = request.getParameter("id");
			BookDAO bdao = new BookDAO();
			BookDetailDAO bddao = new BookDetailDAO();
			List<BookDetail> bookdt = bddao.selectByBookID(masp);
			request.setAttribute("book", bdao.getById(masp));
			GaleryDAO gdao = new GaleryDAO();
			List<Galery> galeries = gdao.getByProductCode(masp);
			request.setAttribute("galery", galeries);
			request.setAttribute("bookdetail", bookdt);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Lỗi: " + e.getMessage());
		}
		request.setAttribute("view", "/views/items/bookDetail.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doPageLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("view", "/views/items/login.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doDoLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String e = request.getParameter("email");
		String pw = request.getParameter("password");
		System.err.println(e + "|" + pw);
		try {
			UserDAO udao = new UserDAO();
			User user = udao.checkLogin(e, pw);
			request.getSession().setAttribute("user", user);
			if (user.getVaitro().equalsIgnoreCase("user")) {
				doPageHome(request, response);
			} else if (user.getVaitro().equalsIgnoreCase("staff") || user.getVaitro().equalsIgnoreCase("admin")) {
				doUserlist(request, response);
			}

		} catch (Exception e2) {
			// TODO: handle exception
			System.err.println(e2);
			request.setAttribute("view", "/views/items/login.jsp");
			request.getRequestDispatcher("/views/index.jsp").forward(request, response);
		}
	}

	void doDoLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		request.setAttribute("view", "/views/items/login.jsp");
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}

	void doPageCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("user");
		if (userLogin == null || userLogin.getMaND().equals("")) {
			request.setAttribute("chuadangnhap", "123");
		} else {
			request.setAttribute("dadangnhap", "123");
		}
		try {
			int tamtinh = 0;
			CartDetailDAO cddao = new CartDetailDAO();
			List<CartDetail> cartdetail = cddao.selectCartDetailByUserID(userLogin.getMaND());
			for (CartDetail cdt : cartdetail) {
				tamtinh += cdt.getThanhtien();
			}
			request.setAttribute("tamtinh", tamtinh);
			request.setAttribute("cart", cartdetail);
			request.setAttribute("view", "/views/items/cart.jsp");
			request.getRequestDispatcher("/views/index.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println(e);
		}

	}

	private void doUserAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getMethod().equals("POST")) {
			if (request.getParameter("addUserButton") != null) {

				String maND = request.getParameter("maND");
				String matkhau = request.getParameter("matkhau");
				matkhau = Mahoa.toSHA1(matkhau);
				String hoten = request.getParameter("hoten");
				String email = request.getParameter("email");
				String sdt = request.getParameter("sdt");
				String vaitro = request.getParameter("vaitro");
				String sonha = request.getParameter("sonha");
				String tinhtp = request.getParameter("tinhtp");
				String quanhuyen = request.getParameter("quanhuyen");

				// Validate inputs
				if (maND == null || maND.isEmpty() || matkhau == null || matkhau.isEmpty() || hoten == null
						|| hoten.isEmpty() || email == null || email.isEmpty() || sdt == null || sdt.isEmpty()
						|| vaitro == null || vaitro.isEmpty() || sonha == null || sonha.isEmpty() || tinhtp == null
						|| tinhtp.isEmpty() || quanhuyen == null || quanhuyen.isEmpty()) {
					request.setAttribute("error", "All fields are required.");
					request.getRequestDispatcher("/views/AdminAddUser.jsp").forward(request, response);
					return;
				}

				UserDAO uDAO = new UserDAO();
				User u = new User(maND, matkhau, hoten, email, sdt, vaitro);
				uDAO.save(u);
				AddressDAO aDAO = new AddressDAO();
				Address a = new Address(createID_Addr(), u, tinhtp, quanhuyen, sonha);
				aDAO.save(a);

				String message = "Add user: " + maND + " successfully!";
				request.setAttribute("message", message);
				request.getRequestDispatcher("/views/admin/AdminAddUser.jsp").forward(request, response);
			} else
				request.getRequestDispatcher("/userList").forward(request, response);
		} else // GET METHOD
			request.getRequestDispatcher("/views/admin/AdminAddUser.jsp").forward(request, response);

	}

	private void doUserUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, IllegalAccessException, InvocationTargetException {
		if (request.getMethod().equals("POST")) {
			if (request.getParameter("updateUserButton") != null) {

//				students student = new students();
//				BeanUtils.populate(student, request.getParameterMap());
//				studentDAO studentDAO = new studentDAO();
//				studentDAO.update(student);
				try {
					String maND = request.getParameter("maND");
					String matkhau = request.getParameter("matkhau");
					matkhau = Mahoa.toSHA1(matkhau);
					String hoten = request.getParameter("hoten");
					String email = request.getParameter("email");
					String sdt = request.getParameter("sdt");
					String vaitro = request.getParameter("vaitro");
					String sonha = request.getParameter("sonha");
					String tinhtp = request.getParameter("tinhtp");
					String quanhuyen = request.getParameter("quanhuyen");

					UserDAO uDAO = new UserDAO();
					User u = new User(maND, matkhau, hoten, email, sdt, vaitro);
					uDAO.update(u);

					AddressDAO aDAO = new AddressDAO();
					List<Address> aList = u.getAddresses();
					for (Address address : aList) {
						String maDC = address.getMaDC();
						Address a = new Address(maDC, u, tinhtp, quanhuyen, sonha);
						aDAO.update(a);
					}

					String message = "Edit User " + u.getMaND() + " successfully!";
					request.setAttribute("message", message);
				} catch (Exception e) {
					// TODO: handle exception
					request.setAttribute("error", "Đã xảy ra lỗi khi cập nhật người dùng.");
				}
				request.getRequestDispatcher("/userList").forward(request, response);
			} else
				request.getRequestDispatcher("/userList").forward(request, response);
		} else { // GET METHOD
			String maND = request.getParameter("maND");
			if (maND == null || maND.isEmpty()) {
				request.setAttribute("error", "ID người dùng là bắt buộc để tải thông tin.");
				request.getRequestDispatcher("/userList").forward(request, response);
				return;
			}

			UserDAO uDAO = new UserDAO();
			User user = uDAO.getById("maND");
			System.out.println(user);
			if (user != null) {
				AddressDAO aDAO = new AddressDAO();
				List<Address> addresses = user.getAddresses();
				for (Address address : addresses) {
					String maDC = address.getMaDC();
					Address a = aDAO.getById(maDC);
					request.setAttribute("user", user);
					System.out.println(user);
					request.setAttribute("address", a);
					request.getRequestDispatcher("/views/admin/AdminUpdateUser.jsp").forward(request, response);
				}

			} else {
				request.setAttribute("error", "Không tìm thấy người dùng với ID được cung cấp.");
				request.getRequestDispatcher("/userList").forward(request, response);
			}
		}

	}

	private void doUserUpdate2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, IllegalAccessException, InvocationTargetException {
		if (request.getMethod().equals("POST")) {
			if (request.getParameter("updateUserButton") != null) {

//				students student = new students();
//				BeanUtils.populate(student, request.getParameterMap());
//				studentDAO studentDAO = new studentDAO();
//				studentDAO.update(student);
				try {

					String maND = request.getParameter("maND");
					String matkhau = request.getParameter("matkhau");
					matkhau = Mahoa.toSHA1(matkhau);
					String hoten = request.getParameter("hoten");
					String email = request.getParameter("email");
					String sdt = request.getParameter("sdt");
					String vaitro = request.getParameter("vaitro");

					UserDAO uDAO = new UserDAO();
					User u = new User(maND, matkhau, hoten, email, sdt, vaitro);
					uDAO.update(u);

					AddressDAO aDAO = new AddressDAO();
					List<Address> aList = u.getAddresses();
					request.setAttribute("addresses", aList);
					String message = "Edit User " + u.getMaND() + " successfully!";
					request.setAttribute("message", message);
				} catch (Exception e) {
					// TODO: handle exception
					request.setAttribute("error", "Đã xảy ra lỗi khi cập nhật người dùng.");
				}
				request.getRequestDispatcher("/userList").forward(request, response);
			} else
				request.getRequestDispatcher("/userList").forward(request, response);
		} else { // GET METHOD
			UserDAO uDAO = new UserDAO();
			String id = request.getParameter("id");
			System.out.println(id);

			User user = uDAO.getById(id);
			System.out.println(user);
			if (user != null) {
				AddressDAO aDAO = new AddressDAO();
				List<Address> addresses = aDAO.getByUser(user);
				user.setAddresses(addresses);
				request.setAttribute("user", user);
				request.setAttribute("addresses", addresses);
//				String maDC = request.getParameter("maDC");
//				System.out.println(maDC);
				request.getRequestDispatcher("/views/admin/AdminUpdateUserV2.jsp").forward(request, response);
			} else {
				request.setAttribute("error", "Không tìm thấy người dùng với ID được cung cấp.");
				request.getRequestDispatcher("/userList").forward(request, response);
			}
		}

	}

	private void doUpdateAddress(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getMethod().equals("POST")) {
			String maDC = request.getParameter("maDC");
			String sonha = request.getParameter("sonha");
			String tinhtp = request.getParameter("tinhtp");
			String quanhuyen = request.getParameter("quanhuyen");

			AddressDAO addressDAO = new AddressDAO();
			try {
				Address address = addressDAO.getById(maDC);
				if (address != null) {
					address.setSonha(sonha);
					address.setTinhtp(tinhtp);
					address.setQuanhuyen(quanhuyen);

					addressDAO.update(address);
					request.setAttribute("message", "Address updated successfully.");
				} else {
					request.setAttribute("message", "Address not found.");
				}
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("message", "An error occurred while updating the address.");
			}

			request.getRequestDispatcher("/views/admin/AdminUpdateUserV3.jsp").forward(request, response);
		} else {
			String maDC = request.getParameter("maDC");
			AddressDAO addressDAO = new AddressDAO();
			Address address = addressDAO.getById(maDC);

			if (address != null) {
				request.setAttribute("address", address);
				request.getRequestDispatcher("/views/admin/AdminUpdateUserV3.jsp").forward(request, response);
			} else {
				request.setAttribute("message", "Address not found.");
				request.getRequestDispatcher("/userList").forward(request, response);
			}
		}
	}

	private void doAddAddress(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getMethod().equals("POST")) {
			String userId = request.getParameter("userId");
			String sonha = request.getParameter("sonha");
			String tinhtp = request.getParameter("tinhtp");
			String quanhuyen = request.getParameter("quanhuyen");

			UserDAO userDAO = new UserDAO();
			User user = userDAO.getById(userId);

			if (user != null) {
				AddressDAO addressDAO = new AddressDAO();
				Address address = new Address(createID_Addr(), user, tinhtp, quanhuyen, sonha);

				try {
					addressDAO.save(address);
					request.setAttribute("message", "Address added successfully.");
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("error", "An error occurred while adding the address.");
				}
			} else {
				request.setAttribute("error", "User not found.");
			}

			request.getRequestDispatcher("/views/admin/AdminAddAddress.jsp").forward(request, response);
		} else {
			String userId = request.getParameter("userId");
			request.setAttribute("userId", userId);
			request.getRequestDispatcher("/views/admin/AdminAddAddress.jsp").forward(request, response);
		}
	}

	private void exportUserListToExcel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDAO uDAO = new UserDAO();
		List<User> ulist = uDAO.findAll();

		Workbook workbook = new XSSFWorkbook();
		Sheet sheet = workbook.createSheet("User List");

		int rowNum = 0;
		Row headerRow = sheet.createRow(rowNum++);
		String[] headers = { "User ID", "Name", "Email", "Phone", "Role" };
		int headerColumn = 0;
		for (String header : headers) {
			Cell cell = headerRow.createCell(headerColumn++);
			cell.setCellValue(header);
		}

		for (User user : ulist) {
			Row row = sheet.createRow(rowNum++);
			int colNum = 0;
			row.createCell(colNum++).setCellValue(user.getMaND());
			row.createCell(colNum++).setCellValue(user.getHoten());
			row.createCell(colNum++).setCellValue(user.getEmail());
			row.createCell(colNum++).setCellValue(user.getSdt());
			row.createCell(colNum++).setCellValue(user.getVaitro());
		}

		// Lưu file Excel trên máy
		String filePath = "C:\\Users\\hchoa\\eclipse-workspace2\\ASM1_JAVA4\\fileExcel/UserList.xlsx"; // Đường dẫn lưu
																										// file trên máy

		try (OutputStream fileOut = new FileOutputStream(filePath)) {
			workbook.write(fileOut);
		}
		workbook.close();

		// Thông báo thành công
		request.setAttribute("message", "File đã được xuất thành công: " + filePath);
		request.getRequestDispatcher("/userList").forward(request, response);
	}

	private void doBooklist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BookDAO bDAO = new BookDAO();
		List<Book> blist = bDAO.getAll();
		System.out.println(blist);
		request.setAttribute("listBooks", blist);
		request.getRequestDispatcher("/views/admin/AdminProduct.jsp").forward(request, response);
	}

	private void doBookAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getMethod().equals("POST")) {
			if (request.getParameter("addBookButton") != null) {

				String maSP = request.getParameter("maSP");
				String maDM = request.getParameter("category.maDM");
				String tenSP = request.getParameter("tenSP");
				String gia = request.getParameter("gia");
				int gia1 = Integer.parseInt(gia);
				String tacgia = request.getParameter("tacgia");
				String nxb = request.getParameter("nxb");
				String mota = request.getParameter("mota");
				String hinhchinh = request.getParameter("hinhchinh");

				String mua = request.getParameter("mua");
				String soluong = request.getParameter("soluong");
				int soluong1 = Integer.parseInt(soluong);

//				File dir = new File(request.getServletContext().getRealPath("/photos"));
//				// Tạo thư mục nếu chưa tồn tại
//		        if (!dir.exists()) {
//		            dir.mkdir();
//		        }
//		        
//		        List<Part> photoParts = new ArrayList<>();
//		        
//		        for (Part part : request.getParts()) {
//		            if (part.getName().equals("hinhchinh")) {
//		                photoParts.add(part);
//		            } 
//		        }
//		        List<String> photoFiles = new ArrayList<>();
//		        
//		     // Lưu file vào thư mục
//		        for (Part part : photoParts) {
//		        	File file = new File(dir, part.getSubmittedFileName());
//			        part.write(file.getAbsolutePath());
//			        String fileName = part.getSubmittedFileName();
//		            photoFiles.add(fileName);
//		        }

				// Validate inputs
				if (maSP == null || maSP.isEmpty() || maDM == null || maDM.isEmpty() || tenSP == null || tenSP.isEmpty()
						|| gia == null || gia.isEmpty() || tacgia == null || tacgia.isEmpty() || nxb == null
						|| nxb.isEmpty() || mota == null || mota.isEmpty() || mua == null || mua.isEmpty()
						|| soluong == null || soluong.isEmpty()) {
					request.setAttribute("error", "All fields are required.");
					request.getRequestDispatcher("/views/AdminAddBook.jsp").forward(request, response);
					return;
				}

				Date today = new Date();

				CategoryDAO cDAO = new CategoryDAO();
				Category c = cDAO.getById(maDM);
				BookDAO uDAO = new BookDAO();
				Book b = new Book(maSP, c, tenSP, gia1, tacgia, nxb, mota, today, hinhchinh);
				uDAO.save(b);
				BookDetailDAO bdDAO = new BookDetailDAO();
				BookDetail bd = new BookDetail(createID_Addr(), b, mua, soluong1);
				bdDAO.save(bd);

				String message = "Add user: " + maSP + " successfully!";
				request.setAttribute("message", message);
				request.getRequestDispatcher("/views/admin/AdminAddBook.jsp").forward(request, response);
			} else
				request.getRequestDispatcher("/userList").forward(request, response);
		} else // GET METHOD
			request.getRequestDispatcher("/views/admin/AdminAddBook.jsp").forward(request, response);

	}

	private void exportBookListToExcel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BookDAO uDAO = new BookDAO();
		List<Book> ulist = uDAO.getAll();

		Workbook workbook = new XSSFWorkbook();
		Sheet sheet = workbook.createSheet("Book List");

		int rowNum = 0;
		Row headerRow = sheet.createRow(rowNum++);
		String[] headers = { "Book ID", "Category ID", "Book Title", "Price", "Author", "Publisher", "Description",
				"Date add", "Image" };
		int headerColumn = 0;
		for (String header : headers) {
			Cell cell = headerRow.createCell(headerColumn++);
			cell.setCellValue(header);
		}

		for (Book user : ulist) {
			Row row = sheet.createRow(rowNum++);
			int colNum = 0;
			row.createCell(colNum++).setCellValue(user.getMaSP());
			row.createCell(colNum++).setCellValue(user.getCategory().getMaDM());
			row.createCell(colNum++).setCellValue(user.getTenSP());
			row.createCell(colNum++).setCellValue(user.getGia());
			row.createCell(colNum++).setCellValue(user.getTacgia());
			row.createCell(colNum++).setCellValue(user.getNxb());
			row.createCell(colNum++).setCellValue(user.getMota());
			row.createCell(colNum++).setCellValue(user.getNgaythem());
			row.createCell(colNum++).setCellValue(user.getHinhchinh());
		}

		// Lưu file Excel trên máy
		String filePath = "C:\\Users\\hchoa\\eclipse-workspace2\\ASM1_JAVA4\\fileExcel/BookList.xlsx"; // Đường dẫn lưu
																										// file trên máy

		try (OutputStream fileOut = new FileOutputStream(filePath)) {
			workbook.write(fileOut);
		}
		workbook.close();

		// Thông báo thành công
		request.setAttribute("message", "File đã được xuất thành công: " + filePath);
		request.getRequestDispatcher("/adminBookList").forward(request, response);
	}

	public static String createID_Addr() {
		AddressDAO addressDAO = new AddressDAO();
		List<Address> addresses = addressDAO.selectAll();

		if (addresses.isEmpty()) {
			return "DC001"; // Trường hợp danh sách địa chỉ rỗng
		}

		int num = addresses.size();
		String lastID = addresses.get(num - 1).getMaDC();
		String subString = lastID.substring(2, 5);
		int id = Integer.parseInt(subString) + 1;
		return String.format("DC%03d", id);
	}

	public static String createID_User() {
		UserDAO uDAO = new UserDAO();
		List<User> uList = uDAO.selectAll();

		if (uList.isEmpty()) {
			return "ND001"; // Trường hợp danh sách địa chỉ rỗng
		}

		int num = uList.size();
		String lastID = uList.get(num - 1).getMaND();
		String subString = lastID.substring(2, 5);
		int id = Integer.parseInt(subString) + 1;
		return String.format("ND%03d", id);
	}

	public static String CreateID_Cart() {
		CartDAO cdao = new CartDAO();
		List<Cart> p = cdao.getAll();
		int Num = p.size();
		String Ma = p.get(Num - 1).getMaGH();
		String subString = Ma.substring(2, 5);
		int ID = Integer.parseInt(subString) + 1;
		// System.out.println(subString);
		String IDprod = String.format("GH%03d", ID);
		return IDprod;
	}

	public static String CreateID_Order() {
		OrderDAO cdao = new OrderDAO();
		List<Order> p = cdao.getAll();
		int Num = p.size();
		String Ma = p.get(Num - 1).getMaHD();
		String subString = Ma.substring(2, 5);
		int ID = Integer.parseInt(subString) + 1;
		// System.out.println(subString);
		String IDprod = String.format("HD%03d", ID);
		return IDprod;
	}

	public static String CreateID_OrderDetail() {
		OrderDetailDAO cdao = new OrderDetailDAO();
		List<OrderDetail> p = cdao.getAll();
		int Num = p.size();
		String Ma = p.get(Num - 1).getMaCT();
		String subString = Ma.substring(2, 5);
		int ID = Integer.parseInt(subString) + 1;
		// System.out.println(subString);
		String IDprod = String.format("CT%03d", ID);
		return IDprod;
	}

	public static String CreateID_Payment() {
		PaymentDAO cdao = new PaymentDAO();
		List<Payment> p = cdao.getAll();
		int Num = p.size();
		String Ma = p.get(Num - 1).getMaPT();
		String subString = Ma.substring(2, 5);
		int ID = Integer.parseInt(subString) + 1;
		// System.out.println(subString);
		String IDprod = String.format("PT%03d", ID);
		return IDprod;
	}

}
