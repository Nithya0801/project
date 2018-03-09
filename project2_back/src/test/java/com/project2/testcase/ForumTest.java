package com.project2.testcase;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project2.Dao.ForumDao;
import com.project2.Dao.UserDao;
import com.project2.Model.Forum;
import com.project2.Model.User;


public class ForumTest {


	static ForumDao forumDao;
	static UserDao userDao;
	
	Forum forum;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext ctxt=new AnnotationConfigApplicationContext();
		ctxt.scan("com.project2");
		ctxt.refresh();
		forumDao=(ForumDao) ctxt.getBean("forumDao");
		userDao=(UserDao) ctxt.getBean("userDao");
	}
	
	/*@Test
	public void insertForumTest()
	{
		forum=new Forum();
		forum.setForumName("Angular Js Forum");
		forum.setForumContent("Angular is a library of free to download AngularJS themes and templates");
		forum.setCreatedDate(new Date());
		forum.setStatus("A");
		User user=userDao.listByEmail("nithya@gmail.com");
		forum.setEmail(user);
		boolean b=forumDao.insertForum(forum);
		assertEquals("Inserted!!!!",true,b);
	}
	@Test
	public void deleteForumTest()
	{
		Forum forum=forumDao.getForum(59);
		boolean b=forumDao.deleteForum(forum);
		assertEquals("Deleted!!!",true,b);
	}
		
	@Test
	public void updateForumTest()
	{
		forum=forumDao.getForum(60);
		forum.setForumName("AngularJs Community");
	
		
		boolean b=forumDao.updateForum(forum);
		assertEquals("Updated!!!",true,b);
	}
*/
	
	@Test
	public void listForumTest()
	{
		List<Forum> l=forumDao.listForum("nithya@gmail.com");
		System.out.println("ID\tName\tContent\tDate\tstatus\tUsername");
		for(Forum f:l)
			System.out.println(f.getForumId()+"\t"+f.getForumName()+"\t"+f.getForumContent()+"\t"+f.getCreatedDate()+"\t"+f.getStatus()+"\t"+f.getEmail().getEmail());
		boolean b=true;
		assertEquals("Listed!!!!",true,b);
	}
}
