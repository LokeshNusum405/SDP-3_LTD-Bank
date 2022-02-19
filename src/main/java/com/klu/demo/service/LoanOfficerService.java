package com.klu.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.model.LoanOfficer;
import com.klu.demo.repository.LoanOfficerRepository;



@Service
public class LoanOfficerService 
{

	  @Autowired
	  LoanOfficerRepository lorepository;
	  public void addloanofficer(LoanOfficer lo)
	  {
		  lorepository.save(lo);
	  }
	  public List<LoanOfficer> getallloanofficers()
	  {
	    return (List<LoanOfficer>) lorepository.findAll();
	  }
	  public void updateloanofficer(LoanOfficer lo)
	  {
		  lorepository.save(lo);
	  }
	  public void deleteloanofficer(LoanOfficer lo) 
	  {
		  lorepository.delete(lo);
	  }
	  public LoanOfficer getLoanOffierById(long id) {
		  return lorepository.findById(id).get();
	  }
	  public boolean validateLoanOfficerByPhoneNumber(String phonenumber) {
		  LoanOfficer lo = lorepository.findByphonenumber(phonenumber);
		  if(lo == null) {
			  return false;
		  }
		  return true;
	  }
	  public LoanOfficer getLoanOfficerByPhoneNumber(String phonenumber) 
	  {
		  LoanOfficer lo = lorepository.findByphonenumber(phonenumber);
		  if(lo == null) {
			  return null;
		  }
		  return lo;
	  }	  
}
