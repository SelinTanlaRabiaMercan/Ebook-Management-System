<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAL.BookdtlsDALimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.Bookdtls"%>
<%@ page import="java.util.List"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="adminAllComponent/allCSS.jsp"%>

</head>
<body>
	<%@include file="adminAllComponent/navbar.jsp"%>
	<div style="margin-top: 100px;">
		<h1 class="text-center">All Books</h1>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">#</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author Name</th>
					<th scope="col">Price</th>
					<th scope="col">Book Category</th>
					<th scope="col">Book Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				BookdtlsDALimpl bookdtlsDALimpl = new BookdtlsDALimpl(DBConnect.getConnection());
				List<Bookdtls> list = bookdtlsDALimpl.getAllBook();
				for (Bookdtls b : list) {
				%>
				<td><%=b.getBookId()%></td>
				<td><img src="../book/<%=b.getPhoto()%>" style="width: 50 px;height: 50px"></td>
				<td><%=b.getBookname()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td>
					<button type="button" class="btn btn-primary">Edit</button>
					<button type="button" class="btn btn-danger">Delete</button>
				</td>
				
				<%
				}
				%>






			</tbody>
		</table>
	</div>
	<%@include file="adminAllComponent/footer.jsp"%>

</body>
</html>