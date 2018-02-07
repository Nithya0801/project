package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.Dao.CategoryDao;
import com.project.Dao.SupplierDao;
import com.project.Dao.UserDao;
import com.project.Model.User;



@Controller
public class HomeController {

	
	@Autowired
	UserDao userDao;
	@Autowired
	private SupplierDao supplierDao;
	@Autowired
	private CategoryDao categoryDao;
	
	@RequestMapping("/login")
	public ModelAndView mymethod(HttpServletRequest req,HttpServletResponse res)
	{
		String name=req.getParameter("un");
		String p=req.getParameter("pwd");
		
		List<User> user=userDao.getAllUser();
		int f=1;
		for(User u:user)
		{
			
		
		
		if(name.equalsIgnoreCase(u.getEmail()) && p.equals(u.getPwd())){
			ModelAndView mv=new ModelAndView("adminadd","message",u.getName());
			mv.getModelMap().addAttribute("categories", categoryDao.getAllCat());
			mv.getModelMap().addAttribute("suppliers", supplierDao.getAll());
			mv.getModelMap().put("categories", categoryDao.getAllCat());
			f=0;
			return mv;
			//return new ModelAndView("adminadd","message","sds");
		}
		}
		if(f==1)
			return new ModelAndView("error","message","Username or Password Incorrect!!!!");
		else
			return new ModelAndView();
	}
	

	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	}
	
	/*@RequestMapping("/adminadd")
	ModelAndView my()
	{
		ModelAndView mv=new ModelAndView("adminadd","message","successfully logged in!!!!");
		mv.getModelMap().addAttribute("categories", categoryDao.getAllCat());
		mv.getModelMap().addAttribute("suppliers", supplierDao.getAll());
		mv.getModelMap().put("categories", categoryDao.getAllCat());
		return mv;
	}*/
	
	@RequestMapping("/register")
	public ModelAndView register()
	{
		return new ModelAndView("register");
	}
	
	@RequestMapping("/store")
	public ModelAndView save(HttpServletRequest request,HttpServletResponse response){  
     
		String n=request.getParameter("un");
		String p=request.getParameter("pwd");
		String addr=request.getParameter("addr");
		String mail=request.getParameter("mail");
		String phone=request.getParameter("phone");
		String country=request.getParameter("country");
		
		if(!(mail.matches("\\S+@((gmail)|(yahoo))\\.com")) || !(phone.matches("[987]\\d{9}")))
		{
			return new ModelAndView("register");
		}
		else
		{
		User u=new User();
		u.setName(n);
		u.setPwd(p);
		u.setAddress(addr);
		u.setEmail(mail);
		u.setPhone(phone);
		u.setCountry(country);
		userDao.addUser(u);
	//	request.getSession().setAttribute("obj", u);
        return new ModelAndView("suc");
		}
       // return new ModelAndView("redirect:/viewemp");//will redirect to viewemp request mapping  
    }  
	@RequestMapping("/index")
	public ModelAndView index1()
	{
		return new ModelAndView("index");
	}
	
	@RequestMapping("/getAllUser")
	public ModelAndView InvokeAll(HttpServletRequest request)
	{
		List<User> ll=userDao.getAllUser();
		request.getSession().setAttribute("obj", ll);
		return new ModelAndView("reteriveAll");
		
	}
	
	@RequestMapping("/reteriveAll")
	public ModelAndView reterive()
	{
		return new ModelAndView("reteriveAll");
	}
	@RequestMapping("/adminadd")
	public ModelAndView success()
	{	
	ModelAndView mv=new ModelAndView("adminadd","message","successfully logged in!!!!");
	mv.getModelMap().addAttribute("categories", categoryDao.getAllCat());
	mv.getModelMap().addAttribute("suppliers", supplierDao.getAll());
	mv.getModelMap().put("categories", categoryDao.getAllCat());
	return mv;
	}
	@RequestMapping("/error")
	public ModelAndView error()
	{
		return new ModelAndView("error");
	}
	@RequestMapping("/signin")
	public ModelAndView signin()
	{
		
		
		return new ModelAndView("login");
	}
	@RequestMapping("/suc")
	public ModelAndView sucRegister()
	{
		return new ModelAndView("suc");
	}

}

