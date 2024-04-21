package com.cruds.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.dao.UserLogDao;
import com.cruds.entiry.UserInfo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String email = request.getParameter("uEmail");
		String password = request.getParameter("uPass");
		
		UserInfo ui = new UserInfo();
		
		ui.setEmail(email);
		ui.setPassword(password);
		
		UserLogDao dao = new UserLogDao();
		UserInfo user = dao.retrive(ui);
		
		HttpSession session = request.getSession();
		
		if(user != null)
		{	session.setAttribute("userDet", user);
			response.sendRedirect("home.jsp");
		}
		else
		{
			session.setAttribute("fLogin", "Invalid User ID or Password");
			response.sendRedirect("login.jsp");
		}
	}

}
