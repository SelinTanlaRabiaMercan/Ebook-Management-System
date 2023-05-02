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

			int i = preparedStatement.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("BooksdtlsDALimpl sayfasında BookAdd metodunda : " + e.getMessage());
		}
		return f;
	}

	@Override
	public List<Bookdtls> getAllBook() {
		List<Bookdtls> bookdtlstt = new ArrayList<Bookdtls>();
		Bookdtls b = null;
		try {
			String sql = "Select * From ebook.bookdtls";
			PreparedStatement statement = conn.prepareStatement(sql);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				b = new Bookdtls();
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
			e.printStackTrace();
			System.out.println("BooksdtlsDALimpl sayfasında getAllBook metodunda : " + e.getMessage());
		}
		return bookdtlstt;
	}

	@Override
	public Bookdtls getBookById(int id) {
		Bookdtls b = null;
		try {
			String sql = "select * from ebook.bookdtls where bookId=?";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);
			System.out.println(" Bookdtls getBookById : id : " + id);

			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				b = new Bookdtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhoto(rs.getString(7));
				b.setUser_email(rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("BooksdtlsDALimpl sayfasında getBookById metodunda : " + e.getMessage());
		}

		return b;
	}

	public boolean updateBook(Bookdtls bookdtls) {
		boolean success = false;
		try {
			String sql = "UPDATE ebook.bookdtls SET bookname=?, author=?, price=?, status=? WHERE bookId=?;";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, bookdtls.getBookname());
			preparedStatement.setString(2, bookdtls.getAuthor());
			preparedStatement.setString(3, bookdtls.getPrice());
			preparedStatement.setString(4, bookdtls.getStatus());
			preparedStatement.setInt(5, bookdtls.getBookId());

			int rowsUpdated = preparedStatement.executeUpdate();
			if (rowsUpdated == 1) {
				success = true;
			}
		} catch (Exception e) {
			System.out.println("BookdtlsDALimpl sayfasında updateEditBooks metodunda : " + e.getMessage());
			e.printStackTrace();
		}
		return success;
	}

	@Override
	public boolean deleteBook(int id) {
		boolean f = false;
		try {
			String sql = "delete from ebook.bookdtls where bookId=?";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, id);
			int i = statement.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			System.out.println("BookdtlsDALimpl sayfasında deleteBook metodunda ki hata : " + e.getMessage());
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<Bookdtls> getNovel() {
		List<Bookdtls> list = new ArrayList<Bookdtls>();
		Bookdtls b = null;
		try {
			String sql = "select * from ebook.bookdtls where bookCategory='Novel'";
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				b = new Bookdtls();
				b.setBookId(set.getInt(1));
				b.setBookname(set.getString(2));
				b.setAuthor(set.getString(3));
				b.setPrice(set.getString(4));
				b.setBookCategory(set.getString(5));
				b.setStatus(set.getString(6));
				b.setPhoto(set.getString(7));
				b.setUser_email(set.getString(8));
				list.add(b);
			}
		} catch (Exception e) {
			System.out.println("BookdtlsDALimpl sayfasında getnovel metodunda ki hata : " + e.getMessage());
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Bookdtls> getHistory() {
		List<Bookdtls> list = new ArrayList<Bookdtls>();
		Bookdtls b = null;
		try {
			String sql = "select * from ebook.bookdtls where bookCategory='History'";
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				b = new Bookdtls();
				b.setBookId(set.getInt(1));
				b.setBookname(set.getString(2));
				b.setAuthor(set.getString(3));
				b.setPrice(set.getString(4));
				b.setBookCategory(set.getString(5));
				b.setStatus(set.getString(6));
				b.setPhoto(set.getString(7));
				b.setUser_email(set.getString(8));
				list.add(b);
			}
		} catch (Exception e) {
			System.out.println("BookdtlsDALimpl sayfasında getHistory metodunda ki hata : " + e.getMessage());
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Bookdtls> getbookCategory(String bookCategory) {
		List<Bookdtls> list = new ArrayList<Bookdtls>();
		Bookdtls b = null;
		try {
			String sql = "select * from ebook.bookdtls where bookCategory=?";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, bookCategory);
			System.out.println(" Bookdtls getBookcategory : category : " + bookCategory);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				b = new Bookdtls();
				b.setBookId(set.getInt(1));
				b.setBookname(set.getString(2));
				b.setAuthor(set.getString(3));
				b.setPrice(set.getString(4));
				b.setBookCategory(set.getString(5));
				b.setStatus(set.getString(6));
				b.setPhoto(set.getString(7));
				b.setUser_email(set.getString(8));
				list.add(b);
			}
		} catch (Exception e) {
			System.out.println("BookdtlsDALimpl sayfasında getbookcatery metodunda ki hata : " + e.getMessage());
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Bookdtls> getBookByIds(List<Integer> ids) {
		List<Bookdtls> b = new ArrayList<Bookdtls>();
		try {
			String sql = "select * from ebook.bookdtls where bookId=?";
			PreparedStatement statement = conn.prepareStatement(sql);
			for (int id : ids) {

				statement.setInt(1, id);
				System.out.println(" Bookdtls getBookById : id : " + id);

				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					Bookdtls b1 = new Bookdtls();
					b1.setBookId(rs.getInt(1));
					b1.setBookname(rs.getString(2));
					b1.setAuthor(rs.getString(3));
					b1.setPrice(rs.getString(4));
					b1.setBookCategory(rs.getString(5));
					b1.setStatus(rs.getString(6));
					b1.setPhoto(rs.getString(7));
					b1.setUser_email(rs.getString(8));
					b.add(b1);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("BooksdtlsDALimpl sayfasında getBookByIds metodunda : " + e.getMessage());
		}

		return b;
	}
}