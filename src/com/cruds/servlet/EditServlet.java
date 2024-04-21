package com.cruds.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cruds.dao.ContentDao;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int noteId = Integer.parseInt(request.getParameter("noteId"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		ContentDao dao = new ContentDao();
		boolean f = dao.update(noteId, title, content);
		HttpSession session = request.getSession();
		if(f)
		{
			session.setAttribute("updateMgs", "Data Updated Successfully");
			response.sendRedirect("showNotes.jsp");
		}
		else
		{
			System.out.println("Failed to enter");
		}
	}

}
