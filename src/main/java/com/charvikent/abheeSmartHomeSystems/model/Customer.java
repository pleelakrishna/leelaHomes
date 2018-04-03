package com.charvikent.abheeSmartHomeSystems.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "abheeCustomer")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@CreationTimestamp
	private Date createdTime;

	@UpdateTimestamp
	private Date updatedTime;

	private String mobilenumber;

	private String email;

	private String BranchId;

	private String enabled;
	private String designation;

	private String password;
	
	private String firstname;
	private String lastname;
	private String status;
	private String branchName;
	
	private String customerId;
	
	private String address;




	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}



	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	
	

	

	public Customer() {
	}
	
	
	



	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Customer(Customer customer) {
		this.id = customer.id;
		this.createdTime = customer.createdTime;
		this.updatedTime = customer.updatedTime;
		this.mobilenumber = customer.mobilenumber;
		this.email = customer.email;
		this.enabled = customer.enabled;
		this.designation = customer.designation;
		this.password = customer.password;
		this.status = customer.status;
		this.firstname = customer.firstname;
		this.lastname = customer.lastname;
		this.BranchId=customer.BranchId;
		this.address=customer.address;

	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}

	public Date getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(Date updatedTime) {
		this.updatedTime = updatedTime;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}



	

	public String getBranchId() {
		return BranchId;
	}

	public void setBranchId(String branchId) {
		BranchId = branchId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", createdTime=" + createdTime + ", updatedTime=" + updatedTime
				+ ", mobilenumber=" + mobilenumber + ", email=" + email + ", BranchId=" + BranchId + ", enabled="
				+ enabled + ", designation=" + designation + ", password=" + password + ", firstname=" + firstname
				+ ", lastname=" + lastname + ", status=" + status + ", branchName=" + branchName + ", customerId="
				+ customerId + ", address=" + address + "]";
	}

	
	
	
	

}