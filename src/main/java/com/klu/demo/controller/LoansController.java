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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klu.demo.model.Customer;
import com.klu.demo.model.Loans;
import com.klu.demo.service.CustomerService;
import com.klu.demo.service.LoansService;

@Controller
public class LoansController 
{

	@Autowired
	LoansService loanservice;
	
	@Autowired
	CustomerService cuservice;
	
	@GetMapping("/applypersonalloan")
	public ModelAndView addcustomer(HttpSession session)
	{
		ModelAndView mv =new ModelAndView("loan","loan",new Loans());
		
		String phonenumber = (String) session.getAttribute("phoneNumber");
		
		Customer cu = cuservice.getCustomerByPhoneNumber(phonenumber);
		session.setAttribute("accno", cu.getAccountNumber());
		
		session.setAttribute("email", cu.getEmail());
		session.setAttribute("dob", cu.getDob());
		session.setAttribute("address", cu.getAddress());
		mv.setViewName("/customer/ploanapplication");
		return mv;
	}

	@PostMapping("/submitploan")
	public String submitcustomerdata(@ModelAttribute("loan") Loans loan, @RequestParam("aadharproof1") MultipartFile aadharproof1,@RequestParam("proofupload1") MultipartFile proofupload1,@RequestParam("incomeproof1") MultipartFile incomeproof1)
	{
		
		long appliedon=(long)((Math.random()*99999999))+1;
		Timestamp ts=new Timestamp(System.currentTimeMillis());
		String st = ts.toString();
		int n=0;
		String loanid="LOAN"+appliedon;
		loan.setLoanid(loanid);
		loan.setIssuedbyloname("Officername");
		loan.setIssuedon("Verification Date");
		loan.setAppliedon(st);
		loan.setLoanamount(0);
		loan.setLoanstatus("Applied");
		String name1=loan.getCustomerName()+"_"+Long.toString(loan.getAadharno());
		String name2=loan.getCustomerName()+"_"+loan.getProofid();
		String name3=loan.getCustomerName()+"_"+loan.getIncomeid();
		loan.setAadharproof(FileUploadController.aadharproof(aadharproof1,name1));
		loan.setProofupload(FileUploadController.proofupload(proofupload1,name2));
		loan.setIncomeproof(FileUploadController.proofupload(incomeproof1,name3));
		
		
		loanservice.addloan(loan);
		//emailService.sendSimpleMessage(cu.getEmail(), "Welcome to LTD Bank", "Your Account has created is Successful.");
		return "redirect:/viewloanstatus";
	}
	
	
	@GetMapping("/viewloanstatus")
	public ModelAndView viewloanstatus(HttpSession session)
	{
		String pn=(String) session.getAttribute("phoneNumber");
		
		List<Loans> loans = loanservice.getloansbyphonenumber(pn);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/customer/viewloanstatus");
		System.out.println(loans);
		mv.addObject("loans", loans);
		return mv;
	}
	
	@GetMapping("/viewloandocuments/{loanid}")
	public ModelAndView viewloandocuments(@PathVariable("loanid") String loanid)
	{
		Loans loan = loanservice.getLoanById(loanid);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/customer/viewloandocuments");
		System.out.println(loan);
		mv.addObject("loan", loan);
		return mv;
	}
	
	
	
	@GetMapping("/checkeligibilityforloans")
	public ModelAndView checkeligibilityforloans()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/customer/checkeligibilityforloans");
		return mv;
	}
	
	
	
}
