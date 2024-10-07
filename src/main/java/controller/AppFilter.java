package controller;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import myfilter.HttpFilter;

import java.io.IOException;

import dao.UserDAO;

/**
 * Servlet implementation class AppFilter
 */
@WebFilter({"/user/add", "/user/edit", "/address/edit", "/address/add", "/userList/export"})
public class AppFilter implements HttpFilter{
	private static final long serialVersionUID = 1L;
	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		User userLogin = (User)session.getAttribute("user");
//		System.out.println("User login: " + userLogin);
		
		if(userLogin == null || userLogin.getMaND().equals("")) {
			String errorMessage = "You must login first!";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("/home/login").forward(request, response);
		}
		else {
			String uri = request.getRequestURI();
			//List, add, edit, delete user must has role admin
			if(uri.indexOf("user") >= 0){
				if(!userLogin.getVaitro().equalsIgnoreCase("admin")) {
					String message = "You don't have persmission to access this page!";
					request.setAttribute("message", message);
					request.getRequestDispatcher("/userList").forward(request, response);
				}
				else
					chain.doFilter(request, response);
			}else
				chain.doFilter(request, response);
				
		}
		
	}  
  

}
