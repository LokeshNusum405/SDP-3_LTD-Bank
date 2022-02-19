package com.klu.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="loans")
public class Loans 
{
	@Id
	@Column(name="loanid")
	private String loanid;
	
	@Column(name="loantype")
	private String loantype;
	
	public String getLoanid() {
		return loanid;
	}

	public void setLoanid(String loanid) {
		this.loanid = loanid;
	}

	public String getLoantype() {
		return loantype;
	}

	public void setLoantype(String loantype) {
		this.loantype = loantype;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getAadharno() {
		return aadharno;
	}

	public void setAadharno(long aadharno) {
		this.aadharno = aadharno;
	}

	public String getAadharproof() {
		return aadharproof;
	}

	public void setAadharproof(String aadharproof) {
		this.aadharproof = aadharproof;
	}

	public String getProoftype() {
		return prooftype;
	}

	public void setProoftype(String prooftype) {
		this.prooftype = prooftype;
	}

	public String getProofid() {
		return proofid;
	}

	public void setProofid(String proofid) {
		this.proofid = proofid;
	}

	public String getProofupload() {
		return proofupload;
	}

	public void setProofupload(String proofupload) {
		this.proofupload = proofupload;
	}

	public double getRequestedamount() {
		return requestedamount;
	}

	public void setRequestedamount(double requestedamount) {
		this.requestedamount = requestedamount;
	}

	public String getCollaterals() {
		return collaterals;
	}

	public void setCollaterals(String collaterals) {
		this.collaterals = collaterals;
	}

	public String getForloan() {
		return reasonforloan;
	}

	public void setForloan(String reasonforloan) {
		this.reasonforloan = reasonforloan;
	}

	

	public String getIssuedbyloname() {
		return issuedbyloname;
	}

	public void setIssuedbyloname(String issuedbyloname) {
		this.issuedbyloname = issuedbyloname;
	}

	public String getIssuedon() {
		return issuedon;
	}

	public void setIssuedon(String issuedon) {
		this.issuedon = issuedon;
	}

	public String getLoanstatus() {
		return loanstatus;
	}

	public void setLoanstatus(String loanstatus) {
		this.loanstatus = loanstatus;
	}

	//personal details
	@Column(name="customeraccno")
	private long accountNumber;
	
	@Column(name="customername")
	private String customerName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phonenumber")
	private String phonenumber;
	
	@Column(name="dob")
	private Date dob;
	
	@Column(name="address")
	private String address;
	
	//identity details
	
	@Column(name="aadhartype")
	private String aadhartype;
	
	@Column(name="aadharno")
	private long aadharno;
	
	@Column(name="aadharproof")
	private String aadharproof;
	
	@Column(name="prooftype")
	private String prooftype;
	
	@Column(name="proofid")
	private String proofid;
	
	@Column(name="proofupload")
	private String proofupload;
	
	@Column(name="incometype")
	private String incometype;
	
	@Column(name="incomeid")
	private String incomeid;
	
	@Column(name="appliedon")
	private String appliedon;
	
	public String getAppliedon() {
		return appliedon;
	}

	public void setAppliedon(String appliedon) {
		this.appliedon = appliedon;
	}

	public String getAadhartype() {
		return aadhartype;
	}

	public void setAadhartype(String aadhartype) {
		this.aadhartype = aadhartype;
	}

	public String getIncometype() {
		return incometype;
	}

	public void setIncometype(String incometype) {
		this.incometype = incometype;
	}

	public String getIncomeid() {
		return incomeid;
	}

	public void setIncomeid(String incomeid) {
		this.incomeid = incomeid;
	}

	public String getIncomeproof() {
		return incomeproof;
	}

	public void setIncomeproof(String incomeproof) {
		this.incomeproof = incomeproof;
	}

	public String getReasonforloan() {
		return reasonforloan;
	}

	public void setReasonforloan(String reasonforloan) {
		this.reasonforloan = reasonforloan;
	}

	@Column(name="incomeproof")
	private String incomeproof;
	
	//loandetails
	
	@Column(name="requestedamount")
	private double requestedamount;
	
	@Column(name="collaterals")
	private String collaterals;
	
	@Column(name="reasonforloan")
	private String reasonforloan;
	
	@Column(name="loanamount")
	private double loanamount;
	
	//timestamp
	
	public double getLoanamount() {
		return loanamount;
	}

	public void setLoanamount(double loanamount) {
		this.loanamount = loanamount;
	}

	@Column(name="issuedbyloname")
	private String issuedbyloname;
	
	@Column(name="issuedon")
	private String issuedon;
	
	@Column(name="loanstatus")
	private String loanstatus;
	
}
