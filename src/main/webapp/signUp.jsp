<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<title>Kayıt Ol Formu</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-YvM3qMyH6Z9U6bJUoxUTAVP6wStP6UBdA6ZZLlAFhABrvZdM1ssjWsDh4W4M4z4Y5Y5Hy5j5/sBxDhLPOtuF2Q=="
	crossorigin="anonymous" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">

<%@include file="all_Component/allCSS.jsp"%>
<style>
input[type="text"], input[type="email"], input[type="tel"], input[type="password"],
	input[type="radio"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 16px;
}

input[type="radio"] {
	margin: 0;
	margin-right: 10px;
}
</style>
</head>
<body>

	<%@include file="all_Component/navbar.jsp"%>

	<br>

	<div class="form-container">
		<div class=" container" style="margin-top: 100px; position: relative;">
			<h2>Kayıt Ol</h2>
<h4>4.video</h4>

			<c:if test="${not empty successmesaj }">
				<p class="text-center text-success">${successmesaj }</p>
				<c:remove var="successmesaj " scope="session" />
			</c:if>
			<c:if test="${not empty failedmesaj }">
				<p class="text-center text-danger">${failedmesaj }</p>
				<c:remove var="failedmesaj" scope="session" />
			</c:if>

			<form action="Kayit" method="post">

				<label for="isim">İsim</label> <input type="text" id="isim"
					name="isim" required> <label for="email">Email
					Adresi</label> <input type="email" id="email" name="email" required>

				<label for="telefon">Telefon</label> <input type="tel" id="telefon"
					name="telefon" required> <label for="password">Parola</label>
				<input type="password" id="parola" name="parola" required>


				<div class="form-group">
					<input type="checkbox" name="terms" id="terms" required> <label
						for="terms">Check me out</label>
				</div>
				<button type="submit" class="btns btn-register">Kayıt Ol</button>
			</form>
		</div>
	</div>


	<%@include file="all_Component/footer.jsp"%>

</body>
</html>