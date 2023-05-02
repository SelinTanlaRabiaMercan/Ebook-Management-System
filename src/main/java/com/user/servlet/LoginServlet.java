package com.user.servlet;

import java.io.IOException;

import com.DAL.userDALimpl;
import com.DB.DBConnect;
import com.entity.User;
import com.mysql.cj.Session;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			userDALimpl daLimpl = new userDALimpl(DBConnect.getConnection());

			HttpSession session = req.getSession();// OTURUM OLUŞTURMAK İÇİN
			// Login Servlet
			// String username = // Kullanıcının adını buradan alınacak

			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
			String strUserId = req.getParameter("userId");
			int userId = 0;
			if (strUserId != null && !strUserId.isEmpty()) {
			   userId = Integer.parseInt(strUserId);
			}

			System.out.println(email + " " + pwd + " " + strUserId);

			//int uid = Integer.parseInt(req.getParameter("id"));


			if ("admin@gmail.com".equals(email) && "12345".equals(pwd)) {
				User us = new User();
				session.setAttribute("email", email);
				session.setAttribute("id", userId);
				resp.sendRedirect(req.getContextPath() + "/admin/Home.jsp");
				return;
			} else {

				User user = daLimpl.login(email, pwd);
				if (user != null) {
				        session.setAttribute("id", user.getId());
				        session.setAttribute("email", email);
				        
					
					// Ana sayfaya yönlendir
					// emaili uzun süre tutmak için
					resp.sendRedirect(req.getContextPath() + "/Home.jsp");}
					else {
					session.setAttribute("failedmesajnouser", "kullanıcı bulunamadı");
					resp.sendRedirect("logIn.jsp");
				}

			}

		} catch (Exception e) {
			System.out.println("LoginServlette : " + e.getMessage());
			e.printStackTrace();
		}
	}
	

}
