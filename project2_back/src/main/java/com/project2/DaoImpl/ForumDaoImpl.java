package com.project2.DaoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project2.Dao.ForumDao;
import com.project2.Model.Blog;
import com.project2.Model.Forum;

@Repository("forumDao")
@Transactional
public class ForumDaoImpl implements ForumDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertForum(Forum forum)
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(forum);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	
	public boolean deleteForum(Forum forum)
	{
		try
		{
			sessionFactory.getCurrentSession().delete(forum);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	public boolean updateForum(Forum forum)
	{
		try
		{
			sessionFactory.getCurrentSession().update(forum);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	public Forum getForum(int forumId)
	{
		try{
		Forum forum=sessionFactory.getCurrentSession().get(Forum.class,forumId);
		return forum;
		}
		catch(Exception e)
		{
			return null;
		}
	}
	
	public boolean approveForum(Forum forum)
	{
		try
		{
		forum.setStatus("A");
		sessionFactory.getCurrentSession().update(forum);
		return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	
	public boolean rejectForum(Forum forum)
	{
		try
		{
		forum.setStatus("NA");
		sessionFactory.getCurrentSession().update(forum);
		return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	

	public List<Forum> listForum(String userName) {
		
		System.out.println("invoked!!!");
		Session session= sessionFactory.getCurrentSession();
		System.out.println("session created!!!");
		List<Forum> list=session.createQuery("from Forum where email='"+userName+"'").list();
		return list;
	}

	
}
