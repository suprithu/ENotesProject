package com.cruds.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.dao.UserLogDao;
import com.cruds.entiry.UserInfo;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet
{

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
//		PrintWriter out = response.getWriter();
		
		UserInfo us = new UserInfo();

		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		

		UserLogDao dao = new UserLogDao();
		HttpSession session = request.getSession();
		
		boolean f = dao.addUser(us);
//		
		if(f)
		{
			session.setAttribute("reg-sucess", "Regestration Sucessful.");
			response.sendRedirect("register.jsp");
		}
		else
		{
			session.setAttribute("failed-mess", "Something Went Wrong");
			response.sendRedirect("register.jsp");
		}
	}

}
