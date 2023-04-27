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
			userDALimpl daLimpl=new userDALimpl(DBConnect.getConnection());

			HttpSession session=req.getSession();//OTURUM OLUŞTURMAK İÇİN
			// Login Servlet
		//	String username = // Kullanıcının adını buradan alınacak

			
			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
			
			
			System.out.println(email+" "+pwd);
			
			if("admin@gmail.com".equals(email) && "12345".equals(pwd)) {
				User us=new User();
				session.setAttribute("email", email);
			    // Ana sayfaya yönlendir
				//emaili uzun süre tutmak için
			    resp.sendRedirect(req.getContextPath() + "/admin/Home.jsp");
				//resp.sendRedirect("admin/Home.jsp");
			} else {
				User user=daLimpl.login(email, pwd);
				if(user!=null) {
					resp.sendRedirect("Home.jsp");
				}else {
					session.setAttribute("failedmesajnouser", "kullanıcı bulunamadı");
					resp.sendRedirect("logIn.jsp");
				}
				
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("LoginServlette : "+e.getMessage());
		}


	}

}
