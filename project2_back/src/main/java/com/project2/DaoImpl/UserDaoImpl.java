package com.project2.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project2.Dao.UserDao;
import com.project2.Model.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
	SessionFactory sessionFactory;
	public boolean insertUser(User user) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	public boolean deleteUser(User user) {
		try
		{
		sessionFactory.getCurrentSession().delete(user);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	public boolean updateUser(User user) {
		try
		{
		sessionFactory.getCurrentSession().update(user);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	public List<User> listUser() {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			List<User> l=session.createQuery("from User").list();
			return l;
		}
		catch(Exception e)
		{
		return null;
		}
	}

	public User listByEmail(String mail) {
		try
		{
		User user=sessionFactory.getCurrentSession().get(User.class,mail);
		return user;
		}
		catch(Exception e)
		{
		return null;
		}
	}

}
