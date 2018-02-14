package com.project.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.Dao.CartDao;
import com.project.Dao.CategoryDao;
import com.project.Dao.OrderDao;
import com.project.Dao.ProductDao;
import com.project.Dao.SupplierDao;
import com.project.Dao.UserDao;
import com.project.Model.Cart;
import com.project.Model.Order;
import com.project.Model.Product;
import com.project.Model.User;

@Controller
public class CartController {

	@Autowired
	SupplierDao supplierDao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	ProductDao productDao;

	@Autowired
	CartDao cartDao;

	@Autowired
	UserDao userDao;

	@Autowired
	OrderDao orderDao;

	@RequestMapping("/proDetail")
	public ModelAndView proDetail(@RequestParam("pid") int pid) {
		ModelAndView mv = new ModelAndView();
		List<Product> product = productDao.getProductById(pid);
		System.out.println("Invoked...#######################");

		mv.addObject("prolist", product);
		mv.setViewName("ProductDetails");
		return mv;
	}

	@RequestMapping("/cartAdd")
	public ModelAndView addToCart(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("pid") int pid, @RequestParam("qty") int qty) {
		ModelAndView mv = new ModelAndView();
		Principal principal = request.getUserPrincipal();
		String n = "";
		Float q = (float) 0;
		Cart cart = new Cart();
		try {
			n = principal.getName();
		} catch (NullPointerException np) {

			return new ModelAndView("/login", "msg", "LoginFirst!!!!!");
		}

		try {
			System.out.println(n);
			List<Product> lp = productDao.getProductById(pid);
			System.out.println("working");
			User user = userDao.getByEmail(n);
			System.out.println("Sssssssssssssssssssss" + user.getAddress());
			cart.setCartProductId(pid);
			for (Product p : lp) {
				cart.setCartPrice(p.getPrice());
				// q=p.getPrice();
				// q=p.getPrice()*qty;
				cart.setCartImage(p.getImgname());
				cart.setCartProductName(p.getPname());
				cart.setCartQuantity(qty);
				cart.setCartProductName(p.getPname());
			}
			cart.setCartUserDetails(user);
			cartDao.insert(cart);
			System.out.println(cart.getCartId() + "\t" + cart.getCartImage());
			mv.addObject("cdetail", cartDao.findCartById(user.getId()));
			// mv.addObject("total",q);
			mv.setViewName("cart");
			return mv;

		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;

	}

	@RequestMapping("/deleteCart")
	public String deleteCart(@RequestParam("cartId") int cid) {
		boolean b = cartDao.deleteCart(cid);
		System.out.println("dddddd" + b);
		if (b == true)
			return "redirect:cart";
		else
			return null;
	}

	@RequestMapping("/cart")
	public ModelAndView retrieveCart(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Principal principal = request.getUserPrincipal();
		String n = principal.getName();
		User user = userDao.getByEmail(n);
		mv.addObject("cdetail", cartDao.findCartById(user.getId()));
		mv.setViewName("cart");
		return mv;
	}

	@RequestMapping("/checkOut")
	public ModelAndView checkout(HttpServletRequest request, @RequestParam("tot") Float tot) {
		ModelAndView mv = new ModelAndView();
		Principal principal = request.getUserPrincipal();
		String n = principal.getName();
		User user = userDao.getByEmail(n);
		List<User> v = new ArrayList<User>();
		v.add(user);
		System.out.println(tot);
		mv.addObject("userDet", v);
		mv.addObject("tot", tot);
		mv.setViewName("shipping");
		return mv;
	}

	@RequestMapping("/goToOrder")
	public String OrderDetails(HttpServletRequest request, @RequestParam("tot") Float tot,
			@RequestParam("mode") String mode) {

		String n = request.getUserPrincipal().getName();
		Order order = new Order();
		if (mode.equals("none")) {
			return "redirect:/checkOut?tot=" + tot;
		} else {
			order.setPayment(mode);
			order.setUser(userDao.getByEmail(n));
			order.setTotal(tot);
			boolean b = orderDao.insert(order);
			System.out.println(b);
		}
		return "redirect:invoice";
	}

	@RequestMapping("/invoice")
	public ModelAndView invoice(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Principal principal = request.getUserPrincipal();
		String n = principal.getName();
		User user = userDao.getByEmail(n);
		List<User> ll = new ArrayList<User>();
		ll.add(user);
		System.out.println(user.getAddress());
		mv.addObject("userdetail", ll);
		mv.addObject("invo", cartDao.findCartById(user.getId()));
		mv.setViewName("invoice");
		return mv;
	}

	@RequestMapping("/thank")
	public ModelAndView thank() {
		return new ModelAndView("thank");
	}
}
