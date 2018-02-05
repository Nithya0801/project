package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.Dao.CategoryDao;
import com.project.Dao.ProductDao;
import com.project.Dao.SupplierDao;
import com.project.Model.Category;
import com.project.Model.Product;
import com.project.Model.Supplier;

@Controller
public class AdminController {

	@Autowired
	SupplierDao supplierDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	ProductDao productDao;
	
	//Supplier Controller
	
	@RequestMapping("/insertData")
	ModelAndView insert(HttpServletRequest request)
	{
		
		String option=request.getParameter("option");
		if(option.equalsIgnoreCase("insert"))
		{
			Supplier supplier=new Supplier();
			int sid=Integer.parseInt(request.getParameter("sid"));
		String sname=request.getParameter("sname");
		supplier.setSid(sid);
		supplier.setSname(sname);
		System.out.println(supplier.getSid());
		System.out.println(supplier.getSname());
		boolean b=supplierDao.insertSupplier(supplier);
		System.out.println(b);
		if(b)
			return new ModelAndView("suc");
			//request.getRequestDispatcher("adminadd").forward(request, arg1);
		else
			return new ModelAndView("error");
		}
		else
		{
			return new ModelAndView("adminadd");
		}
	}
	
	
	
	@RequestMapping("/getAllSupp")
	public ModelAndView viewSupp(HttpServletRequest request)
	{
		List<Supplier> l=supplierDao.getAll();
		request.getSession().setAttribute("obj1",l);
		return new ModelAndView("/retriveSupp");
	}
	
	
	@RequestMapping("/retriveSupp")
	public ModelAndView retrieveSupp()
	{
		return new ModelAndView("/retriveSupp");
	}
	
	
	@RequestMapping("/updateSupp")
	public ModelAndView update(HttpServletRequest request)
	{
		int i=Integer.parseInt(request.getParameter("sid"));
		//request.getSession().setAttribute("sid",i);
		Supplier supplier=supplierDao.getSupplierById(i);
		request.getSession().setAttribute("supplier",supplier);
		return new ModelAndView("updateSupp");
	}
	
	@RequestMapping("/updateAll")
	public ModelAndView updateAll(HttpServletRequest request)
	{
		int sid=Integer.parseInt(request.getParameter("sid"));
		String sname=request.getParameter("sname");
		Supplier s=new Supplier();
		s.setSid(sid);
		s.setSname(sname);
		
		supplierDao.updateSupplier(s);
		
		return new ModelAndView("updateSuc");

		
	}
	
	@RequestMapping("/deleteSupp")
	public ModelAndView delete(HttpServletRequest request)
	{
		int sid=Integer.parseInt(request.getParameter("sid"));
		//Supplier supplier=supplierDao.getSupplierById(sid);
		supplierDao.deleteSupplier(sid);
		return new ModelAndView("deleteSupp");
	}
	
	
	
	
	//Category Controller
	
	@RequestMapping("/insertCatData")
	public ModelAndView insertSupp(HttpServletRequest request)
	{
		String option=request.getParameter("option");
		if(option.equalsIgnoreCase("insert"))
		{
			int cid=Integer.parseInt(request.getParameter("cid"));
			String cname=request.getParameter("cname");
			Category category=new Category();
			category.setCid(cid);
			category.setCname(cname);
			
			boolean b=categoryDao.insertCategory(category);
			if(b)
				return new ModelAndView("suc");
			else
				return new ModelAndView("error");
		}
		else
			return new ModelAndView();
		
	}
	
	@RequestMapping("/getAllCat")
	public ModelAndView retrieveCat(HttpServletRequest request)
	{
		List<Category> l=categoryDao.getAllCat();
		request.getSession().setAttribute("obj2",l);
		return new ModelAndView("retrieveCat");
	}
	
	@RequestMapping("/retrieveCat")
	public ModelAndView viewCat()
	{
		return new ModelAndView("retrieveCat");
	}
	
	@RequestMapping("/updateCat")
	public ModelAndView updateCat(HttpServletRequest request)
	{
		int cid=Integer.parseInt(request.getParameter("cid"));
		Category category=categoryDao.getCategoryById(cid);
		request.getSession().setAttribute("category",category);
		
		return new ModelAndView("updateCat");
	}
	
	@RequestMapping("/updateAllCat")
	public ModelAndView updateAllCat(HttpServletRequest request)
	{
		int cid=Integer.parseInt(request.getParameter("cid"));
		String cname=request.getParameter("cname");
		Category category=new Category();
		category.setCid(cid);
		category.setCname(cname);
		
		categoryDao.updateCategory(category);
		return new ModelAndView("updateSucCat");

		
	}
	
	
	@RequestMapping("/deleteCat")
	public ModelAndView deleteCat(HttpServletRequest request)
	{
		int cid=Integer.parseInt(request.getParameter("cid"));
		//Supplier supplier=supplierDao.getSupplierById(sid);
		categoryDao.deleteCategory(cid);
		return new ModelAndView("deleteSupp");
	}
	
	
	//Product Controller
	@RequestMapping("/product")
	public ModelAndView productPage(HttpServletRequest request)
	{
		List<Category> lc=categoryDao.getAllCat();
		
		List<String> categoryName=new ArrayList<String>();
		
		for(Category ll:lc)
		{
			categoryName.add(ll.getCname());
		}
		
		System.out.println(categoryName);
		
	
		request.getSession().setAttribute("categoryName",categoryName);
		

		List<Supplier> ls=supplierDao.getAll();
		
		List<String> supplierName=new ArrayList<String>();
		
		for(Supplier v:ls)
			supplierName.add(v.getSname());
		
		System.out.println(supplierName);
		request.getSession().setAttribute("supplierName",supplierName);
		
		
		
		
		return new ModelAndView("product");
	}
	

	@RequestMapping("/insertProdData")
	public ModelAndView insertProduct(HttpServletRequest request,@RequestParam("file")MultipartFile file)
	{
		String pname=request.getParameter("pname");
		String desc=request.getParameter("desc");
		Float price=Float.parseFloat(request.getParameter("price"));
		int stock=Integer.parseInt(request.getParameter("stock"));
		int cid=Integer.parseInt(request.getParameter("cat"));
		int sid=Integer.parseInt(request.getParameter("sup"));
		Category category=categoryDao.getCategoryById(cid);
		Supplier supplier=supplierDao.getSupplierById(sid);
		
		Product product=new Product();
		product.setPname(pname);
		product.setDesc(desc);
		product.setPrice(price);
		product.setStock(stock);
		product.setCategory(category);
		product.setSupplier(supplier);
		
		String filepath=request.getSession().getServletContext().getRealPath("/");
		String filename=file.getOriginalFilename();
		
		System.out.println(filepath+"\t"+filename);
		request.getSession().setAttribute("filename",(filepath+filename));
		product.setImgname(filename);
		
		productDao.insertProduct(product);
		try
		{
			byte img[]=file.getBytes();
			BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename));
			bout.write(img);
			bout.close();
			
		}
		catch(IOException ioe)
		{
			System.out.println(ioe);
		}
		
		return new ModelAndView("suc");
	}
	
	
	@RequestMapping("/getAllProduct")
	public ModelAndView reteriveProduct(HttpServletRequest request)
	{
		List<Product> l=productDao.getAll();
		request.getSession().setAttribute("getPro",l);
		return new ModelAndView("reteriveProd");
	}
	
	
	@RequestMapping("/reteriveProd")
	public ModelAndView getAll()
	{
		return new ModelAndView("reteriveProd");
	}

}
