<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="allContent/externalLink.jsp"%>
</head>
<body>
	<%@include file="allContent/NavBar.jsp"%>
	<div class="container-fluid div-color-log">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4 mb-3">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user fa-3x" aria-hidden="true"></i>
						<h4>Login</h4>
					</div>

				

					<%
						String fMsg = (String) session.getAttribute("fLogin");
						if (fMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=fMsg%></div>

					<%
						session.removeAttribute("fLogin");
						}
					%>

					<%
						String withoutLogin = (String) session.getAttribute("login-err");
						if (withoutLogin != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
					<%
						}
						session.removeAttribute("login-err");
					%>
					
					<%
						String logoutMgs = (String)session.getAttribute("logout_msg");
						if(logoutMgs != null)
						{
					%>	
							<div class="alert alert-danger" role="alert"><%=logoutMgs%></div>
						<% }
							session.removeAttribute("logout_msg");
						%>
					

					<div class="card-body">
						<form action="LoginServlet" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="uEmail">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="uPass">
							</div>

							<button type="submit"
								class="btn btn-primary btn-block badge rounded-pill w-100  ">Login</button>
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