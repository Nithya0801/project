package com.project2.testcase;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.project2.Dao.JobDao;
import com.project2.Model.JobModel;

public class JobTest {

	static JobDao jobDao;
	
	JobModel job;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext ctxt=new AnnotationConfigApplicationContext();
		ctxt.scan("com.project2");
		ctxt.refresh();
		jobDao=(JobDao) ctxt.getBean("jobDao");
	}
/*	
	@Test
	public void insertJobTest()
	{
		job=new JobModel();
		job.setCompany("ZOHO");
		job.setDesignation("Developer");
		job.setLocation("Chennai");
		job.setCtc(5.75);
		job.setSalary(50000);
		job.setDescription("Deveopler in Java");
		System.out.println("Content Provied!!");
		boolean b=jobDao.insertJob(job);
		System.out.println(b);
		assertEquals("Inserted!!!",true,b);
	}
	
	
	@Test
	public void deleteJobTest()
	{
		job=jobDao.getJobById(55);
		boolean b=jobDao.deleteJob(job);
		assertEquals("Deleted!!!",true,b);
	}
	
	
	@Test
	public void updateJobTest()
	{

		job=jobDao.getJobById(54);
		job.setCompany("ZOHO CORP");
		boolean b=jobDao.updateJob(job);
		assertEquals("Deleted!!!",true,b);
	}*/

	@Test
	public void listJobTest()
	{
		List<JobModel> ll=jobDao.listJob();
		for(JobModel jm:ll)
			System.out.println(jm.getJobId()+"\t"+jm.getCompany()+"\t"+jm.getDescription()+"\t"+jm.getDesignation()+"\t"+jm.getLocation()+"\t"+jm.getSalary()+"\t"+jm.getCtc());
	}
}
