package com.user.servlet;

import java.io.IOException;

import com.DAL.userDALimpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Kayit")
public class KayitServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    try {
		        String name = req.getParameter("isim");
		        String email = req.getParameter("email");
		        String telefon = req.getParameter("telefon");
		        String parola = req.getParameter("parola");
		        String check = req.getParameter("terms");

		        System.out.println(name + " " + email + " " + telefon + " " + parola + " " + check);

		        User user = new User();
		        user.setName(name);
		        user.setEmail(email);
		        user.setTelefon(telefon);
		        user.setPassword(parola);

		        HttpSession session = req.getSession();

		        // check if any required fields are empty
		        if (name == null || email == null || telefon == null || parola == null ||
		                name.isEmpty() || email.isEmpty() || telefon.isEmpty() || parola.isEmpty()) {
		            session.setAttribute("failedmesaj", "Lütfen tüm alanları doldurun.");
		            resp.sendRedirect("logIn.jsp");
		            return;
		        }

		        if (check != null) {
		            userDALimpl daLimpl = new userDALimpl(DBConnect.getConnection());
		            boolean f = daLimpl.kisiKayit(user);
		            if (f) {
		                session.setAttribute("successmesaj", "Kayıt başarılı.");
		                resp.sendRedirect("logIn.jsp");
		            } else {
		                session.setAttribute("failedmesaj", "Kayıt başarısız.");
		                resp.sendRedirect("logIn.jsp");
		            }

		        } else {
		            session.setAttribute("failedmesaj", "Lütfen kullanım şartlarını kabul edin.");
		            resp.sendRedirect("logIn.jsp");
		        }
		    } catch (Exception e) {
		        // handle exception
				System.out.println(e.getMessage());
				e.printStackTrace();
		    }
		}

	}


