package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import com.DAL.BookdtlsDALimpl;
import com.DAL.userDALimpl;
import com.DB.DBConnect;
import com.entity.Bookdtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/addBooks")
@MultipartConfig
public class BooksAddServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bookName");
			String authorName = req.getParameter("authorName");
			String price = req.getParameter("price");
			String bookCategory = req.getParameter("bookCategory");
			String bookStatus = req.getParameter("bookStatus");
			// dosya yükleme
			Part part = req.getPart("bookPhoto");
			String bookPhoto = part.getSubmittedFileName();

			System.out.println(bookName + " " + authorName + " " + price + " " + bookCategory + " " + bookStatus + " "
					+ bookPhoto);

			Bookdtls b = new Bookdtls(bookName, authorName, price, bookCategory, bookStatus, bookPhoto,
					"admin@gmail.com");
			System.out.println(b);

			BookdtlsDALimpl bookdtlsDALimpl = new BookdtlsDALimpl(DBConnect.getConnection());
			boolean f = bookdtlsDALimpl.BookAdd(b);

			HttpSession session = req.getSession();
			if (f) {
				//upload edilen dosyayı sunucudaki bir yere kaydetmek için kullanılır.dosya yoksa oluşturur
				String path=getServletContext().getRealPath("")+"book";
				File fl=new File(path);
				part.write(path+File.separator+bookPhoto);
				
				
				
				session.setAttribute("successmesaj", "Kayıt başarılı.");
				resp.sendRedirect("admin/addBooks.jsp");
			} else {
				session.setAttribute("failedmesaj", "Kayıt başarısız.");
				resp.sendRedirect("admin/addBooks.jsp");
			}

			/*
			 * Bookdtls bookdtls =new Bookdtls(); bookdtls.setBookname(bookName);
			 * bookdtls.setAuthor(authorName); bookdtls.setPrice(price);
			 * bookdtls.setBookCategory(bookCategory); bookdtls.setStatus(bookStatus);
			 * bookdtls.setPhoto(bookPhoto);
			 * 
			 * HttpSession session=req.getSession();
			 * 
			 * if (price != null && authorName!=null ) { BookdtlsDALimpl bookdtlsDALimpl=new
			 * BookdtlsDALimpl(DBConnect.getConnection()); boolean f =
			 * bookdtlsDALimpl.BookAdd(bookdtls); if (f) {
			 * session.setAttribute("successmesaj", "Kayıt başarılı.");
			 * resp.sendRedirect("admin/addBooks.jsp"); } else {
			 * session.setAttribute("failedmesaj", "Kayıt başarısız.");
			 * resp.sendRedirect("admin/addBooks.jsp"); }
			 * 
			 * } else { session.setAttribute("failedmesaj",
			 * "Lütfen kullanım şartlarını kabul edin.");
			 * resp.sendRedirect("admin/addBooks.jsp"); }
			 */
		} catch (

		Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}
