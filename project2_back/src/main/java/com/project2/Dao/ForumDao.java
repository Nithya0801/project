package com.project2.Dao;

import java.util.List;

import com.project2.Model.Blog;
import com.project2.Model.Forum;

public interface ForumDao {
	
	
	public boolean insertForum(Forum forum);
	public boolean deleteForum(Forum forum);
	public boolean updateForum(Forum forum);
	public Forum getForum(int forumId);
	public boolean approveForum(Forum forum);
	public boolean rejectForum(Forum forum);
	public List<Forum> listForum(String userName);


}