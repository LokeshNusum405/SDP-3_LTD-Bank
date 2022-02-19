package com.klu.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.model.Loans;
import com.klu.demo.repository.LoansRepository;

@Service
public class LoansService 
{
	@Autowired
	LoansRepository loanrepository;

	public void addloan(Loans loan)
	  {
		loanrepository.save(loan);
	  }
	  public List<Loans> getallloans()
	  {
	    return (List<Loans>) loanrepository.findAll();
	  }
	  public void updateloan(Loans loan)
	  {
		  loanrepository.save(loan);
	  }
	  
	  public Loans getLoanById(String id) {
		  return loanrepository.findById(id).get();
	  }
	  
	  public List<Loans> getloansbyloantype(String loantype)
	  {
	    return (List<Loans>) loanrepository.findAllByLoantype(loantype);
	  } 
	  public Loans getLoanById1(String id)
	  {
		  return loanrepository.getLoansByLoanid(id);
	  }
	  public List<Loans> getloansbyloanstatus(String loanstatus)
	  {
	    return (List<Loans>) loanrepository.findAllByLoanstatus(loanstatus);
	  }
	
	public List<Loans> getloansbyphonenumber(String pn) {
		return (List<Loans>) loanrepository.findAllLoansByphonenumber(pn);
	} 
	
	public int getloanappliedcount(String applied)
	{
		int n = loanrepository.countByLoanstatus(applied );
		return n;
	}
	
	public int getallloanscount()
	{
		int n=(int) loanrepository.count();
		return n;
	}
	
	
	
	
	
}
