package com.project.DaoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.Dao.CategoryDao;
import com.project.Model.Category;
import com.project.Model.Supplier;

@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao{

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertCategory(Category category) {
		try
		{
	 Session session= sessionFactory.openSession();
	 session.beginTransaction();
  session.persist(category);
	session.getTransaction().commit();
  session.close();
			
		//	sessionFactory.getCurrentSession().persist(supplier);
		}
		catch(Exception e)
		{
			return false;
		}
		return true;
		
	}

	public Category getCategoryById(int cid) {
		
		Session session=sessionFactory.getCurrentSession();
	Category category=(Category)session.load(Category.class,new Integer(cid));
	
	return category;
	}

	public boolean deleteCategory(int cid) {
		Session session=sessionFactory.getCurrentSession();
		Category category=(Category)session.load(Category.class,new Integer(cid));
		if(category!=null)
		{
			session.delete(category);
			return true;
		}
		else
			return false;
	}

	public List<Category> getAllCat() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		
				List<Category> l=s.createQuery("from category").list();
			
			
		s.getTransaction().commit();
		s.close();
			
			return l;
	}

	public boolean updateCategory(Category category) {
		try
		{
		Session session=sessionFactory.getCurrentSession();
		session.update(category);
	//session.getTransaction().commit();
	//session.close();
		return true;
		}
		catch(Exception e)
		{
			
		}
		return false;
	}

}
