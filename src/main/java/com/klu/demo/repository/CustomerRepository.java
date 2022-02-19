package com.klu.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.klu.demo.model.Customer;



public interface CustomerRepository extends CrudRepository<Customer, Long>
{
	Customer findByphonenumber(String phonenumber);

	int countCustomerByActivestatus(int n);
}
