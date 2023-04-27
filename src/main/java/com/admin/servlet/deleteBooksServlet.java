package com.admin.servlet;

import java.io.IOException;

import com.DAL.BookdtlsDALimpl;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class deleteBooksServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));

			BookdtlsDALimpl limpl = new BookdtlsDALimpl(DBConnect.getConnection());
			boolean f = limpl.deleteBook(id);
			HttpSession session = req.getSession();
			if (f) {
				resp.sendRedirect("admin/allBooks.jsp");
			} else {
				resp.sendRedirect("admin/allBooks.jsp");
			}

		} catch (Exception e) {
			System.out.println("deleteBooksServlet sayfasında hata : " + e.getMessage());
			e.printStackTrace();
		}
	}

}
