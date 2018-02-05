package com.project.DaoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.Dao.SupplierDao;
import com.project.Model.Supplier;



@Repository("supplierDao")
@Transactional
public class SupplierDaoImpl implements SupplierDao{

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertSupplier(Supplier supplier) {
		
	try
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(supplier);
		session.getTransaction().commit();
		session.close();
	
		return true;
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return false;
	}

	public Supplier getSupplierById(int sid) {
	//	Session session=sessionFactory.openSession();
	//	session.beginTransaction();
		Session session=sessionFactory.getCurrentSession();
		Supplier supplier=(Supplier)session.load(Supplier.class,new Integer(sid));
		//session.getTransaction().commit();
		//session.close();
		return supplier;
	}

	public boolean deleteSupplier(int sid) {
	 
		//Session session=sessionFactory.openSession();
		//session.beginTransaction();
		
		Session session=sessionFactory.getCurrentSession();
		Supplier supplier=(Supplier)session.load(Supplier.class,new Integer(sid));
		if(supplier!=null)
		{
			session.delete(supplier);
			return true;
		}
		//session.getTransaction().commit();
		//session.close();
		else
		return false;
	}

	public List<Supplier> getAll() {
	Session s=sessionFactory.openSession();
	s.beginTransaction();
	
			List<Supplier> l=s.createQuery("from supplier").list();
		
		
	s.getTransaction().commit();
	s.close();
		
		return l;
	}
	
	public boolean updateSupplier(Supplier supplier)
	{
		//Session session=sessionFactory.openSession();
		//session.beginTransaction();
		try
		{
		Session session=sessionFactory.getCurrentSession();
		session.update(supplier);
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
