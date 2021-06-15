package com.example.demo;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FormController {
	
	@Autowired
	CustomerRepo repo;
	
	@RequestMapping("/")
	public String home() {
		return "SubmissionForm";
	}
	
	@RequestMapping("/submit-data")
	public String submitData(Customers customer) {
		repo.save(customer);
		return "SubmissionForm";
	}
	
	@RequestMapping("get-details")
	public ModelAndView getDetails() {
		ModelAndView mv = new ModelAndView("ViewData");
		//Incomplete Code!!!
		Customers customer = repo.findById(1).orElse(null);
		mv.addObject(customer);
		return mv;
	}
	
	@RequestMapping("/customer")
	@ResponseBody
	public Iterable<Customers> getCustomer() {
		return repo.findAll();
	}
	
	@RequestMapping("/customer/{cid}")
	@ResponseBody
	public Optional<Customers> getCustomer2(@PathVariable("cid") int cid) {
		return repo.findById(cid);
	}
	
	@RequestMapping("/delete-customer")
	public String deleteCustomer(Customers cust) {
		repo.delete(cust);
		return "SubmissionForm";
	}
	
	@RequestMapping("/update-customer")
	public String updateCustomer(Customers cust) {
		repo.save(cust);
		return "SubmissionForm";
	}
	
//	@PostMapping("submit-data")
//	public String submitData(@RequestParam("cid") String cid, 
//			@RequestParam("cname") String cname,
//			@RequestParam("cemail") String cemail,
//			ModelMap modelMap) {
//		
//		modelMap.put("cid", cid);
//		modelMap.put("cname", cname);
//		modelMap.put("cemail", cemail);
//		return "ViewData";
//	}
	
}
































