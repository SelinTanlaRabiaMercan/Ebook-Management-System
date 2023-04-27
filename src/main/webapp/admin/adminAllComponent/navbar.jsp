
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar1">
	<div class="navbar-left1">
		<a class="navbar-link1 " style="margin-left: 15px" href="Home.jsp">Home</a>
		<!-- 
    <a class="navbar-link1" href="#RecentBook">Recent Book</a>
    <a class="navbar-link1" href="#OldBook">Old Book</a>
    <a class="navbar-link1" href="#NewBook">New Book</a>
     -->
	</div>
	<div class="navbar-right1">
		
		
		<form class="navbar-form1">
			<input class="navbar-search1" type="text" placeholder="Search...">
			<button class="navbar-search-btn2 navbar-button1" type="submit">Go</button>
		</form>
		 <select  style="border: none;"
			class="navbar-link1" onchange="location = this.value;">
			<option value="#" selected>Ayarlar</option>
			<option value="hesapAyarları.jsp">Hesap Ayarları</option>
			<option value="kullanıcıAyarları.jsp">Kullanıcı Ayarları</option>
			<option value="#hakkimizda">Hakkımızda</option>
		</select>
		
	</div>
</nav>


