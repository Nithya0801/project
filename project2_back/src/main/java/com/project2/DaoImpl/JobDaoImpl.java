package com.project2.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project2.Dao.JobDao;
import com.project2.Model.JobModel;

@Repository("jobDao")
@Transactional
public class JobDaoImpl implements JobDao{

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertJob(JobModel job) {
		try
		{
			System.out.println("entered!!!!");
	//	sessionFactory.getCurrentSession().saveOrUpdate(job);
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		System.out.println("Session created!!!!"+session);
		session.persist(job);
			session.getTransaction().commit();
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}

	public boolean deleteJob(JobModel job) {
		try
		{
		sessionFactory.getCurrentSession().delete(job);	
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	public boolean updateJob(JobModel job) {
		try
		{
		sessionFactory.getCurrentSession().update(job);	
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	public List<JobModel> listJob() {
		try
		{
		Session session=sessionFactory.getCurrentSession();
		List<JobModel> l=session.createQuery("from JobModel").list();
		return l;
		}
		catch(Exception e)
		{
			return null;
		}
	}

	public JobModel getJobById(int jobId) {
		try
		{
	    JobModel job=sessionFactory.getCurrentSession().get(JobModel.class,jobId);
		return job;
		}
		catch(Exception e)
		{
			return null;
		}
	}

}
