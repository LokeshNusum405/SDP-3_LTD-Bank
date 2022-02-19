package com.klu.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.demo.model.Customer;
import com.klu.demo.model.LoanOfficer;
import com.klu.demo.repository.CustomerRepository;



@Service
public class CustomerService 
{

	  @Autowired
	  CustomerRepository curepository;
	  
	  public void addcustomer(Customer cu)
	  {
		  curepository.save(cu);
	  }
	  public List<Customer> getallcustomers()
	  {
	    return (List<Customer>) curepository.findAll();
	  }
	  public void updatecustomer(Customer cu)
	  {
		  curepository.save(cu);
	  }
	  public void deletecustomer(Customer cu) 
	  {
		  curepository.delete(cu);
	  }
	  public Customer getCustomerById(long id) {
		  return curepository.findById(id).get();
	  }
	  public boolean validateCustomerByPhoneNumber(String phonenumber) {
		  Customer cu = curepository.findByphonenumber(phonenumber);
		  if(cu == null) {
			  return false;
		  }
		  return true;
	  }
	  public Customer getCustomerByPhoneNumber(String phonenumber) 
	  {
		  return curepository.findByphonenumber(phonenumber);
	  }
	public int getcountCustomerByActivestatus(int v) {
		int n= curepository.countCustomerByActivestatus(v);
		return n;
	}
	public int getallcustomercount() {
		int n=(int) curepository.count();
		return n;
	}
}
