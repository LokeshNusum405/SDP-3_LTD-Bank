package com.klu.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

	
@Entity
@Table(name="loanofficers")
public class LoanOfficer 
{
	@Id
	@Column(name="officerid")
	private long officerid;
	
	@Column(name="officername")
	private String officername;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phonenumber")
	private String phonenumber;
	
	@Column(name="dob")
	private Date dob;
	
	@Column(name="address")
	private String address;
	
	@Column(name="loantype")
	private String loantype;
	
	@Column(name="recentlogin")
	private String recentlogin;
	
	@Column(name="nologins")
	private int nologins;
	
	@Column(name="activestatus")
	private int activestatus;
	
	public int getNologins() {
		return nologins;
	}
	public void setNologins(int nologins) {
		this.nologins = nologins;
	}
	public int getActivestatus() {
		return activestatus;
	}
	public void setActivestatus(int activestatus) {
		this.activestatus = activestatus;
	}
	
	public String getRecentlogin() {
		return recentlogin;
	}
	public void setRecentlogin(String recentlogin) {
		this.recentlogin = recentlogin;
	}
	public String getLoantype() {
		return loantype;
	}
	public void setLoantype(String loantype) {
		this.loantype = loantype;
	}
	public long getOfficerid() {
		return officerid;
	}
	public void setOfficerid(long officerid) {
		this.officerid = officerid;
	}
	public String getOfficername() {
		return officername;
	}
	public void setOfficername(String officername) {
		this.officername = officername;
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
	
	
	
	
}
