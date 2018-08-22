package com.ahd23.aja106.inno456.services;

import com.ahd23.aja106.inno456.bean.Users;
import com.ahd23.aja106.inno456.dao.DBOperations;

public class ValidateUser {
	
	public Users logIn(String emailId, String password){
		System.out.println("login");
		return new DBOperations().login(emailId, password);
	}
	public boolean registerUser(Users users){
		System.out.println("in user");
		DBOperations dbOperations=new DBOperations();
		boolean alreadyRegister=dbOperations.existCustomer(users.getEmailId());
		System.out.println("alreadyRegister:"+alreadyRegister);
		if(alreadyRegister)
			return false;
		else{
			dbOperations.createClient(users);
			return true;
		}
	}
}
