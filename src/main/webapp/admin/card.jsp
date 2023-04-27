<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div style="margin-top: 100px;">
	<h1 class="text-center">admin - home</h1>
	<div class="container">
		<div class="row">
			<div class=col-md-3>
				<a href="addBooks.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x"> </i><br>
							<h4>Add Books</h4>
							<p><br>Yeni bir kitap eklemek için kullanılır.</p>
						</div>
					</div>
				</a>
			</div>
			<div class=col-md-3>
				<a href="allBooks.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-solid fa-book-open fa-3x"> </i><br>
							<h4>All Books</h4>
							<p>Tüm kitapları listelemek düzenlemek ve silmek için kullanılır.</p>
						</div>
					</div>
				</a>
			</div>
			<div class=col-md-3>
				<a href="Orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-solid fa-circle-dollar-to-slot fa-3x"> </i><br>
							<h4>Orders</h4>
							<p><br>verilen siparişleri görmek için kullanılır</p>
						</div>
					</div>
				</a>
			</div>
			<div class=col-md-3>
				<a href="<%=request.getContextPath()%>/admin/logOutServlet">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-solid fa-arrow-right-from-bracket fa-3x"> </i><br>
							<h4>Logout</h4>
							<p>10-daha sonra uğraş</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>
<br>
<br>