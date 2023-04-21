<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 

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
<title>Log In</title>
<%@include file="all_Component/allCSS.jsp"%>
</head>
<body>
	<%@include file="all_Component/navbar.jsp"%>
	<c:if test="${not empty successmesaj }">
		<p class="text-center text-success">${successmesaj }</p>
		<c:remove var="successmesaj " scope="session" />
	</c:if>
	<c:if test="${not empty failedmesaj }">
		<p class="text-center text-danger">${failedmesaj }</p>
		<c:remove var="failedmesaj" scope="session" />
	</c:if>
	<c:if test="${not empty failedmesajnouser}">
		<p class="text-center text-danger"></p>
		<c:remove var="failedmesajnouser" scope="session" />
	</c:if>
	
	<div class="form-container">
		<div style="margin-top: 80px">
			<div class="row">
				<div class="col-md-6" style="border-right: 1px solid #ccc;">
					<h2>Giriş Yap</h2>
					<form action="Login" method="POST">
						<div class="form-group">
							<label for="email">Email</label> <input type="email"
								class="form-control" id="email" name="email">
						</div>
						<div class="form-group">
							<label for="pwd">Password</label> <input type="password"
								class="form-control" id="pwd" name="pwd">
						</div>
						<button type="submit" class="btn btn-primary">Giriş Yap</button>
					</form>
				</div>
				<div class="col-md-6">
					<h2>Kayıt Ol</h2>
					<form action="Kayit" method="POST">
						<div class="form-group">
							<label for="isim">İsim</label> <input type="text" id="isim"
								name="isim" required>
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input type="email" id="email"
								name="email" required>
						</div>
						<div class="form-group">
							<label for="telefon">Telefon</label> <input type="text"
								id="telefon" name="telefon" required>
						</div>
						<div class="form-group">
							<label for="password">Parola</label> <input type="password"
								id="parola" name="parola" required>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="terms"
								name="terms"> <label class="form-check-label"
								for="terms">Kullanım şartlarını kabul ediyorum.</label>
						</div>
						<button type="submit" class="btn btn-primary">Kayıt Ol</button>
					</form>
				</div>
			</div>
		</div>
	</div>




	<%@include file="all_Component/footer.jsp"%>

</body>
</html>