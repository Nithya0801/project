package com.project2.Dao;

import java.util.List;

import com.project2.Model.User;

public interface UserDao {

	boolean insertUser(User user);
	boolean deleteUser(User user);
	boolean updateUser(User user);
	List<User> listUser();
	User listByEmail(String mail);
	
}
