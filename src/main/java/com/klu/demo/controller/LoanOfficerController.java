package com.klu.demo.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.demo.model.Customer;
import com.klu.demo.model.LoanOfficer;
import com.klu.demo.model.Loans;
import com.klu.demo.model.SmsRequest;
import com.klu.demo.service.CustomerService;
import com.klu.demo.service.EmailService;
import com.klu.demo.service.LoanOfficerService;
import com.klu.demo.service.LoansService;

@Controller
public class LoanOfficerController
{
	@Autowired
	CustomerService cuservice;
	
	@Autowired
	private EmailService emailService;
	@Autowired
	LoanOfficerService loservice;
	
	@Autowired
	LoansService loanservice;
	
	  @GetMapping("/lologin")
	    public ModelAndView login() 
	    {
	    	ModelAndView mv = new ModelAndView("smsRequest","smsRequest",new SmsRequest());
	    	mv.setViewName("/loanofficer/lo_login");
	    	return mv;
	    }
	
		
		@GetMapping("/lohome")
		public ModelAndView lohome(HttpSession session)
		{
			
			int active=cuservice.getcountCustomerByActivestatus(1);
			int total = cuservice.getallcustomercount();
			
			int inactive=total-active;
			
			
			double a=((active*100)/total);
			double i=(inactive*100)/total;
			
			session.setAttribute("a", a);
			session.setAttribute("i", i);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/loanofficer/lo_home");

			return mv;
		}
		@GetMapping("/addcustomer")
		public ModelAndView addcustomer()
		{
			ModelAndView mv =new ModelAndView("cu","cu",new Customer());
			mv.setViewName("/loanofficer/add_customer");
			return mv;
		}

		@PostMapping("/submitcu")
		public String submitcustomerdata(@ModelAttribute("cu") Customer cu)
		{
			int n=0;
			long accountNumber=(long)((Math.random()*99999999))+1;
			String fn="7945"+accountNumber;
			cu.setAccountNumber(Long.parseLong(new String(fn)));
			cu.setActivestatus(0);
			cu.setRecentlogin("No Login");
			cu.setNologins(n);
			cuservice.addcustomer(cu);
			//emailService.sendSimpleMessage(cu.getEmail(), "Welcome to LTD Bank", "Your Account has created is Successful.");
			return "redirect:/lohome";
		}
		
		@GetMapping("/viewcustomers")
		public ModelAndView viewallcustomers()
		{
			List<Customer> customers = cuservice.getallcustomers();
			ModelAndView mv=new ModelAndView();
			mv.setViewName("/loanofficer/viewcustomers");
			System.out.println(customers);
			mv.addObject("customers", customers);
			return mv;
		}
		
		@GetMapping("/updatecustomer/{cuid}")
		public ModelAndView updateloanofficer(@PathVariable("cuid") long cuid)
		{
			Customer cu = cuservice.getCustomerById(cuid);
			ModelAndView mv =new ModelAndView("cu","cu",cu);
			mv.setViewName("/loanofficer/update_customer");
			return mv;
		}
		
		@PostMapping("/customer/update")
		public String submitupdatedata(@ModelAttribute("cu") Customer cu)
		{
			cuservice.updatecustomer(cu);
			
			return "redirect:/viewcustomers";
		}
		
		@GetMapping("/customer/delete/{cuid}")
		  public String deletecustomerrecord(@PathVariable("cuid") long cuid)
		  {
			Customer lo = cuservice.getCustomerById(cuid);
			cuservice.deletecustomer(lo);
		      
		    return "redirect:/viewcustomers";
		  }
		
		@GetMapping("/lologout")
		public String lologout(HttpSession session)
		{
			String phonenumber = (String)session.getAttribute("phoneNumber");
			LoanOfficer lo = loservice.getLoanOfficerByPhoneNumber(phonenumber);
			lo.setActivestatus(0);
			loservice.updateloanofficer(lo);
			session.removeAttribute("phoneNumber");
			return "redirect:/mainhome";
		}

		
		
		@GetMapping("/viewloans")
		public ModelAndView viewloans()
		{
			List<Loans> loans = loanservice.getloansbyloantype("Personal ");
			ModelAndView mv=new ModelAndView();
			mv.setViewName("/loanofficer/viewloans");
			System.out.println(loans);
			mv.addObject("loans", loans);
			return mv;
		}
		
		@GetMapping("/viewloanapplication/{loanid}")
		public ModelAndView viewloanapplication(@PathVariable("loanid") String loanid,HttpSession session)
		{
			
			
			session.setAttribute("loanid", loanid);
			Loans loan = loanservice.getLoanById(loanid);
			ModelAndView mv=new ModelAndView("loan","loan",loan);
			mv.setViewName("/loanofficer/viewloanapplication");
			System.out.println(loan);
			mv.addObject("loan", loan);
			return mv;
		}
		
		
		@GetMapping("/acceptloan")
		public String acceptloan(HttpSession session)
		{
			Timestamp ts=new Timestamp(System.currentTimeMillis());
    		String st = ts.toString();
			String loname= (String) session.getAttribute("loname");
			Loans l=loanservice.getLoanById1((String) session.getAttribute("loanid"));
			l.setIssuedbyloname(loname);
			l.setIssuedon(st);
			l.setLoanstatus("Verified");
			loanservice.updateloan(l);;
			
			return "redirect:/viewloans";
		}
		
		
}