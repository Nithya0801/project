package com.project.Dao;

import java.util.List;

import com.project.Model.Supplier;


public interface SupplierDao {

	boolean insertSupplier(Supplier supplier);
	Supplier getSupplierById(int sid);
	boolean deleteSupplier(int sid);
	List<Supplier> getAll();
	boolean updateSupplier(Supplier supplier);
}
