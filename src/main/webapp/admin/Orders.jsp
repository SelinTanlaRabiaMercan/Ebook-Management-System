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
		<h1 class="text-center">Orders</h1>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Phone No</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>John Doe</td>
					<td>johndoe@example.com</td>
					<td>123 Main St.</td>
					<td>(555) 555-1234</td>
					<td>The Great Gatsby</td>
					<td>F. Scott Fitzgerald</td>
					<td>$9.99</td>
					<td>Credit Card</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Jane Smith</td>
					<td>janesmith@example.com</td>
					<td>456 Maple Ave.</td>
					<td>(555) 555-5678</td>
					<td>To Kill a Mockingbird</td>
					<td>Harper Lee</td>
					<td>$12.99</td>
					<td>PayPal</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Michael Johnson</td>
					<td>michaeljohnson@example.com</td>
					<td>789 Oak St.</td>
					<td>(555) 555-9012</td>
					<td>1984</td>
					<td>George Orwell</td>
					<td>$8.99</td>
					<td>Credit Card</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Amy Lee</td>
					<td>amylee@example.com</td>
					<td>1010 Pine St.</td>
					<td>(555) 555-3456</td>
					<td>The Catcher in the Rye</td>
					<td>J.D. Salinger</td>
					<td>$10.99</td>
					<td>Credit Card</td>
				</tr>
				<tr>
					<td>5</td>
					<td>William Brown</td>
					<td>williambrown@example.com</td>
					<td>1313 Elm St.</td>
					<td>(555) 555-7890</td>
					<td>The Hobbit</td>
					<td>J.R.R. Tolkien</td>
					<td>$14.99</td>
					<td>PayPal</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@include file="adminAllComponent/footer.jsp"%>

</body>
</html>