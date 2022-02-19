package com.klu.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.demo.model.LoanOfficer;
import com.klu.demo.model.Loans;
import com.klu.demo.service.LoanOfficerService;
import com.klu.demo.service.LoansService;

@Controller
public class BankManagerController
{
	@Autowired
	LoanOfficerService loservice;
	
	@Autowired
	LoansService loanservice;
	
	@GetMapping("/bmhome")
	public ModelAndView bmhome(HttpSession session)
	{
		int tlc = loanservice.getallloanscount();
		int lac = loanservice.getloanappliedcount("Applied");
		int lvc = loanservice.getloanappliedcount("Verified");
		int lacc = loanservice.getloanappliedcount("Accepted");
		int lrc = loanservice.getloanappliedcount("Rejected");
		
		
		double p1=((lac*100)/tlc);
		double p2=(lvc*100)/tlc;
		double p3=(lacc*100)/tlc;
		double p4=(lrc*100)/tlc;
		
		
		
		
		session.setAttribute("p1", p1);
		session.setAttribute("p2", p2);
		session.setAttribute("p3", p3);
		session.setAttribute("p4", p4);
		
		System.out.println(p1);
		System.out.println(p2);
		System.out.println(p3);
		System.out.println(p4);
		
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/bankmanager/bm_home");
		return mv;
	}
	@GetMapping("/addloanofficer")
	public ModelAndView addemployee()
	{
		ModelAndView mv =new ModelAndView("lo","lo",new LoanOfficer());
		mv.setViewName("/bankmanager/add_loanofficer");
		return mv;
	}

	@PostMapping("/submitlo")
	public String submitempdata(@ModelAttribute("lo") LoanOfficer lo)
	{
		int n=0;
		long officerid=(long)((Math.random()*99))+1;
		String fn="7995937945"+officerid;
		lo.setOfficerid(Long.parseLong(new String(fn)));
		lo.setActivestatus(0);
		lo.setRecentlogin("No Login");
		lo.setNologins(n);
		loservice.addloanofficer(lo);
		
		return "redirect:/bmhome";
	}
	
	@GetMapping("/viewloanofficers")
	public ModelAndView viewallemployees()
	{
		List<LoanOfficer> loanofficers = loservice.getallloanofficers();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/bankmanager/viewloanofficers");
		System.out.println(loanofficers);
		mv.addObject("loanofficers", loanofficers);
		return mv;
	}
	
	
	@GetMapping("/updateloanofficer/{loid}")
	public ModelAndView updateloanofficer(@PathVariable("loid") long cuid)
	{
		LoanOfficer lo = loservice.getLoanOffierById(cuid);
		ModelAndView mv =new ModelAndView("lo","lo",lo);
		mv.setViewName("/bankmanager/update_loanofficer");
		return mv;
	}
	
	@PostMapping("/loanofficer/update")
	public String submitupdatedata(@ModelAttribute("lo") LoanOfficer lo)
	{
		loservice.updateloanofficer(lo);
		
		return "redirect:/viewloanofficers";
	}
	
	@GetMapping("/loanofficer/delete/{loid}")
	  public String deleteemployeerecord(@PathVariable("loid") long loid)
	  {
		LoanOfficer lo = loservice.getLoanOffierById(loid);
	    loservice.deleteloanofficer(lo);
	      
	    return "redirect:/viewloanofficers";
	  }
	
	@GetMapping("/logout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("phoneNumber");
		return "redirect:/mainhome";
	}
	
	@GetMapping("/confirmdelete")
	public void confirmdelete(HttpSession session)
	{
		session.setAttribute("phoneNumber", "");
	}
	
	@GetMapping("/viewallloans")
	public ModelAndView viewloans()
	{
		List<Loans> loans = loanservice.getloansbyloanstatus("Verified");
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/bankmanager/viewallloans");
		System.out.println(loans);
		mv.addObject("loans", loans);
		return mv;
	}
	
	@GetMapping("/viewverifiedloanapplication/{loanid}")
	public ModelAndView viewverifiedloanapplication(@PathVariable("loanid") String loanid,HttpSession session)
	{
		
		
		session.setAttribute("loanid", loanid);
		Loans loan = loanservice.getLoanById(loanid);
		ModelAndView mv=new ModelAndView("loan","loan",loan);
		mv.setViewName("/bankmanager/viewverifiedloanapplication");
		System.out.println(loan);
		mv.addObject("loan", loan);
		return mv;
	}
	
	
	@PostMapping("/loanaccepted")
	public String loanaccepted(HttpSession session,@RequestParam("loanamount") double loanamount)
	{
		System.out.println("Hi");
		System.out.println(loanamount);
		Loans l=loanservice.getLoanById1((String) session.getAttribute("loanid"));
		System.out.println(loanamount);
		l.setLoanamount(loanamount);
		l.setLoanstatus("Accepted");
		loanservice.updateloan(l);;
		
		return "redirect:/viewallloans";
	}
	@GetMapping("/loanrejected")
	public String loanrejected(HttpSession session)
	{
		
		Loans l=loanservice.getLoanById1((String) session.getAttribute("loanid"));
		
		l.setLoanstatus("Rejected");
		loanservice.updateloan(l);;
		
		return "redirect:/viewallloans";
	}
	
	
	
	
}