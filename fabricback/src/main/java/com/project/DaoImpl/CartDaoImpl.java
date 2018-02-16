package com.project.DaoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.Dao.CartDao;
import com.project.Model.Cart;
import com.project.Model.Product;

@Repository("cartDao")
@Transactional
public class CartDaoImpl implements CartDao{

	@Autowired
	SessionFactory sessionFactory;
	public boolean insert(Cart cart) {
		try
		{
	 Session session= sessionFactory.openSession();
	 session.beginTransaction();
  session.persist(cart);
	session.getTransaction().commit();
		}
		catch(Exception e)
		{
		return false;
		}
		return true;
	}

	public List<Cart> findCartById(int userId) {
		
		Session session=sessionFactory.openSession();
		List<Cart> cr=null;
		try
		{
			session.beginTransaction();
			cr=(List<Cart>) session.createQuery("from cart where userMailId=:email").setInteger("email",userId).getResultList();
			session.getTransaction().commit();
		}
		catch (Exception e) {
			System.out.println(e);
			session.getTransaction().rollback();
		}
		return cr;
	}

	public Cart getCartById(int cartId, int userId) {
		Session session=sessionFactory.openSession();
		Cart cr=null;
		session.beginTransaction();
		cr=(Cart) session.createQuery("from cart where userMailId=:userId and cartProductId=:id").setInteger("userId",userId).setInteger("id",cartId).uniqueResult();
		session.getTransaction().commit();
		return cr;
	}

	public boolean deleteCart(int cartId) {
		try
		{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Cart p=(Cart)session.get(Cart.class,cartId);
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

	public void updateCart(Cart cr) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(cr);
		session.getTransaction().commit();
		//return true;
		
	}
	
	public List<Cart> getAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		
		List<Cart> l=s.createQuery("from cart").list();
	
	
		s.getTransaction().commit();
		s.close();
	
	return l;
	}
	
	


}
