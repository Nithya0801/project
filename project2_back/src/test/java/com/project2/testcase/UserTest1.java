package com.project2.testcase;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project2.Dao.UserDao;
import com.project2.Model.User;

public class UserTest1 {

static UserDao userDao;
	
	User user;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext ctxt=new AnnotationConfigApplicationContext();
		ctxt.scan("com.project2");
		ctxt.refresh();
		userDao=(UserDao) ctxt.getBean("userDao");
	}
	
	@Test
	public void insertUserTest()
	{
		user=new User();
		user.setName("Nithu");
		user.setPassword("123");
		user.setEmail("nithya123@gmail.com");
		user.setAddress("south gate");
		user.setPhone("9876543211");
		boolean b=userDao.insertUser(user);
		assertEquals("inserted!!!",true,b);
	}
	
	/*@Test
	public void deleteUserTest()
	{
		User user=userDao.listByEmail("nithya123@gmail.com");
		boolean b=userDao.deleteUser(user);
		assertEquals("Deleted!!!",true,b);
	}
	
	@Test
	public void updateUserTest()
	{
		User user=userDao.listByEmail("nithya@gmail.com");
		user.setAddress("Madurai");
		boolean b=userDao.updateUser(user);
		assertEquals("updated!!!",true,b);
	}*/
	
	@Test
	public void listUserTest()
	{
		List<User> li=userDao.listUser();
		for(User u:li)
		{
			System.out.println(u.getEmail()+"\t"+u.getAddress()+"\t"+u.getName()+"\t"+u.getPassword()+"\t"+u.getPhone());
		}
	}
	
}
