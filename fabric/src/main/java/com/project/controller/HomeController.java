package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.Dao.CategoryDao;
import com.project.Dao.ProductDao;
import com.project.Dao.SupplierDao;
import com.project.Dao.UserDao;
import com.project.Model.Category;
import com.project.Model.Product;
import com.project.Model.User;

@Controller
public class HomeController {

	@Autowired
	UserDao userDao;
	@Autowired
	private SupplierDao supplierDao;
	@Autowired
	private CategoryDao categoryDao;

	@Autowired
	ProductDao productDao;

	static int c = 0;

	@RequestMapping("/login")
	public ModelAndView mymethod(HttpServletRequest req, HttpServletResponse res) {
		String name = req.getParameter("un");
		// req.getSession().setAttribute("message",name);
		/*
		 * String p=req.getParameter("pwd");
		 * 
		 * List<User> user=userDao.getAllUser(); int f=1; for(User u:user) {
		 * 
		 * 
		 * 
		 * if(name.equalsIgnoreCase(u.getEmail()) && p.equals(u.getPwd())){
		 * ModelAndView mv=new ModelAndView("adminadd","message",u.getName());
		 * mv.getModelMap().addAttribute("categories", categoryDao.getAllCat());
		 * mv.getModelMap().addAttribute("suppliers", supplierDao.getAll());
		 * mv.getModelMap().put("categories", categoryDao.getAllCat()); f=0;
		 * return mv; //return new ModelAndView("adminadd","message","sds"); } }
		 * if(f==1) return new
		 * ModelAndView("error","message","Username or Password Incorrect!!!!");
		 * else return new ModelAndView();
		 */
		/*
		 * ModelAndView mv=new ModelAndView("adminadd","message","");
		 * mv.getModelMap().addAttribute("categories", categoryDao.getAllCat());
		 * mv.getModelMap().addAttribute("suppliers", supplierDao.getAll());
		 * mv.getModelMap().put("categories", categoryDao.getAllCat()); return
		 * mv;
		 */
		/*
		 * if(name.equalsIgnoreCase("nithya123@gmail.com")) return new
		 * ModelAndView("adminadd"); else
		 */

		return new ModelAndView("login");
	}

	@RequestMapping("/")
	public ModelAndView index() {

		System.out.println("invoked!!!!");
		ModelAndView mv = new ModelAndView();
		List<Category> c = categoryDao.getAllCat();
		mv.addObject("obj", c);
		mv.setViewName("index");
		return mv;
	}

	/*
	 * @RequestMapping("/adminadd") ModelAndView my() { ModelAndView mv=new
	 * ModelAndView("adminadd","message","successfully logged in!!!!");
	 * mv.getModelMap().addAttribute("categories", categoryDao.getAllCat());
	 * mv.getModelMap().addAttribute("suppliers", supplierDao.getAll());
	 * mv.getModelMap().put("categories", categoryDao.getAllCat()); return mv; }
	 */

	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String register(Model model) {
		System.out.println("invoked   Get");
		model.addAttribute("user",new User());
		return "register";
	}

	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView save(@Valid @ModelAttribute("user") User user,BindingResult result,HttpServletRequest request, HttpServletResponse response) {

		/*String n = request.getParameter("un");
		String p = request.getParameter("pwd");
		String addr = request.getParameter("addr");
		String mail = request.getParameter("mail");
		String phone = request.getParameter("phone");
		String country = request.getParameter("country");

		if (!(mail.matches("\\S+@((gmail)|(yahoo))\\.com")) || !(phone.matches("[987]\\d{9}"))) {
			return new ModelAndView("register");
		} else {
			User u = new User();
			u.setName(n);
			u.setPwd(p);
			u.setAddress(addr);
			u.setEmail(mail);
			u.setPhone(phone);
			u.setCountry(country);
			u.setEnabled("false");
			userDao.addUser(u);
			// request.getSession().setAttribute("obj", u);
			return new ModelAndView("suc");
		}
		// return new ModelAndView("redirect:/viewemp");//will redirect to
		// viewemp request mapping
	}*/
		System.out.println("invoked  Post");
		ModelAndView mv=new ModelAndView();
	if(result.hasErrors())
	{
		System.out.println("error detected...");
		mv.setViewName("register");
	}
	else
	{
		System.out.println("No error");
		user.setEnabled("false");
		userDao.addUser(user);
		mv.setViewName("suc");
	}
	
	return mv;
	}

	@RequestMapping("/index")
	public ModelAndView index1() {
		List<Category> c = categoryDao.getAllCat();
		System.out.println("invoked!!!!");
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", c);
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(value = "/logPage")
	public String logPage() {
		return "redirect:index";
	}

	@RequestMapping("/admin/getAllUser")
	public ModelAndView InvokeAll(HttpServletRequest request) {
		System.out.println("#################");
		List<User> ll = userDao.getAllUser();
		request.getSession().setAttribute("value", ll);
		return new ModelAndView("reteriveAll");

	}

	@RequestMapping("/reteriveAll")
	public ModelAndView reterive() {
		System.out.println("$$$$$$$$$$$$$$$");
		return new ModelAndView("reteriveAll");
	}

	@RequestMapping("/admin/adminadd")
	public ModelAndView success(HttpServletRequest request) {
		/*
		 * String name=""; if(c==0) { String mail=request.getParameter("un");
		 * System.out.println(mail); List<User> u=userDao.getAllUser();
		 * 
		 * for(User uu:u) { if(uu.getEmail().equals(mail)) { name=uu.getName();
		 * System.out.println(name); } } }
		 */
		// String str=(String)request.getSession().getAttribute("message");
		ModelAndView mv = new ModelAndView("adminadd", "message", request.getParameter("un"));
		List<Category> c = categoryDao.getAllCat();
		mv.addObject("obj", c);
		mv.getModelMap().addAttribute("categories", categoryDao.getAllCat());
		mv.getModelMap().addAttribute("suppliers", supplierDao.getAll());
		mv.getModelMap().put("categories", categoryDao.getAllCat());
		return mv;
	}

	@RequestMapping("/error")
	public ModelAndView error() {
		return new ModelAndView("error");
	}

	@RequestMapping("/signin")
	public String signin() {

		return "redirect:login";
	}

	@RequestMapping("/suc")
	public ModelAndView sucRegister() {
		return new ModelAndView("suc");
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:index";
	}

	@RequestMapping("/admin/welcome")
	public ModelAndView welcome(HttpServletRequest request) {
		String mail = request.getParameter("un");
		System.out.println(mail);
		List<User> u = userDao.getAllUser();
		String name = "";
		for (User uu : u) {
			if (uu.getEmail().equals(mail)) {
				name = uu.getName();
				System.out.println(name);
			}
		}
		request.getSession().setAttribute("message", name);
		ModelAndView mv = new ModelAndView("adminadd", "message", name);
		return mv;
	}

	@RequestMapping("/UserPage")
	public ModelAndView userPage() {
		ModelAndView mv = new ModelAndView();
		List<Category> c = categoryDao.getAllCat();
		mv.addObject("obj", c);
		mv.setViewName("UserPage");
		return mv;
	}

	@RequestMapping("/cat")
	public ModelAndView viewProduct() {
		List<Category> c = categoryDao.getAllCat();
		System.out.println("invoked!!!!");
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", c);

		mv.setViewName("index.jsp");
		return mv;

	}

	@RequestMapping(value = { "/getCritirea" })
	public ModelAndView getCritirea(@RequestParam("cid") int cid) {

		List<Product> li = productDao.getProductByCid(cid);

		ModelAndView mv = new ModelAndView();
		List<Category> c = categoryDao.getAllCat();
		mv.addObject("obj", c);
		mv.addObject("list", li);
		mv.setViewName("productlist");
		return mv;
	}

	// @RequestMapping(value="/custProductList")
	// public ModelAndView custProductList(@RequestParam ("categoryId") String
	// cid)
	// {
	// //System.out.println("==================="+cid);
	// ModelAndView mv = new ModelAndView("custProductList");
	// mv.addObject("prodList",productdao.getProdByCategoryId(cid));
	// return mv;
	// }

}
