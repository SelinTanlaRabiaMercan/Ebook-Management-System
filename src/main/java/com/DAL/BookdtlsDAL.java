package com.DAL;

import java.util.List;

import com.entity.Bookdtls;

public interface BookdtlsDAL {
	public boolean BookAdd(Bookdtls dtls);
	public List<Bookdtls> getAllBook();
	public Bookdtls getBookById(int id);
	public boolean updateBook(Bookdtls bookdtls);
	public boolean deleteBook(int id);
	public List<Bookdtls> getNovel();
	public List<Bookdtls> getHistory();
	
	public List<Bookdtls> getBooksByCategory(String category);
}
