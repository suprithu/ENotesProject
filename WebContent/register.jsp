<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<%@include file="allContent/externalLink.jsp"%>
</head>
<body>
	<%@include file="allContent/NavBar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4 mb-3">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Register</h4>
					</div>



					<%
						String regMsg = (String) session.getAttribute("reg-sucess");

						if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%> Login<a
							href="login.jsp">Click Here</a>
					</div>
					<%
						session.removeAttribute("reg-sucess");
						}
					%>

					<%
						String failMsg = (String) session.getAttribute("failed-mess");

						if (failMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=failMsg%></div>
					<%
					session.removeAttribute("failed-mess");
						}
					%>



					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="mb-3">
								<label>Full Name</label> <input type="text" class="form-control"
									name="uname">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="uemail">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge rounded-pill btn-large  w-100 d-block">Register</button>
						</form>
					</div>

				</div>

			</div>

		</div>

	</div>


	<div class="container-fluid bg-dark mt-1">
<p class="text-center text-white">
	All Rigths Reserved @Suprith
</p>
<p class="text-center text-white">
	
	wiewboarfybibf
</p>
</div>
</body>
</html>