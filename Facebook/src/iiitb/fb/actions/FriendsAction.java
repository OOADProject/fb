package iiitb.fb.actions;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import iiitb.fb.models.Friend;
import iiitb.fb.models.User;






import iiitb.fb.models.impl.FriendsImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class FriendsAction extends ActionSupport implements ModelDriven<User>,SessionAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	User user=new User();
	
	int numberoffriends;
	List<Friend> allfriends;
	Map<String, Object> session;
	
	
	public String getFriends()
	{
		FriendsImpl friends=new FriendsImpl();
		user=(User)session.get("user");
		allfriends=friends.allFriends(user);
		numberoffriends=allfriends.size();
		System.out.println(numberoffriends);
		return SUCCESS;
	}
	


	
	public List<Friend> getAllfriends() {
		return allfriends;
	}




	public void setAllfriends(List<Friend> allfriends) {
		this.allfriends = allfriends;
	}




	@Override
	public User getModel() {
		return user;
	}



	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public int getNumberoffriends() {
		return numberoffriends;
	}



	public void setNumberoffriends(int numberoffriends) {
		this.numberoffriends = numberoffriends;
	}



	public Map<String, Object> getSession() {
		return session;
	}

}
