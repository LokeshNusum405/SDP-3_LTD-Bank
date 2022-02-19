package com.klu.demo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.klu.demo.model.LoanOfficer;
import com.klu.demo.model.Loans;

public interface LoansRepository extends CrudRepository<Loans, String>{

	

	List<Loans> findAllByLoantype(String loantype);

	Loans getLoansByLoanid(String id);

	List<Loans> findAllByLoanstatus(String loanstatus);

	List<Loans> findAllLoansByphonenumber(String phonenumber);

	

	int countByLoanstatus(String applied);

	

	
}
