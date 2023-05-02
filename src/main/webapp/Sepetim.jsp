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

<meta charset="UTF-8">
<%@ page import="com.DAL.BookdtlsDALimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.Bookdtls"%>
<%@ page import="java.util.List"%>
<title>Ebook - Sepetim</title>
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
<%
String idParam = request.getParameter("id");
if (idParam != null && !idParam.isEmpty()) {
    int id = Integer.parseInt(idParam);
    BookdtlsDALimpl dalimpl = new BookdtlsDALimpl(DBConnect.getConnection());
    Bookdtls book = dalimpl.getBookById(id);
%>

<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Book Name && Author</th>
                <th scope="col">Price</th>
                <th scope="col">Adet</th>
                <th scope="col">Sil</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th><img src="book/<%=book.getPhoto()%>" style="height: 50px;"></th>
                <td><%=book.getBookname()%> - <%=book.getAuthor()%></td>
                <td><%=book.getPrice()%></td>
                <td>@mdo</td>
                <td><button class="navbar-link1">Sil</button></td>
            </tr>
            <%
} 
%>
            
        </tbody>
    </table>
</div>
<%@include file="all_Component/footer.jsp"%>
</body>
</html>
