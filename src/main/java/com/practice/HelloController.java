package com.practice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {

	
	 @RequestMapping("/")
	 public String hello(@ModelAttribute("addStudent")Student student) {
	
	   //returns the view name
	   return "student";
	 
	 }
	

	 
	 @RequestMapping(value="/addStudent",method = RequestMethod.POST)
	 public String addStudent(@ModelAttribute("addStudent")Student student, 
			   Model model)
	 {
		 model.addAttribute("age",student.getAge());
		 model.addAttribute("name",student.getName());
		 model.addAttribute("id",student.getId());
		 return "result";
	 }
	
}
