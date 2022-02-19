package com.klu.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.klu.demo.model.LoanOfficer;



public interface LoanOfficerRepository extends CrudRepository<LoanOfficer, Long>
{
	LoanOfficer findByphonenumber(String phonenumber);
}
