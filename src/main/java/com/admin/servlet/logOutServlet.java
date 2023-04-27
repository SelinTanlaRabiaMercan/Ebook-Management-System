package com.admin.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class logOutServlet
 */
@WebServlet("/LogOutServlet")
public class logOutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// HttpSession öğesini al
		HttpSession session = req.getSession();

		// session öğesini sonlandır
		session.invalidate();

		// kullanıcıyı giriş sayfasına yönlendir
		resp.sendRedirect(req.getContextPath() + "/logIn.jsp");
		//resp.sendRedirect("/EBook_App/src/main/webapp/logIn.jsp");
		
	}

}
