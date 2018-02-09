package com.project.DaoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.Dao.ProductDao;
import com.project.Model.Category;
import com.project.Model.Product;

@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertProduct(Product product) {
		try
		{
	 Session session= sessionFactory.openSession();
	 session.beginTransaction();
  session.persist(product);
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

	public List<Product> getProductByCid(int cid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Product> li=session.createQuery("from product where cid="+cid).list();
		session.getTransaction().commit();
		return li;
	
	}

	public boolean deleteProduct(int pid) {
		try
		{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Product p=(Product)session.get(Product.class,pid);
		session.delete(p);
		session.getTransaction().commit();
		return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
	}

	public List<Product> getAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		
		List<Product> l=s.createQuery("from product").list();
	
	
		s.getTransaction().commit();
		s.close();
	
	return l;
	}

	public boolean updateProduct(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
