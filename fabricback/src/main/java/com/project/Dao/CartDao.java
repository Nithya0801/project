package com.project.Dao;

import java.util.List;

import com.project.Model.Cart;

public interface CartDao {

	boolean insert(Cart cart);
	List<Cart> findCartById(int userId);
	Cart getCartById(int cartId,int userId);
	boolean deleteCart(int cartId);
	void updateCart(Cart cr);
	List<Cart> getAll();
}
