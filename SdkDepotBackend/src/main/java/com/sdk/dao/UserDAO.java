package com.sdk.dao;

import java.util.List;

import com.sdk.model.UserDetail;

public interface UserDAO 
{
	public boolean registerUser(UserDetail user);
	public boolean updateDetail(UserDetail user);
	public UserDetail getUserDetail(String username);
	public List<UserDetail> listUser();
	public UserDetail validate(String username,String password);
}

