package com.project2.Dao;

import java.util.List;

import com.project2.Model.Blog;

public interface BlogDao {

	public boolean insertBlog(Blog blog);
	public boolean deleteBlog(Blog blog);
	public boolean updateBlog(Blog blog);
	public Blog getBlog(int blogId);
	public boolean approveBlog(Blog blog);
	public boolean rejectBlog(Blog blog);
	public List<Blog> listBlog(String userName);
}
