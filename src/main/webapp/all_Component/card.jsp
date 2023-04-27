<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAL.BookdtlsDALimpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.Bookdtls"%>
<%@ page import="java.util.List"%>
<!-- NOVEL -->
<hr><br>
<section id="Novel"></section>

<h3 style="text-align: center; font-family: Montserrat; position: relative;">Novel</h3>
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
			<img src="book/<%=b.getPhoto()%>" style="height: 200px;" alt="Card image">
		</div>
		<h3><%=b.getBookname()%></h3>
		<p>Yazar : <%=b.getAuthor()%></p>
		<p>Fiyat : <%=b.getPrice()%> TL</p>
		<p>Türü : <%=b.getBookCategory()%></p>
		<p>Durumu : <%=b.getStatus()%></p>
		<div class="buttons button-container">
			<button>Sepete Ekle</button>
			<button>Detayları Gör</button>
		</div>
	</div>
	<%
	in++;
	}
	%>
</div>

<!-- HİSTORY -->
<section id="History"></section>
<hr><br><hr><br>
<h3 style="text-align: center; font-family: Montserrat; position: relative;">History</h3>
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
			<img src="book/<%=b.getPhoto()%>" style="height: 200px;" alt="Card image">
		</div>
		<h3><%=b.getBookname()%></h3>
		<p>Yazar : <%=b.getAuthor()%></p>
		<p>Fiyat : <%=b.getPrice()%> TL</p>
		<p>Türü : <%=b.getBookCategory()%></p>
		<p>Durumu : <%=b.getStatus()%></p>
		<div class="buttons button-container">
			<button>Sepete Ekle</button>
			<button>Detayları Gör</button>
		</div>
	</div>
	<%
	ih++;
	}
	%>
</div>

<!-- TÜM KİTAPLAR -->
<section id="TumKitaplar"></section>
<hr><br><hr><br>
<h3 style="text-align: center; font-family: Montserrat; position: relative;">Tüm Kitaplar</h3>
<%
BookdtlsDALimpl dal = new BookdtlsDALimpl(DBConnect.getConnection());
List<Bookdtls> list = dal.getAllBook();
int i = 1;
%>
<div class="card-container">
	<%
	for (Bookdtls b : list) {
		if (i % 4 == 0) {
	%>
</div>
<div class="card-container">
		<%
		}
		%>
	<div class="card" style="height: 500px">
		<div style="text-align: center;">
			<img src="book/<%=b.getPhoto()%>" style="height: 200px;" alt="Card image">
		</div>
		<h3><%=b.getBookname()%></h3>
		<p>Yazar : <%=b.getAuthor()%></p>
		<p>Fiyat : <%=b.getPrice()%> TL</p>
		<p>Türü : <%=b.getBookCategory()%></p>
		<p>Durumu : <%=b.getStatus()%></p>
		<div class="buttons button-container">
			<button>Sepete Ekle</button>
			<button>Detayları Gör</button>
		</div>
	</div>
	<%
	i++;
	}
	%>
</div>


<!-- KATEGORİYE GÖRE KİTAPLAR -->
<!-- 
<%
BookdtlsDALimpl dalt = new BookdtlsDALimpl(DBConnect.getConnection());
String kategori = request.getParameter("kategori");
if (kategori == null) {
kategori = "Tüm Kitaplar";
}
List<Bookdtls> listt = dalt.getBooksByCategory(kategori);
int it = 1;
%>

<section id="<%=kategori.replaceAll("\\s+","_")%>"></section>
<hr><br><hr><br>
<h3 style="text-align: center; font-family: Montserrat; position: relative;"><%=kategori%></h3>
<div class="card-container">
    <%
    for (Bookdtls b : listt) {
        if (it % 4 == 0) {
    %>
</div>
<div class="card-container">
        <%
        }
        %>
    <div class="card" style="height: 500px">
        <div style="text-align: center;">
            <img src="book/<%=b.getPhoto()%>" style="height: 200px;" alt="Card image">
        </div>
        <h3><%=b.getBookname()%></h3>
        <p>Yazar : <%=b.getAuthor()%></p>
        <p>Fiyat : <%=b.getPrice()%> TL</p>
        <p>Türü : <%=b.getBookCategory()%></p>
        <p>Durumu : <%=b.getStatus()%></p>
        <div class="buttons button-container">
            <button>Sepete Ekle</button>
            <button>Detayları Gör</button>
        </div>
    </div>
    <%
    it++;
    }
    %>
</div>
-->
