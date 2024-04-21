<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="allContent/externalLink.jsp" %>
</head>
<body>


<div class="container-fluid">
<%@ include file="allContent/NavBar.jsp" %>
	<div class="card py-5" >
	<div class="card-body  text-center">
	<img alt="" src="img/paper.jpg" class="img-fluid mx-auto" style="max-width: 300px">
	<h1>Start Writing your notes</h1>
	<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
	
	</div>
	
	</div>
</div>



<%@ include file="allContent/footer.jsp" %>
</body>
</html>