<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAL.BookdtlsDALimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.Bookdtls"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.User"%>

<!-- NOVEL -->
<hr>
<br>
<section id="Novel"></section>

<h3
	style="text-align: center; font-family: Montserrat; position: relative;">Novel</h3>
<%
BookdtlsDALimpl daln = new BookdtlsDALimpl(DBConnect.getConnection());
List<Bookdtls> listn = daln.getNovel();
int in = 1;
%>
<div class="card-container">
	<%
	for (Bookdtls b : listn) {
		if (in % 6 == 0) {
	%>
</div>
<div class="card-container">
	<%
	}
	%>
	<div class="card" style="height: 500px">
		<div style="text-align: center;">
			<img src="book/<%=b.getPhoto()%>" style="height: 200px;"
				alt="Card image">
		</div>
		<h3><%=b.getBookname()%></h3>
		<p>
			Yazar :
			<%=b.getAuthor()%></p>
		<p>
			Fiyat :
			<%=b.getPrice()%>
			TL
		</p>
		<p>
			Türü :
			<%=b.getBookCategory()%></p>
		<p>
			Durumu :
			<%=b.getStatus()%></p>
		<div class="buttons button-container">
			<%
			if (session.getAttribute("email") != null) {
			%>
		<a href="cart?bookid=<%=b.getBookId()%>&&email=<%=session.getAttribute("email")%>&&uid=<%=session.getAttribute("id")%>">
			<button data-toggle="modal" data-target="#examplebModal"
				type="submit">Sepete Ekle</button>
			</a>
			<input type="hidden" name="bookId" id="bookId" value="">
			<%
			} else if (session.getAttribute("email") == null) {
			%>
			<button data-toggle="modal" data-target="#exampleModal" type="submit">Sepete
				Ekle</button>
			<%
			}
			%>

			<a href="viewBook.jsp?id=<%=b.getBookId()%>"><button>Detayları
					Gör</button></a>

		</div>
	</div>
	<%
	in++;
	}
	%>
</div>





<!-- HİSTORY -->
<section id="History"></section>
<hr>
<br>
<hr>
<br>
<h3
	style="text-align: center; font-family: Montserrat; position: relative;">History</h3>
<%
BookdtlsDALimpl dalh = new BookdtlsDALimpl(DBConnect.getConnection());
List<Bookdtls> listh = dalh.getHistory();
int ih = 1;
%>
<div class="card-container">
	<%
	for (Bookdtls b : listh) {
		if (ih % 6 == 0) {
	%>
</div>
<div class="card-container">
	<%
	}
	%>
	<div class="card" style="height: 500px">
		<div style="text-align: center;">
			<img src="book/<%=b.getPhoto()%>" style="height: 200px;"
				alt="Card image">
		</div>
		<h3><%=b.getBookname()%></h3>
		<p>
			Yazar :
			<%=b.getAuthor()%></p>
		<p>
			Fiyat :
			<%=b.getPrice()%>
			TL
		</p>
		<p>
			Türü :
			<%=b.getBookCategory()%></p>
		<p>
			Durumu :
			<%=b.getStatus()%></p>
		<div class="buttons button-container">
			<%
			if (session.getAttribute("email") != null) {
			%>
			<a href="cart?bookid=<%=b.getBookId()%>&&email=<%=session.getAttribute("email")%>&&uid=<%=session.getAttribute("id")%>">
			<button data-toggle="modal" data-target="#examplebModal"
				type="submit">Sepete Ekle</button>
			</a>
			<%
			} else if (session.getAttribute("email") == null) {
			%>
			<button data-toggle="modal" data-target="#exampleModal" type="submit">Sepete
				Ekle</button>
			<%
			}
			%>

			<a href="viewBook.jsp?id=<%=b.getBookId()%>"><button>Detayları
					Gör</button></a>
		</div>
	</div>
	<%
	ih++;
	}
	%>
</div>



<!-- Tüm Kitaplar -->
<section id="TumKitaplar"></section>
<hr>
<br>
<hr>
<br>
<h3
	style="text-align: center; font-family: Montserrat; position: relative;">Tüm
	Kitaplar</h3>
<%
BookdtlsDALimpl daltk = new BookdtlsDALimpl(DBConnect.getConnection());
List<Bookdtls> listtk = daltk.getAllBook();
int itk = 1;
%>
<div class="card-container">
	<%
	for (Bookdtls b : listtk) {
		if (itk % 5 == 0) {
	%>
</div>
<div class="card-container">
	<%
	}
	%>
	<div class="card" style="height: 500px">
		<div style="text-align: center;">
			<img src="book/<%=b.getPhoto()%>" style="height: 200px;"
				alt="Card image">
		</div>
		<h3><%=b.getBookname()%></h3>
		<p>
			Yazar :
			<%=b.getAuthor()%></p>
		<p>
			Fiyat :
			<%=b.getPrice()%>
			TL
		</p>
		<p>
			Türü :
			<%=b.getBookCategory()%></p>
		<p>
			Durumu :
			<%=b.getStatus()%></p>
		<div class="buttons button-container">
			<%
			if (session.getAttribute("email") != null) {
				System.out.println("email: "+session.getAttribute("email"));
				System.out.println("user id: "+session.getAttribute("id"));
			%>
			<a href="cart?bookid=<%=b.getBookId()%>&&email=<%=session.getAttribute("email")%>&&uid=<%=session.getAttribute("id")%>">
			<button data-toggle="modal" data-target="#examplebModal"
				type="submit">Sepete Ekle</button>
			</a>
			<%
			} else if (session.getAttribute("email") == null) {
			%>
			<button data-toggle="modal" data-target="#exampleModal" type="submit">Sepete
				Ekle</button>
			<%
			}
			%>

			<a href="viewBook.jsp?id=<%=b.getBookId()%>"><button>Detayları
					Gör</button></a>
		</div>
	</div>
	<%
	itk++;
	}
	%>
</div>
<!-- Modal : KAYIT OL -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">...</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">Ürünü satın almak için giriş yapmalı
				veya kayıt olmalısınız</div>
			<div class="modal-footer">
				<button type="button" class="btn "
					style="background-color: white; color: #BFACE2;"
					data-dismiss="modal">Vazgeç</button>
				<a href="logIn.jsp">
					<button type="button" class="btn"
						style="background-color: #BFACE2; color: white;">Kayıt Ol</button>
				</a>
			</div>
		</div>
	</div>
</div>




<!-- Modal : SEPETE EKLE  -->
<div class="modal fade" id="examplebModal" tabindex="-1" role="dialog"
	aria-labelledby="examplebModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="examplebModalLabel">...</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">Ürün sepete eklendi.</div>
			<div class="modal-footer">
				<button type="button" class="btn "
					style="background-color: white; color: #BFACE2;"
					data-dismiss="modal">Alışverişe Devam Et</button>
				<a href="Sepetim.jsp">
					<button type="button" class="btn"
						style="background-color: #BFACE2; color: white;">Sepete
						Git</button>
				</a>
			</div>
		</div>
	</div>
</div>