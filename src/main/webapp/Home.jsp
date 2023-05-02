<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home : User</title><link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-YvM3qMyH6Z9U6bJUoxUTAVP6wStP6UBdA6ZZLlAFhABrvZdM1ssjWsDh4W4M4z4Y5Y5Hy5j5/sBxDhLPOtuF2Q=="
	crossorigin="anonymous" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet" />
<%@include file="all_Component/allCSS.jsp"%>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<%
	// Session'da saklanan kullanıcının adını alın
	String email = (String) session.getAttribute("email");
	
	%>
	<div style="margin-top: 100px">
		<p>
			Hoşgeldiniz,
			<%=email%>!
		</p>
	</div>
	
<div >
	<h1 class="text-center">user - home</h1>
	<div class="container">
		<div class="row">
			<div class=col-md-3>
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-solid fa-basket-shopping fa-3x"></i><br>
							<h4>Sepetim</h4>
							<p><br>Yeni bir kitap eklemek için kullanılır.</p>
						</div>
					</div>
				</a>
			</div>
			<div class=col-md-3>
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-solid fa-book-open fa-3x"> </i><br>
							<h4>jhgf</h4>
							<p>Tüm kitapları listelemek düzenlemek ve silmek için kullanılır.</p>
						</div>
					</div>
				</a>
			</div>
			<div class=col-md-3>
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-solid fa-gears fa-3x"> </i><br>
							<h4>Ayarlar</h4>
							<p><br>verilen siparişleri görmek için kullanılır</p>
						</div>
					</div>
				</a>
			</div>
			<div class=col-md-3>
				<a href="<%=request.getContextPath()%>/admin/logOutServlet">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-solid fa-arrow-right-from-bracket fa-3x"> </i><br>
							<h4>Logout</h4>
							<p>10-daha sonra uğraş</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>
<br>
<br>
	<%@include file="all_Component/footer.jsp"%>
</body>
</html>