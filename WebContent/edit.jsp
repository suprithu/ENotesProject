<%@page import="com.cruds.entiry.UserContent"%>
<%@page import="com.cruds.dao.ContentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    	<%
		UserInfo user1 =(UserInfo)session.getAttribute("userDet");
		if(user1 == null)
		{
			response.sendRedirect("login.jsp");
			session.setAttribute("login-err", "Please Login");
		}
		else
		{
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
<%@ include file="allContent/externalLink.jsp"%>
</head>
<body>
<%@ include file="allContent/NavBar.jsp"%>
	
<%
	int noteId=Integer.parseInt(request.getParameter("note_id"));
	
	ContentDao cd = new ContentDao();
	UserContent uc	= cd.getDataByID(noteId);
	
%>

	<div class="container-fluid">

	<h1 class="text-center">Edit Notes</h1>

		<div class="container">
			<div class="row">
			<div class="col-md-12">
					<form action="EditServlet" method="post">

						<input type="hidden" value="<%= noteId%>" name="noteId">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Enter
								Title</label> <input type="text" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								name="title" value="<%= uc.getTitle() %>" required>

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" class="form-label">Enter
								Notes</label>

							<textarea rows="10" cols="" class="form-control" name="content"
								required><%= uc.getContent()%></textarea>

						</div>
						<div class="container text-center ">
							<button type="submit" class="btn btn-primary mt-3">Edit</button>

						</div>

					</form>

				</div>
		</div>
		</div>

	</div>

	<%} %>


<%@ include file="allContent/footer.jsp"%>	
</body>
</html>