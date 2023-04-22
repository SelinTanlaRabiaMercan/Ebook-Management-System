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
						<form action="../addBooks" method="POST"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="bookName">Book Name:</label> <input type="text"
									id="bookName" name="bookName" class="form-control"
									required="required">
							</div>
							<div class="form-group">
								<label for="authorName">Author Name:</label> <input type="text"
									id="authorName" name="authorName" class="form-control"
									required="required">
							</div>
							<div class="form-group">
								<label for="price">Price:</label> <input type="text" id="price"
									name="price" class="form-control" required="required">
							</div>
							<div class="form-group">
								<label for="bookCategory">Book Category:</label> <select
									id="bookCategory" name="bookCategory" class="form-control">
									<option value="Novel">Novel</option>
									<option value="Short Story">Short Story</option>
									<option value="Biography">Biography</option>
									<option value="Autobiography">Autobiography</option>
									<option value="History">History</option>
									<option value="Non-fiction">Non-fiction</option>
									<option value="Horror">Horror</option>
									<option value="Adventure">Adventure</option>
									<option value="Mystery">Mystery</option>
									<option value="Detective">Detective</option>
									<option value="Science Fiction">Science Fiction</option>
									<option value="Classic">Classic</option>
									<option value="Philosophy">Philosophy</option>
									<option value="Psychology">Psychology</option>
									<option value="Art">Art</option>
									<option value="Humor">Humor</option>
									<option value="Children">Children</option>
									<option value="Young Adult">Young Adult</option>
									<option value="Religious">Religious</option>
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
									id="bookPhoto" name="bookPhoto" class="form-control-file"
									required="required">
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