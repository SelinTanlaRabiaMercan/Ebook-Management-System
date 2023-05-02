<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-YvM3qMyH6Z9U6bJUoxUTAVP6wStP6UBdA6ZZLlAFhABrvZdM1ssjWsDh4W4M4z4Y5Y5Hy5j5/sBxDhLPOtuF2Q=="
	crossorigin="anonymous" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
.back-clr {
	background-color: #BFACE2;
	background-size: cover;
	width: 100%;
	height: 350px;
	padding-top: 100px;
}
</style>
<meta charset="UTF-8">
<title>EBook</title>
<%@include file="all_Component/allCSS.jsp"%>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container-fluid back-clr" style="height: 250px;">
				<%
		Connection conn = DBConnect.getConnection();
		out.println(conn);
	
	// Session'da saklanan kullanıcının adını alın
	String email = (String) session.getAttribute("email");
	
	%>
	<div >
		<p>
			Hoşgeldiniz,
			<%=email%>!
		</p>
	</div>
	
		<h2 class="text-center" style="color: white">E Book Management
			System</h2>
		<br>
		
		


	</div>
	<%@include file="all_Component/card.jsp"%>

	<%@include file="all_Component/footer.jsp"%>
</body>
</html>