package com.bride.dao;

import com.bride.model.User;


public interface UserDAO 


{
	public void addUser(User user);
    public User getUserId(int userId);
    public User getUserByusername(String username);
	
	
}
