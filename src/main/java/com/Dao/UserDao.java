package com.Dao;

import com.Entity.UserInfo;

public interface UserDao {

	
	public UserInfo getUser(int id) ;
	 
	public void updateUser(UserInfo u) ;
	
	public void addUser(UserInfo u);
}
