package iiitb.fb.actions;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import iiitb.fb.models.User;
import iiitb.fb.models.UserWallPost;
import iiitb.fb.models.impl.LoadProfileImpl;
import iiitb.fb.models.impl.WallPostImpl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoadProfileAction extends ActionSupport {

	
	private static final long serialVersionUID = 1L;

	User user=new User();
	int profileId;
	List<UserWallPost> wallPostsList;
	private int isFriend;
	
	public String loadProfile()
	{
		LoadProfileImpl pimpl =new LoadProfileImpl();
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("currentProfile", profileId);
		wallPostsList = new ArrayList<UserWallPost>();
		WallPostImpl wpi = new WallPostImpl();
		wallPostsList = wpi.getWallPosts(profileId);
		user=pimpl.getUser(profileId);
		isFriend = pimpl.isFriend(profileId,((User)session.get("user")).getProfile_id());
		if(user!=null)		
		return SUCCESS;
		else
		return ERROR;
	}
	
	public String timepass(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		LoadProfileImpl pimpl =new LoadProfileImpl();
		profileId = ((User)session.get("user")).getProfile_id();
		session.put("currentProfile", profileId);
		isFriend = 3;
		WallPostImpl wpi = new WallPostImpl();
		wallPostsList = wpi.getWallPosts(profileId);
		
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
	public List<UserWallPost> getWallPostsList() {
		return wallPostsList;
	}
	public void setWallPostsList(List<UserWallPost> wallPostsList) {
		this.wallPostsList = wallPostsList;
	}

	public int getIsFriend() {
		return isFriend;
	}

	public void setIsFriend(int isFriend) {
		this.isFriend = isFriend;
	}

	

}
