package com.DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Bookdtls;

public class BookdtlsDALimpl implements BookdtlsDAL {
	private Connection conn;

	public BookdtlsDALimpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean BookAdd(Bookdtls dtls) {
		boolean f = false;
		try {
			String sql = "INSERT INTO bookdtls (bookname, author, price, bookCategory,status,photo,user_email) values (?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, dtls.getBookname());
			preparedStatement.setString(2, dtls.getAuthor());
			preparedStatement.setString(3, dtls.getPrice());
			preparedStatement.setString(4, dtls.getBookCategory());
			preparedStatement.setString(5, dtls.getStatus());
			preparedStatement.setString(6, dtls.getPhoto());
			preparedStatement.setString(7, dtls.getUser_email());
			
			int i=preparedStatement.executeUpdate();
			if(i==1) {
				f=true;
			}


		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return f;
	}

	@Override
	public List<Bookdtls> getAllBook() {
		List<Bookdtls> bookdtlstt=new ArrayList<Bookdtls>();
		Bookdtls b=null;
		try {
			String sql="Select * From ebook.bookdtls";
			PreparedStatement statement=conn.prepareStatement(sql);
			
			ResultSet resultSet=statement.executeQuery();
			while(resultSet.next()) {
				b=new Bookdtls();
				b.setBookId(resultSet.getInt(1));
				b.setBookname(resultSet.getString(2));
				b.setAuthor(resultSet.getString(3));
				b.setPrice(resultSet.getString(4));
				b.setBookCategory(resultSet.getString(5));
				b.setStatus(resultSet.getString(6));
				b.setPhoto(resultSet.getString(7));
				b.setUser_email(resultSet.getString(8));
				
				bookdtlstt.add(b);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bookdtlstt;
	}

}
