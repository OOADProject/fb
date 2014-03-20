package iiitb.fb.actions;

import iiitb.fb.models.User;
import iiitb.fb.models.impl.UserImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User>{

	/**
	 * 
	 */
	
	User user = new User();
	private static final long serialVersionUID = -636653932093134244L;
	
	public String execute(){
		UserImpl ui = new UserImpl();
		if(ui.isValidUser(user)){
			System.out.println("I am Here");
	

			return SUCCESS;
		}else{
			return ERROR;
		}
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
