
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar1">
	<div class="navbar-left1" style="margin-left: 15px">
		<a class="navbar-link1" href="index.jsp">Home</a> <select
			style="border: none;" class="navbar-link1"
			onchange="location = this.value;">
			<option value="#" selected>Kategoriler</option>
			<option value="#TumKitaplar">Tüm Kitaplar</option>
			<option value="#Novel">Novel</option>
			<option value="#dystopia">Dystopia</option>
			<option value="#Short_Story">Short Story</option>
			<option value="#Biography">Biography</option>
			<option value="#Autobiography">Autobiography</option>
			<option value="#History">History</option>
			<option value="#Non-fiction">Non-fiction</option>
			<option value="#Horror">Horror</option>
			<option value="#Adventure">Adventure</option>
			<option value="#Mystery">Mystery</option>
			<option value="#Detective">Detective</option>
			<option value="#Science_Fiction">Science Fiction</option>
			<option value="#Science">Science</option>
			<option value="#Classic">Classic</option>
			<option value="#Philosophy">Philosophy</option>
			<option value="#Psychology">Psychology</option>
			<option value="#Art">Art</option>
			<option value="#Humor">Humor</option>
			<option value="#Children">Children</option>
			<option value="#Young_Adult">Young Adult</option>
			<option value="#Religious">Religious</option>
		</select>

	</div>
	<div class="navbar-right1">
		<a class="navbar-link1" href="#hakkimizda">Hakkımızda</a> <a
			class="navbar-link1" href="#">Ayarlar</a>
		<form class="navbar-form1">
			<input class="navbar-search1" type="text" placeholder="Search...">
			<button class="navbar-search-btn2 navbar-button1" type="submit">Go</button>
		</form>
		<a class="navbar-link1" href="logIn.jsp">Giriş / Kayıt Ol</a>
	</div>
</nav>


