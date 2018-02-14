package com.project.DaoImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.Dao.OrderDao;
import com.project.Model.Order;

@Repository("orderDao")
@Transactional
public class OrderDaoImpl implements OrderDao{

	
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insert(Order order) {
		try
		{
	 Session session= sessionFactory.openSession();
	 session.beginTransaction();
  session.persist(order);
	session.getTransaction().commit();
	}
	
	catch(Exception e)
	{
		return false;
	}
	return true;


}
}