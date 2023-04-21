package com.DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnect {
	


	    private static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	    private static final String DB_URL = "jdbc:mysql://localhost:3306/ebook";
	    private static final String DB_USERNAME = "root";
	    private static final String DB_PASSWORD = "lahmacun1";

	    private static Connection conn = null;

	    public static Connection getConnection() throws SQLException {
	        if (conn == null) {
	            try {
	                Class.forName(DB_DRIVER);
	                conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
	            } catch (ClassNotFoundException e) {
	                e.printStackTrace();
	            }
	        }
	        return conn;
	    }
	}



