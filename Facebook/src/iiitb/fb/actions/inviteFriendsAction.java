package iiitb.fb.actions;

import java.util.ArrayList;
import java.util.Map;

import iiitb.fb.models.Friend;
import iiitb.fb.models.User;
import iiitb.fb.models.impl.EventImpl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class inviteFriendsAction extends ActionSupport {
Friend friendObj =new Friend();
private ArrayList<Friend> friendlist ;



public ArrayList<Friend> getFriendlist() {
	return friendlist;
}



public void setFriendlist(ArrayList<Friend> friendlist) {
	this.friendlist = friendlist;
}



public String execute()
{
	System.out.println("In execute inviteFriendAction");
	//Map<String, Object> session = ActionContext.getContext().getSession();
	//User user = (User)session.get("user");
	//int profile_id=user.getProfile_id();
	int profile_id = 1;
	 friendlist =new ArrayList<Friend>();
	EventImpl empl =new EventImpl();
	friendlist =new ArrayList<Friend>();
	empl.inviteFriends(profile_id,friendlist);
	
	
		System.out.println(friendlist.toString());
	

	return SUCCESS;
	
	
}
	

	//create list of friend.java model 
	
	
	
	
	
	
	
	
	
}
