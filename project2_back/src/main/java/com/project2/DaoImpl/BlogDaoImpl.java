package com.project2.DaoImpl;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project2.Dao.BlogDao;
import com.project2.Model.Blog;

@Repository("blogDao")
@Transactional
public class BlogDaoImpl implements BlogDao{

	
	@Autowired
	SessionFactory sessionFactory;
	
	

	public boolean insertBlog(Blog blog) {
		try
		{
		/*Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.persist(blog);
		session.getTransaction().commit();*/
			sessionFactory.getCurrentSession().saveOrUpdate(blog);
		return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
		return false;
		}
	}


	public boolean deleteBlog(Blog blog) {
		try
		{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(blog);
		session.getTransaction().commit();
		return true;
		}
		catch(Exception e)
		{
		return false;
		}		
	}


	public boolean updateBlog(Blog blog) {
		try
		{
			Session session=sessionFactory.openSession();
			session.beginTransaction();
			session.update(blog);
			session.getTransaction().commit();
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	
	public Blog getBlog(int blogId) {
		try{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Blog blog=session.get(Blog.class,blogId);
		session.getTransaction().commit();
		return blog;
		}
		catch(Exception e)
		{
			return null;
		}
	}

	
	public boolean approveBlog(Blog blog) {
		try
		{
			blog.setStatus("A");
		sessionFactory.getCurrentSession().update(blog);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}
	
	public boolean rejectBlog(Blog blog) {
		try
		{
			blog.setStatus("NA");
		sessionFactory.getCurrentSession().update(blog);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}
	
	public List<Blog> listBlog(String userName) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Blog> list=session.createQuery("from blog where email='"+userName+"'").list();
		session.getTransaction().commit();
		return list;
		}
	
	public List<Blog> listBlogId(int i) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Blog> list=session.createQuery("from Blog where blogId="+i).list();
		session.getTransaction().commit();
		return list;
		}

}
