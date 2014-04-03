package iiitb.fb.actions;


import java.text.DateFormat;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import iiitb.fb.models.*;
import iiitb.fb.models.impl.*;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Compose extends ActionSupport implements ModelDriven<Message> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Message m=new Message();
	int profile_id = 1;
	int conversation_id;
	MessageNameList nm = new MessageNameList();
	List<MessageNameList> namelist=null ;
	MessagePageImpl mp = new MessagePageImpl();
	List<MessageNameList> conversation = null;
	String firstMessageName;
	int unreadMessages;
	
	public Message getM() {
		return m;
	}

	public void setM(Message m) {
		this.m = m;
	}

	
	public int getProfile_id() {
		return profile_id;
	}

	public void setProfile_id(int profile_id) {
		this.profile_id = profile_id;
	}

	public int getConversation_id() {
		return conversation_id;
	}

	public void setConversation_id(int conversation_id) {
		this.conversation_id = conversation_id;
	}

	public MessageNameList getNm() {
		return nm;
	}

	public void setNm(MessageNameList nm) {
		this.nm = nm;
	}

	public List<MessageNameList> getNamelist() {
		return namelist;
	}

	public void setNamelist(List<MessageNameList> namelist) {
		this.namelist = namelist;
	}

	public MessagePageImpl getMp() {
		return mp;
	}

	public void setMp(MessagePageImpl mp) {
		this.mp = mp;
	}

	public List<MessageNameList> getConversation() {
		return conversation;
	}

	public void setConversation(List<MessageNameList> conversation) {
		this.conversation = conversation;
	}

	public String getFirstMessageName() {
		return firstMessageName;
	}

	public void setFirstMessageName(String firstMessageName) {
		this.firstMessageName = firstMessageName;
	}

	public int getUnreadMessages() {
		return unreadMessages;
	}

	public void setUnreadMessages(int unreadMessages) {
		this.unreadMessages = unreadMessages;
	}

	public String execute()
	{
		ComposeImpl cm = new ComposeImpl();
		
		

		DateFormat dateFormat = new SimpleDateFormat(" yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		
		System.out.println(date.toString());
		
		m.setIsRead(0);
		m.setSender_id(profile_id);
		m.setTimestamp(dateFormat.format(date));
		
		if(cm.sendMessage(m))
		{
			firstMessageName = mp.getFirstChatName(profile_id);
			unreadMessages = mp.totalUnreadMessages(profile_id);
			
		    conversation = new ArrayList<MessageNameList>();
			namelist= new ArrayList<MessageNameList>();
			namelist = mp.getnames(profile_id);
			
			conversation_id = mp.getFirstChatId(profile_id);
			System.out.println("conversation id = "+conversation_id);
			conversation = mp.getconversation(profile_id, conversation_id);
			System.out.println("first conv name - "+firstMessageName);
			System.out.println("total unread msg - "+unreadMessages);
			return SUCCESS;
		}
		else
			return ERROR;
	
	}
	

	@Override
	public Message getModel() {
		// TODO Auto-generated method stub
		return m;
	}

}
