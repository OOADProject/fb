package iiitb.fb.actions;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import iiitb.fb.models.*;
import iiitb.fb.models.impl.*;

public class MessageReplyAjaxAction  extends ActionSupport implements ModelDriven<MessageNameList>{

	MessageNameList nm = new MessageNameList();
	Message m=new Message();

	int conversation_id;
	
	ArrayList<MessageNameList> messageNames;
	
	List<MessageNameList> namelist=null ;
	MessagePageImpl mp = new MessagePageImpl();
	List<MessageNameList> conversation = null;
	String firstMessageName;
	int unreadMessages;
	
	ComposeImpl cm = new ComposeImpl();
	

	public int getConversation_id() {
		return conversation_id;
	}

	public void setConversation_id(int conversation_id) {
		this.conversation_id = conversation_id;
	}


	public String addConversation()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User)session.get("user");
		
		int profile_id = user.getProfile_id();

		System.out.println("in ajax fn conversation_body : "+ nm.getConversation_body());
		System.out.println("in ajax fn conversation_id : "+conversation_id);
		
		m.setMessage_body(nm.getConversation_body());
		m.setIsRead(0);
		m.setReceiver_id(conversation_id);
		m.setSender_id(profile_id);
		m.setTimestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		
		if(cm.sendReply(m))
		{
			System.out.println("in ajax fn and message is added to the db");
			Profile p = cm.getProfileInfo(profile_id);
			
			nm.setFirstname(p.getFirstName());
			nm.setLastname(p.getLastName());
			nm.setProfile_pic(p.getProfilePic());
			
					}	
		else
		{
			System.out.println("in ajax fn and message is NOT added to the db");
		}
		
		
		
		return SUCCESS;
	}
	
	public String updateList()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User)session.get("user");
		
		int profile_id = user.getProfile_id();

		messageNames = new ArrayList<MessageNameList>();
		
		namelist= new ArrayList<MessageNameList>();
		namelist = mp.getnames(profile_id);
		
		int size = namelist.size();
		int i=0;
		while(i<size){
			MessageNameList mnl = new MessageNameList();
			mnl.setFirstname(namelist.get(i).getFirstname());
			mnl.setLastname(namelist.get(i).getLastname());
			mnl.setProfile_pic(namelist.get(i).getProfile_pic());
			
			messageNames.add(mnl);
			i++;
			
		}
		
		return SUCCESS;
	}
	@Override
	public MessageNameList getModel() {
		// TODO Auto-generated method stub
		return nm;
	}
	
}
