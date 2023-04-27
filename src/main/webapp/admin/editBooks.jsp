<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAL.BookdtlsDALimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.Bookdtls"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Books</title>
<%@include file="adminAllComponent/allCSS.jsp"%>

</head>
<body>
	<%@include file="adminAllComponent/navbar.jsp"%>
	<div style="margin-top: 100px;">
		<h1 class="text-center">Edit Books</h1>

		<div class="container mx-auto">
			<div class="row">
				<div class="col-8 col-md-6 offset-md-3">
					<div class="card card-body" style="width: 500px">
						<%
						int id=Integer.parseInt(request.getParameter("id"));
							System.out.println(" editBooks.jsp getBookById : id : "+id);
						
						BookdtlsDALimpl dalimpl = new BookdtlsDALimpl(DBConnect.getConnection());
						Bookdtls b = dalimpl.getBookById(id);
						System.out.println(" editBooks.jsp getBookById : id (getBookById): "+id);
						%>

						<form action="/editBooksServlet" method="POST">
						<input type="hidden" name="id" value="<%= b.getBookId() %>">
						
							<div class="form-group">
								<label for="bookName">Book Name:</label> <input type="text"
									id="bookName" name="bookName" class="form-control"
									value="<%=b.getBookname()%>" required="required">
										<%
							System.out.println(" editBooks.jsp getBookById : id :*** "+id);
						
										System.out.println(" b:*** "+b);

										System.out.println(" b getBookname:*** "+b.getBookname());

						System.out.println(" editBooks.jsp getBookById : id (getBookById)***: "+id);
						%>
							</div>
							<div class="form-group">
								<label for="authorName">Author Name:</label> <input type="text"
									id="authorName" name="authorName" class="form-control"
									value="<%=b.getAuthor()%>" required="required">
							</div>
							<div class="form-group">
								<label for="price">Price:</label> <input type="text" id="price"
									name="price" class="form-control" value="<%=b.getPrice()%>"
									required="required">
							</div>

							<div class="form-group">
								<label for="bookStatus">Book Status:</label> <select
									id="bookStatus" name="bookStatus" class="form-control">
									<option value="mevcut"
										<%=b.getStatus().equals("mevcut") ? "selected" : ""%>>Mevcut</option>
									<option value="MevcutDeil"
										<%=b.getStatus().equals("mevcutDeil") ? "selected" : ""%>>Mevcut
										Değil</option>
								</select>
							</div>

							<a href="allBooks.jsp"><button type="submit"
									class="btn btn-primary">Update</button></a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="adminAllComponent/footer.jsp"%>

</body>
</html>