package com.practice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.practice.entity.User;
import com.practice.service.impl.HelloService;

@Controller
public class HelloController {

	@Autowired HelloService helloService;
	 @RequestMapping(value="/")
	 public String hello(@ModelAttribute("login")User user, Model model) {
	System.out.println("here in index*********");
	   //returns the view name
	   return "index";
	 
	 }
	 @RequestMapping(value="/register")
	 public String openregister(@ModelAttribute("login")User user, Model model) {
	
	   //returns the view name
	   return "register";
	 
	 }
	 @RequestMapping(value="/login",method =RequestMethod.POST)
	 public String login(@ModelAttribute("login")User user, Model model) {
		 model.addAttribute("msg",helloService.doLogin(user.getName(),user.getPassword()));
	   //returns the view name
	   return "welcome";
	 
	 }
	 
	 @RequestMapping(value="/register",method =RequestMethod.POST)
	 public String getregister(@ModelAttribute("login")User user, Model model) {
		 model.addAttribute("msg",helloService.doRegister(user));
		model.addAttribute("commandName","login");
	   //returns the view name
	   return "index";
	 
	 }
	

	 

}
