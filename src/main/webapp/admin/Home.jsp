<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
</style>
<title>Admin - Home</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-YvM3qMyH6Z9U6bJUoxUTAVP6wStP6UBdA6ZZLlAFhABrvZdM1ssjWsDh4W4M4z4Y5Y5Hy5j5/sBxDhLPOtuF2Q=="
	crossorigin="anonymous" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet" />
<%@include file="adminAllComponent/allCSS.jsp"%>
</head>
<body>
	<%@include file="adminAllComponent/navbar.jsp"%>
	<%@include file="card.jsp"%>
	<%
	// Session'da saklanan kullanıcının adını alın
	String email = (String) session.getAttribute("email");
	
	%>
	<div>
		<p>
			Hoşgeldiniz,
			<%=email%>!
		</p>
	</div>
	
	<%@include file="adminAllComponent/footer.jsp"%>
</body>
</html>