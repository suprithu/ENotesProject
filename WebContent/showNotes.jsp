<%@page import="com.cruds.entiry.UserContent"%>
<%@page import="java.util.List"%>
<%@page import="com.cruds.dao.ContentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	UserInfo user3 = (UserInfo) session.getAttribute("userDet");
	if (user3 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("login-err", "Please Login");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Notes</title>
<%@ include file="allContent/externalLink.jsp"%>

</head>
<body>
	<%@ include file="allContent/NavBar.jsp"%>

	<%
		String updateMgs = (String) session.getAttribute("updateMgs");
		if (updateMgs != null) {
	%>
	<div class="alert alert-success" role="alert"><%=updateMgs%></div>

	<%
		session.removeAttribute("updateMgs");
		}
	%>


	<%
		String wrongMsg = (String) session.getAttribute("wrong");
		if (wrongMsg != null) {
	%>
	<div class="alert alert-warning alert-dismissible fade show"
		role="alert">
		<strong><%= wrongMsg%></strong> Please Try Again
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>

	<%
		session.removeAttribute("wrong");
		}
	%>

	<div class="container">
		<h2>All Notes:</h2>
		<div class="row">

			<div class="col-md-12">

				<%
					if (user3 != null) {
						ContentDao ob = new ContentDao();
						List<UserContent> post = ob.getData(user3.getId());

						//UserContent po=new UserContent();
						for (UserContent po : post) {
				%>


				<div class="card mt-3">

					<img alt="" src="img/paper.jpg" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px">

					<div class="card-body p-4">

						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>

						<p>
							<b class="text-success">Published By:<%=user3.getName()%>
							</b> <b class="text-primary"></b>
						</p>
						<b class="text-success">Published Date: <%=po.getPdate()%></b> <b
							class="text-success"></b>

						<p></p>

						<div class="container text-center mt-2">


							<a href="edit.jsp?note_id=<%=po.getId()%>"
								class="btn btn-primary">Edit</a> <a
								href="DeleteServlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a>
						</div>

					</div>

				</div>


				<%
					}
					}
				%>



			</div>
		</div>

	</div>


	<%@ include file="allContent/footer.jsp"%>
</body>
</html>