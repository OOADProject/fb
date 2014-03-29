package iiitb.fb.actions;


import java.text.DateFormat;


import java.text.SimpleDateFormat;
import java.util.Date;

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
	
	public Message getM() {
		return m;
	}

	public void setM(Message m) {
		this.m = m;
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
