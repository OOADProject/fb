package iiitb.fb.actions;

import java.util.Map;

import iiitb.fb.models.User;
import iiitb.fb.models.impl.LoadProfileImpl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoadProfileAction extends ActionSupport {

	
	private static final long serialVersionUID = 1L;

	User user=new User();
	int profileId;


	public String loadProfile()
	{
		LoadProfileImpl pimpl =new LoadProfileImpl();
		
		user=pimpl.getUser(profileId);
		if(user!=null)		
		return SUCCESS;
		else
		return ERROR;
	}
	public String timepass(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		LoadProfileImpl pimpl =new LoadProfileImpl();
		profileId = ((User)session.get("user")).getProfile_id();
		user=pimpl.getUser(profileId);
		if(user!=null)		
		return SUCCESS;
		else
		return ERROR;
	}
	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	public int getProfileId() {
		return profileId;
	}


	public void setProfileId(int profileId) {
		this.profileId = profileId;
	}
		

}
