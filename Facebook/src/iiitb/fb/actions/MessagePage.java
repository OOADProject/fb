package iiitb.fb.actions;

import java.util.ArrayList;
import java.util.List;

import iiitb.fb.models.*;
import iiitb.fb.models.impl.MessagePageImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MessagePage extends ActionSupport implements ModelDriven<MessageNameList>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	int profile_id=1;
	int i=0,size=0;
	int conversation_id;
	MessageNameList nm = new MessageNameList();
	List<MessageNameList> namelist=null ;
	MessagePageImpl mp = new MessagePageImpl();
	List<MessageNameList> conversation = null;
	String firstMessageName;
	int unreadMessages;
	
	public int getConversation_id() {
		return conversation_id;
	}

	public void setConversation_id(int conversation_id) {
		this.conversation_id = conversation_id;
	}
	
	public int getUnreadMessages() {
		return unreadMessages;
	}

	public void setUnreadMessages(int unreadMessages) {
		this.unreadMessages = unreadMessages;
	}

	public String getFirstMessageName() {
		return firstMessageName;
	}

	public void setFirstMessageName(String firstMessageName) {
		this.firstMessageName = firstMessageName;
	}

	public List<MessageNameList> getConversation() {
		return conversation;
	}

	public void setConversation(List<MessageNameList> conversation) {
		this.conversation = conversation;
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

	public String execute()
	{
		firstMessageName = mp.getFirstChatName(profile_id);
		unreadMessages = mp.totalUnreadMessages(profile_id);
		
	    conversation = new ArrayList<MessageNameList>();
		namelist= new ArrayList<MessageNameList>();
		namelist = mp.getnames(profile_id);
		size = namelist.size();
		System.out.println("first conv name - "+firstMessageName);
		System.out.println("total unread msg - "+unreadMessages);


		System.out.println("in MessagePage  names are - ");
		while(i<size)
		{			
			System.out.println(namelist.get(i).getFirstname()+" "+ namelist.get(i).getLastname());
			i++;
		}
			
			conversation_id = mp.getFirstChatId(profile_id);
			System.out.println("conversation id = "+conversation_id);
			conversation = mp.getconversation(profile_id, conversation_id);
		
		return SUCCESS;
	}
		
	

	public String findConv()
	{
		namelist= new ArrayList<MessageNameList>();
		namelist = mp.getnames(profile_id);
		 conversation = new ArrayList<MessageNameList>();
		System.out.println("conversation id = "+conversation_id);
		conversation = mp.getconversation(profile_id, conversation_id);
		
		/*size = conversation.size();
		while(i<size)
		{
			System.out.println(" name , convertation is  "+ conversation.get(i).getFirstname()+" "+ conversation.get(i).getConversation_body());
			i++;
		}*/
		
		return SUCCESS;
	}


	@Override
	public MessageNameList getModel() {
		// TODO Auto-generated method stub
		return nm;
	}

}
