package com.project2.Dao;

import java.util.List;

import com.project2.Model.JobModel;

public interface JobDao {

	boolean insertJob(JobModel job);
	boolean deleteJob(JobModel job);
	boolean updateJob(JobModel job);
	List<JobModel> listJob();
	JobModel getJobById(int jobId);
}
