package iiitb.fb.models;

import java.util.Date;

public class MessageNameList {
	
	private String profile_pic;
	private String firstname;
	private String lastname;
	private Integer profile_id;
	private String conversation_body;
	//private Date time;  // is to be used for timing
	
	
	
	public String getProfile_pic() {
		return profile_pic;
	}
	
	public String getConversation_body() {
		return conversation_body;
	}

	public void setConversation_body(String conversation_body) {
		this.conversation_body = conversation_body;
	}

	public Integer getProfile_id() {
		return profile_id;
	}
	public void setProfile_id(Integer profile_id) {
		this.profile_id = profile_id;
	}
	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	
	

}
