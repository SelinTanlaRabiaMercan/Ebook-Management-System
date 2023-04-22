package com.DAL;

import java.util.List;

import com.entity.Bookdtls;

public interface BookdtlsDAL {
	public boolean BookAdd(Bookdtls dtls);
	public List<Bookdtls> getAllBook();

}
