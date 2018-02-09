package com.project.Dao;

import java.util.List;

import com.project.Model.Product;
import com.project.Model.Supplier;

public interface ProductDao {

	boolean insertProduct(Product product);
	List<Product> getProductByCid(int pid);
	List<Product> getProductById(int pid);
	boolean deleteProduct(int pid);
	List<Product> getAll();
	boolean updateProduct(Product product);
}
