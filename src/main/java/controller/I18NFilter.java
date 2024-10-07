package controller;

import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import myfilter.HttpFilter;

@WebFilter("/*")
public class I18NFilter implements HttpFilter
{

	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		String lang=req.getParameter("lang");
		if(lang!=null)
		{
			req.getSession().setAttribute("lang", lang);
		}
		chain.doFilter(req, resp);
	}
	
}
	