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
		<h1 class="text-center">All Books</h1>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Book Photo</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author Name</th>
					<th scope="col">Price</th>
					<th scope="col">Book Category</th>
					<th scope="col">Book Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td></td>
					<td>The Great Gatsby</td>
					<td>F. Scott Fitzgerald</td>
					<td>$12.99</td>
					<td>Classic Literature</td>
					<td>In Stock</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td></td>
					<td>1984</td>
					<td>George Orwell</td>
					<td>$9.99</td>
					<td>Dystopian Fiction</td>
					<td>Out of Stock</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td></td>
					<td>To Kill a Mockingbird</td>
					<td>Harper Lee</td>
					<td>$11.99</td>
					<td>Classic Literature</td>
					<td>In Stock</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">4</th>
					<td></td>
					<td>The Catcher in the Rye</td>
					<td>J.D. Salinger</td>
					<td>$10.99</td>
					<td>Coming-of-Age Fiction</td>
					<td>In Stock</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">5</th>
					<td></td>
					<td>Pride and Prejudice</td>
					<td>Jane Austen</td>
					<td>$8.99</td>
					<td>Classic Literature</td>
					<td>Out of Stock</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">6</th>
					<td></td>
					<td>1984</td>
					<td>George Orwell</td>
					<td>14.99</td>
					<td>Science Fiction</td>
					<td>Not Available</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">7</th>
					<td></td>
					<td>Animal Farm</td>
					<td>George Orwell</td>
					<td>11.99</td>
					<td>Science Fiction</td>
					<td>Available</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">8</th>
					<td></td>
					<td>Brave New World</td>
					<td>Aldous Huxley</td>
					<td>17.99</td>
					<td>Science Fiction</td>
					<td>Available</td>
					<td>
						<button type="button" class="btn btn-primary">Edit</button>
						<button type="button" class="btn btn-danger">Delete</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@include file="adminAllComponent/footer.jsp"%>

</body>
</html>