<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<h1 class="text-center">Add Books</h1>

		<div class="container mx-auto">
			<div class="row">
				<div class="col-8 col-md-6 offset-md-3">
					<div class="card card-body" style="width: 500px">
						<form action="bookAddServlet" method="POST"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="bookName">Book Name:</label> <input type="text"
									id="bookName" name="bookName" class="form-control" required="required">
							</div>
							<div class="form-group">
								<label for="authorName">Author Name:</label> <input type="text"
									id="authorName" name="authorName" class="form-control" required="required">
							</div>
							<div class="form-group">
								<label for="price">Price:</label> <input type="text" id="price"
									name="price" class="form-control" required="required">
							</div>
							<div class="form-group">
								<label for="bookCategory">Book Category:</label> <select
									id="bookCategory" name="bookCategory" class="form-control">
									<option value="Roman">Roman</option>
									<option value="Oyku">Öykü</option>
									<option value="Biyografi">Biyografi</option>
									<option value="Otobiyografi">Otobiyografi</option>
									<option value="Tarih">Tarih</option>
									<option value="Kurgu Dışı">Kurgu Dışı</option>
									<option value="Korku">Korku</option>
									<option value="Macera">Macera</option>
									<option value="Gizem">Gizem</option>
									<option value="Polisiye">Polisiye</option>
									<option value="Bilim Kurgu">Bilim Kurgu</option>
									<option value="Klasik">Klasik</option>
									<option value="Felsefe">Felsefe</option>
									<option value="Psikoloji">Psikoloji</option>
									<option value="Sanat">Sanat</option>
									<option value="Mizah">Mizah</option>
									<option value="Cocuk">Çocuk</option>
									<option value="Genc-Yetiskin">Genç Yetişkin</option>
									<option value="Dini">Dini</option>
								</select>
							</div>
							<div class="form-group">
								<label for="bookStatus">Book Status:</label> <select
									id="bookStatus" name="bookStatus" class="form-control">
									<option value="mevcut">Mevcut</option>
									<option value="mevcutDeil">Mevcut Değil</option>
								</select>
							</div>
							<div class="form-group">
								<label for="bookPhoto">Upload Photo:</label> <input type="file"
									id="bookPhoto" name="bookPhoto" class="form-control-file" required="required">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="adminAllComponent/footer.jsp"%>

</body>
</html>