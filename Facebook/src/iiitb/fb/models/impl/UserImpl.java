package iiitb.fb.models.impl;

import iiitb.fb.models.User;

public class UserImpl {

	public boolean isValidUser(User user) {
		// TODO Auto-generated method stub
		if(user.getUserName().equalsIgnoreCase("demo") & user.getPassword().equalsIgnoreCase("demo"))
			return true;
		else
			return false;
	}

}
