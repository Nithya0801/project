package com.project.Dao;

import java.util.List;

import com.project.Model.Category;
import com.project.Model.Supplier;

public interface CategoryDao {

	boolean insertCategory(Category category);
	Category getCategoryById(int cid);
	boolean deleteCategory(int cid);
	List<Category> getAllCat();
	boolean updateCategory(Category category);
}
