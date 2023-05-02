package com.DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Cart;

public class CartDALimpl implements CartDAL {

	private Connection conn;

	public CartDALimpl(Connection conne) {
		super();
		this.conn = conne;
	}

	@Override
	public boolean addCart(Cart c) {
		boolean f = false;
		try {
			String sql = "Insert into ebook.cart(uid,bookid,bookname,authorname,price,totalprice) values (?,?,?,?,?,?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, c.getUid());
			statement.setInt(2, c.getBookid());
			statement.setString(3, c.getBookname());
			statement.setString(4, c.getAuthorname());
			statement.setDouble(5, c.getPrice());
			statement.setDouble(5, c.getTotalprice());
			
			int i=statement.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("CartDALimpl sayfasında CartAdd metodunda : " + e.getMessage());
		}
		return f;
	}

}
