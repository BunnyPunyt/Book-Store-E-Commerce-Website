package controller;

import java.util.List;

import dao.*;
import dao.CartDAO;
import dao.CartDetailDAO;
import dao.UserDAO;
import model.Book;
import model.*;
import model.CartDetail;
import model.User;

public class jpaProgram {
	public static void main(String[] args) {
//		UserDAO userDAO = new UserDAO();
//		User user = new User();
//		BookDAO bdao = new BookDAO();
//		List<Book> book = bdao.findTop4();
//		CartDAO cdao = new CartDAO();
//		List<Cart> cart = cdao.selectByUserID("ND001");
//		CartDetailDAO cddao = new CartDetailDAO();
//		List<CartDetail> cartdetail = cddao.selectCartDetailByUserID("ND001");
//		BookDetailDAO bddao = new BookDetailDAO();
//		BookDetail bookdt = bddao.selectByBookIDAndSeason("SP004", "1");
//		Book b = bdao.selectBookByTenSP("conan");
		CartDAO cdao = new CartDAO();
		try {
			cdao.deleteByUserID("ND001");
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println(e);
			System.err.println("loi cmnr");
		}
		
//		List<User> retrievedUser = userDAO.getAll();
//        System.out.println("Retrieved User: " + retrievedUser);
//        for (User user2 : retrievedUser) {
//        	System.out.println(user2.getMaND());
//		}
//		User login  = userDAO.checkLogin("johndoe@example.com", "password123");
//		System.err.println(login.getHoten());
		
//		for (Book book2 : book) {
//			System.err.println(book2.getMaSP());
//		}
//		for (CartDetail cart2 : cartdetail) {
//			System.err.println(cart2.getMaGH() + "|" + cart2.getMaSP() + "|" +cart2.getImg() + "|" + cart2.getThanhtien());
//		}
		
//			System.err.println(b.getMaSP());
		
		
	}
}
