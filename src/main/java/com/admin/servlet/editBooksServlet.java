package com.admin.servlet;

import java.io.IOException;

import com.DAL.BookdtlsDALimpl;
import com.DB.DBConnect;
import com.entity.Bookdtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/editBooksServlet")
public class editBooksServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int bookId = Integer.parseInt(req.getParameter("id"));
			String bookName = req.getParameter("bookName");// Request, kullanıcının tarayıcısından sunucuya gönderdiği
															// bir istektir
			String author = req.getParameter("authorName");
			String price = req.getParameter("price");
			String bookStatus = req.getParameter("bookStatus");

			System.out.println(bookName + " " + author + " " + price + " " + bookStatus);

			Bookdtls book = new Bookdtls();
			book.setBookId(bookId);
			book.setBookname(bookName);
			book.setAuthor(author);
			book.setPrice(price);
			book.setStatus(bookStatus);

			BookdtlsDALimpl limpl = new BookdtlsDALimpl(DBConnect.getConnection());
			boolean f = limpl.updateBook(book);

			HttpSession session = req.getSession();
			if (f) {
				resp.sendRedirect("admin/allBooks.jsp");
			} else {
				resp.sendRedirect("admin/allBooks.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("editBookServlet sayfasında : " + e.getMessage());
		}
	}

}
