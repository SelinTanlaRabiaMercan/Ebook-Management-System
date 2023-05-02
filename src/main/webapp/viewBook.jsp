<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAL.BookdtlsDALimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.Bookdtls"%>
<%@ page import="java.util.List"%>
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
<meta charset="UTF-8">
<title>viewBook</title>
<%@include file="all_Component/allCSS.jsp"%>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container" style="margin-top: 100px; margin-bottom: 50px">
		<div class="row">
			<%
			int id = Integer.parseInt(request.getParameter("id"));

			BookdtlsDALimpl dalimpl = new BookdtlsDALimpl(DBConnect.getConnection());
			Bookdtls b = dalimpl.getBookById(id);
			%>
			<div class="col-md-6">
				<img src="book/<%=b.getPhoto()%>" style="height: 400px;">
			</div>
			<div class="col-md-6">
				<h1><%=b.getBookname()%>
					-
					<%=b.getAuthor()%></h1>
				<h4>
					Kategori :<%=b.getBookCategory()%></h4>
				<h4><%=b.getStatus()%></h4>
				<h3 style="color: #BFACE2"><%=b.getPrice()%>
					TL
				</h3>
				<br>

				<%
				if (session.getAttribute("email") != null) {
				%>
				<button class="navbar-button1" data-toggle="modal"
					data-target="#examplebModal" type="submit">Sepete Ekle</button>
				<%
				} else if (session.getAttribute("email") == null) {
				%>
				<button class="navbar-button1" data-toggle="modal"
					data-target="#exampleModal" type="submit">Sepete Ekle</button>
				<%
				}
				%>

			</div>
		</div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">...</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Ürünü satın almak için giriş yapmalı
					veya kayıt olmalısınız</div>
				<div class="modal-footer">
					<button type="button" class="btn "
						style="background-color: white; color: #BFACE2;"
						data-dismiss="modal">Vazgeç</button>
					<a href="logIn.jsp">
						<button type="button" class="btn"
							style="background-color: #BFACE2; color: white;">Kayıt
							Ol</button>
					</a>
				</div>
			</div>
		</div>
	</div>




	<!-- Modal : SEPETE EKLE  -->
	<div class="modal fade" id="examplebModal" tabindex="-1" role="dialog"
		aria-labelledby="examplebModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="examplebModalLabel">...</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Ürün sepete eklendi.</div>
				<div class="modal-footer">
					<button type="button" class="btn "
						style="background-color: white; color: #BFACE2;"
						data-dismiss="modal">Alışverişe Devam Et</button>
					<a href="Sepetim.jsp">
						<button type="button" class="btn"
							style="background-color: #BFACE2; color: white;">Sepete
							Git</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_Component/footer.jsp"%>

</body>
</html>