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
@WebServlet("/cart")
public class cartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

		

			int bookid=Integer.parseInt(req.getParameter("bookid"));
			int uid=Integer.parseInt("uid");
			String email = req.getParameter("email");
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("cartServlette : "+e.getMessage());		}
	}

}
