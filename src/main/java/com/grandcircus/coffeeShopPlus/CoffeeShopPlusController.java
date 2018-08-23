/*Jasmine Allen
August 22, 2018
*/

package com.grandcircus.coffeeShopPlus;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CoffeeShopPlusController {

	@Autowired
	private UserDaoHibernate userDao;
	
	@Autowired
	private ItemsDaoHibernate itemsDao;
	
	@RequestMapping("/")
	public ModelAndView showHomePage()
	{
		/*Items items = new Items();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("items", items);

		return mav;*/
		
		List<Items> items = itemsDao.findAll();
		return new ModelAndView("index", "items", items);
		
	}
	@RequestMapping("/addItem")
	public ModelAndView addItem()
	{
		ModelAndView mav = new ModelAndView("addItem");
		return mav;
	}
	@RequestMapping("/add-submit")
	public ModelAndView submitAddForm(@PathParam("name") String name,
			@PathParam("description") String description,
			@PathParam("quantity") int quantity,
			@PathParam("price") float price)
	{
		Items item = new Items();
		
		item.setName(name);;
		item.setDescription(description);;
		item.setQuantity(quantity);
		item.setPrice(price);
		
		itemsDao.create(item);
		
		ModelAndView mav = new ModelAndView("redirect:/");
		mav.addObject("item", item);

		
		//mav.addObject("room", roomsDao.findById(id));
		return mav;
	}
	@RequestMapping("/delete")
	public ModelAndView showDelete(@RequestParam("id") Long id)
	{
		itemsDao.delete(id);
		return new ModelAndView("redirect:/");

		
	}
	@RequestMapping("/register")
	public ModelAndView showRegistration()
	{
		ModelAndView mav = new ModelAndView("register");
		
		return mav;
		
	}
	@RequestMapping("/summary")
	public ModelAndView showSummary(@RequestParam("fname") String fname,
			@RequestParam("lname") String lname,
			@RequestParam("email") String email,
			@RequestParam("number") String number, 
			@RequestParam("password") String password)
	{
		User user = new User();
		user.setFname(fname);
		user.setLname(lname);
		user.setEmail(email);
		user.setNumber(number);
		user.setPassword(password);
		
		userDao.create(user);
		
		ModelAndView mav = new ModelAndView("summary");
		mav.addObject("user", user);
		
		/*mav.addObject("fname" , fname);
		mav.addObject("lname", lname);
		mav.addObject("email" , email);
		mav.addObject("number", number);
		mav.addObject("password" , password);*/
		return mav;
		
	}
	
	@RequestMapping("adminHomepage")
	public ModelAndView showAdminHomePage()
	{
		/*Items items = new Items();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("items", items);

		return mav;*/
		
		List<Items> items = itemsDao.findAll();
		return new ModelAndView("adminHomepage", "items", items);
		
	}


}
