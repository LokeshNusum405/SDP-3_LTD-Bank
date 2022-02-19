package com.klu.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customers")
public class Customer 
{
	@Id
	@Column(name="accountnumber")
	private long accountNumber;
	
	@Column(name="customername")
	private String customerName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phonenumber")
	private String phonenumber;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="address")
	private String address;
	
	@Column(name="idtype")
	private String idType;
	
	@Column(name="idnumber")
	private long idNumber;
	
	@Column(name="nominee")
	private String nominee;
	
	@Column(name="recentlogin")
	private String recentlogin;
	
	@Column(name="nologins")
	private int nologins;
	
	@Column(name="activestatus")
	private int activestatus;
	

	
	public String getRecentlogin() {
		return recentlogin;
	}
	public void setRecentlogin(String recentlogin) {
		this.recentlogin = recentlogin;
	}
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
	public String getPhoneNumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIdType() {
		return idType;
	}
	public void setIdType(String idType) {
		this.idType = idType;
	}
	public long getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(long idNumber) {
		this.idNumber = idNumber;
	}
	public String getNominee() {
		return nominee;
	}
	public void setNominee(String nominee) {
		this.nominee = nominee;
	}
	

}
