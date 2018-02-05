package com.project.testcase;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project.Dao.UserDao;
import com.project.Model.User;

public class UserTestCase {

	private static AnnotationConfigApplicationContext ctxt;
	
	static UserDao userDao;
	
	User user;
	
	@BeforeClass
	public static void init()
	{
		ctxt=new AnnotationConfigApplicationContext();
		ctxt.scan("com.project");
		ctxt.refresh();
		userDao=(UserDao)ctxt.getBean("userDao");
		
	}
	
	@Test
	public void testAddUser()
	{
		user=new User();
		user.setName("xyz");
		user.setPwd("xyz");
		user.setAddress("xyz123");
		user.setCountry("India");
		user.setEmail("xyz@gmail.com");
		user.setPhone("9876543211");
		
		assertEquals("Insertede!!!", true,userDao.addUser(user));
	}
}


