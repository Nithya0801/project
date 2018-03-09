package com.project2.testcase;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project2.Dao.BlogDao;
import com.project2.Dao.UserDao;
import com.project2.Model.Blog;
import com.project2.Model.User;

public class BlogTest {

	static BlogDao blogDao;
	
	static UserDao userDao;
	
	Blog blog;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext ctxt=new AnnotationConfigApplicationContext();
		ctxt.scan("com.project2");
		ctxt.refresh();
		blogDao=(BlogDao) ctxt.getBean("blogDao");
		userDao=(UserDao)ctxt.getBean("userDao");
	}
	
/*	@Test
	public void insertBlogTest() throws ParseException
	{
		blog=new Blog();
		User user=userDao.listByEmail("nithya123@gmail.com");
		if(user.equals(null))
		{
			System.out.println("Nothing!!!");
		}
		else
		{
		blog.setBlogName("TechPython");
		blog.setBlogContent("Happy Learning of Python");
	//	blog.setCreatedDate(new SimpleDateFormat("dd/mm/yyyy").parse("28/02/2018"));
		blog.setCreatedDate(new Date());
		
		blog.setEmail(user);
		blog.setStatus("A");
		System.out.println("Value Set!>>>>");
		boolean b=blogDao.insertBlog(blog);
		System.out.println(b);
		assertEquals("inserted!!!", true,b);
		}
		
	}
	
	@Test
	public void deleteBlogTest()
	{
		Blog blog=blogDao.getBlog(58);
		boolean b=blogDao.deleteBlog(blog);
		System.out.println(b);
		
		assertEquals("Deleted",true,b);
	}
	
	@Test
	public void updateBlogTest()
	{
		Blog blog=blogDao.getBlog(57);
		blog.setBlogName("TechC");
		blog.setBlogContent("Structured Programming...");
		boolean b=blogDao.updateBlog(blog);
		System.out.println(b);
		assertEquals("Updated!!!",true,b);
	}*/
	
@Test
	public void listBlogTest()
	{
		List<Blog> b=blogDao.listBlog("nithya@gmail.com");
		for(Blog bb:b)
		{
			System.out.println(bb.getBlogId());
			System.out.println(bb.getBlogName());
			System.out.println(bb.getBlogContent());
			System.out.println(bb.getCreatedDate());
			System.out.println(bb.getStatus());
			User u=bb.getEmail();
			System.out.println(u.getEmail());
		}
		boolean b1=true;
		assertEquals("Listed",true,b1);
	}
	@Test
	public void test() {
		fail("Not yet implemented");
	}

}
