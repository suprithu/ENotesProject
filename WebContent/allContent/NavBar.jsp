<%@page import="com.cruds.entiry.UserInfo"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">E Notes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp"><i class="fa fa-home"
						aria-hidden="true"></i>Home</a></li>
				<li class="nav-item"><a class="nav-link" href="addNotes.jsp"><i
						class="fa fa-plus" aria-hidden="true"></i>Add Notes</a></li>

				<li class="nav-item"><a class="nav-link" href="showNotes.jsp"><i
						class="fa fa-eye" aria-hidden="true"></i>Show Notes</a></li>
			</ul>

			<%
				UserInfo user = (UserInfo) session.getAttribute("userDet");
				if (user != null) {
			%>
			<a href="login.jsp" class="btn btn-outline-success mr-3" data-bs-toggle="modal"
			data-bs-target="#exampleModal"
				type="submit"><i class="fa fa-user" aria-hidden="true"></i> <%=user.getName()%>
			</a> 
			
			<a href="LogOutServlet" class="btn btn-outline-success" type="submit"><i
				class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
				
				
				<!-- Button trigger modal -->
		

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
					
						<div class="container text-center">
						
						<i class="fa fa-user fa-3x"></i>
						<h5> </h5>
						
						<table class="table">
						<tbody>
							<tr>
								<th>User Name </th>
								<td><%= user.getName() %></td>
							</tr>
							
							<tr>
								<th>Gmail </th>
								<td><%= user.getEmail() %></td>
							</tr>
		
						</tbody>
						
						</table>
						
							
						</div>
					</div>
					<div class="modal-footer" >
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
			<%
				} else {
			%>

			<a href="login.jsp" class="btn btn-outline-success mr-3"
				type="submit"><i class="fa fa-user" aria-hidden="true"></i>Login</a>
				
			
			<a href="register.jsp" class="btn btn-outline-success ml-3" type="submit"><i
				class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
				
			
			<%
				}
			%>

		</div>
		
	</div>
</nav>