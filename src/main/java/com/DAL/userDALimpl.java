package com.DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class userDALimpl implements userDAL {

	private Connection conn;

	public userDALimpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean kisiKayit(User us) {
		boolean f = false;
		try {
			String sql = "INSERT INTO user (name, email, telefon_no, password) values (?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, us.getName());
			preparedStatement.setString(2, us.getEmail());
			preparedStatement.setString(3, us.getTelefon());
			preparedStatement.setString(4, us.getPassword());

			int i = preparedStatement.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return f;
	}

	public User login(String email, String password) {
		User user=null;
		try {
			String sql="SELECT * FROM user WHERE email=? AND password=?";
			PreparedStatement statement=conn.prepareStatement(sql);
			statement.setString(1, email);
			statement.setString(2, password);
			ResultSet rs=statement.executeQuery();
			while (rs.next()) {
				user=new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setTelefon(rs.getString(4));
				user.setPassword(rs.getString(5));
				user.setAddress(rs.getString(6));
				user.setLandmark(rs.getString(7));
				user.setCity(rs.getString(8));
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return user;
	}



}
