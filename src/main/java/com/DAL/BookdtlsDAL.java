package com.DAL;

import java.util.List;

import com.entity.Bookdtls;

public interface BookdtlsDAL {
	public boolean BookAdd(Bookdtls dtls);
	public Bookdtls getBookById(int id);
	public List<Bookdtls> getBookByIds(List<Integer> ids);
	public boolean updateBook(Bookdtls bookdtls);
	public boolean deleteBook(int id);
	
	public List<Bookdtls> getAllBook();
	public List<Bookdtls> getNovel();
	public List<Bookdtls> getHistory();
	
	public List<Bookdtls> getbookCategory(String bookCategory);
	
	/*
	 * public List<Bookdtls> getDystopia();
	getShort_Story();
	getBiography();
	getAutobiography();
	getNon-fiction();
	getHorror();
	*/
	
}
