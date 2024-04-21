<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%
		UserInfo user1 =(UserInfo)session.getAttribute("userDet");
		if(user1 == null)
		{
			
			session.setAttribute("login-err", "Please Login");
			response.sendRedirect("login.jsp");
		}
		else
		{
	%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notes</title>
<%@ include file="allContent/externalLink.jsp"%>
</head>
<body>
<%@ include file="allContent/NavBar.jsp"%>
	<div class="container-fluid">
		
		<% 
			UserInfo ui = (UserInfo)session.getAttribute("userDet");
			
		%>
		<h1></h1>
		
		
	<h1 class="text-center">Add Your Notes</h1>
		<div class="container">
			<div class="row">
			<div class="col-md-12">
			<form action="AddNotesServlet" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter Title</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required>
		
			</div>
			<div class="form-group">
			<label for="exampleInputEmail1" class="form-label">Enter Notes</label> 
			
			<textarea rows="10" cols="" class="form-control" name="content" required></textarea>
			
			</div>
			<div class="container text-center ">
				<button type="submit" class="btn btn-primary mt-3">Add</button>
				
			</div>
			<input type="hidden" value="<%= user1.getId() %>" name="uid" />
		</form>
			
			</div>
		</div>
		</div>

	</div>
	<% }%>

<%@ include file="allContent/footer.jsp" %>
</body>
</html>