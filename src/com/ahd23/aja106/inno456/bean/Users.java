package com.ahd23.aja106.inno456.bean;

public class Users {
	private String userId;
	private String emailId;
	private String password;
	private String firstName;
	private String lastName;
	private String address;
	private String Country;
	private String gender;
	private String mobileNo;
	public String getMobileNo() {
		return mobileNo;
	}
	
	//private String DOB;
	private String imagePath;
	private int status;
	public Users(String emailId, String password,
			String firstName, String lastName, String address, String country,
			String gender,int status/*, String dOB*/,String mobileNo) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.Country = country;
		this.gender = gender;
		this.mobileNo=mobileNo;
		this.status=status;
	}
	public Users() {
		super();
	}
	public void setMobileNo(String string) {
		this.mobileNo = string;
	}
	public String getUserId() {
		return userId;
	}
	public String getEmailId() {
		return emailId;
	}
	public String getPassword() {
		return password;
	}
	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public String getAddress() {
		return address;
	}
	public String getCountry() {
		return Country;
	}
	public String getGender() {
		return gender;
	}
	/*public String getDOB() {
		return DOB;
	}*/
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	/*public void setDOB(String dOB) {
		DOB = dOB;
	}*/
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
