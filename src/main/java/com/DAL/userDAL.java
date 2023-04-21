package com.DAL;

import com.entity.User;

public interface userDAL {
	public boolean kisiKayit(User us);
	public User login(String email,String password);
}
