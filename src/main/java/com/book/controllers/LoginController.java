package com.book.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.book.domain.User;
import com.book.service.LoginService;




@Controller
public class LoginController {

	
	@Autowired
	private LoginService service;
	

	
	@RequestMapping("/login")
	public String loginPage(Model model) {
		model.addAttribute("user",new User());
		
		return "login";
	}
	
	

	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String loingUser(@ModelAttribute("user") User user,HttpSession session) {
		System.out.println("==================================test==================");
		System.out.println(user.getName() + "=====" +user.getPassword());
		if(service.validateUser(user.getName(), user.getPassword())){
			
			//model.addAttribute("name",user.getName());
			session.setAttribute("name",user.getName());
			return "searchHome";
		}
		
		    return "login";
			
//		String name = request.getParameter("name");
//		String password = request.getParameter("password");
//
//		boolean isValidUser = service.validateUser(name, password);
//
//		if (isValidUser) {
//			request.setAttribute("name", name);
//			request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(
//					request, response);
//		} else {
//			request.setAttribute("errorMessage", "Invalid Credentials!!");
//			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(
//					request, response);
//		}
//		

	}
	
}
