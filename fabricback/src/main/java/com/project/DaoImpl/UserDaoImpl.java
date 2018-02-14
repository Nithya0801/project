package com.project.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.project.Dao.UserDao;
import com.project.Model.Product;
import com.project.Model.User;


@Repository("userDao")
public class UserDaoImpl implements UserDao{

	List<User> l;
	 @Autowired
	    SessionFactory sessionFactory;
	public boolean addUser(User u) {
	
/*	l=new ArrayList<User>();
	l.add(u);
	
	//for(User c:l)
		System.out.println(c.getName());*/
	
	Session s=sessionFactory.openSession();
    s.beginTransaction();
    s.persist(u);
    s.getTransaction().commit();
    s.close();
	
    return true;
	}
	
	

	
	public List<User> getAllUser()
	{
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		List<User> l=s.createQuery("from User").list();
		
		
		s.getTransaction().commit();
		s.close();
		
		return l;
	}




	public User getByEmail(String email) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		String selectQuery = "FROM User WHERE email = :email";
	User user=session.createQuery(selectQuery,User.class).setParameter("email", email).getSingleResult();
	//	User user=session.get(User.class, email);
		session.getTransaction().commit();
		return user;
	}
}

