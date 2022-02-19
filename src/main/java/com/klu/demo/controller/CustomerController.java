package com.klu.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.demo.model.Customer;
import com.klu.demo.service.CustomerService;

@Controller
public class CustomerController 
{
	@Autowired
	CustomerService cuservice;
	
	@GetMapping("/cuhome")
	public ModelAndView lohome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/customer/cu_home");

		return mv;
	}
	@GetMapping("/culogout")
	public String logout(HttpSession session)
	{
		String phonenumber = (String) session.getAttribute("phoneNumber");
		Customer cu = cuservice.getCustomerByPhoneNumber(phonenumber);
		cu.setActivestatus(0);
		cuservice.updatecustomer(cu);
		session.removeAttribute("phoneNumber");
		session.removeAttribute("name");
		
		return "redirect:/mainhome";
	}
	
	
	@GetMapping("/loans")
	public ModelAndView loans()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/customer/loans");

		return mv;
	}
	
	@GetMapping("/personalloan")
	public ModelAndView personalloan()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/customer/personalloan");

		return mv;
	}
	@GetMapping("/educationloan")
	public ModelAndView educationloan()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/customer/educationloan");

		return mv;
	}
	@GetMapping("/homeloan")
	public ModelAndView homeloan()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/customer/homeloan");

		return mv;
	}
}
