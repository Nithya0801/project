package com.project.Dao;

import java.util.List;

import com.project.Model.*;

public interface UserDao {
	
	boolean addUser(User u);

 List<User> getAllUser();
 
 User getByEmail(String mail);
}
