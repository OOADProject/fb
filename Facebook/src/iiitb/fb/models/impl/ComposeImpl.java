package iiitb.fb.models.impl;
 
import java.sql.ResultSet;

import iiitb.fb.models.*;
import iiitb.fb.database.*;

public class ComposeImpl {
	boolean res= false;
	
	public boolean sendMessage(Message m)
	{
		try
		{
			DatabaseConnect db = new DatabaseConnect();
			
			ResultSet rs = db.getData("select profile_id from profile where first_name = '"+m.getReceiver_name() +"' ");
			while(rs.next())
			{
				m.setReceiver_id(rs.getInt("profile_id"));
				System.out.println(" receiver id = "+ m.getReceiver_id());

			}
			db.updateData("INSERT into messages(sender_id,receiver_id,message_text,isread,timestamp) VALUES("+m.getSender_id()+","+m.getReceiver_id()+",'"+m.getMessage_body()+"',"+m.getIsRead()+",'"+m.getTimestamp()+"') ");
			res = true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean sendReply(Message m)
	{
		try
		{
			DatabaseConnect db = new DatabaseConnect();
			db.updateData("INSERT into messages(sender_id,receiver_id,message_text,isread,timestamp) VALUES("+m.getSender_id()+","+m.getReceiver_id()+",'"+m.getMessage_body()+"',"+m.getIsRead()+",'"+m.getTimestamp()+"') ");
			res = true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return res;
	}

}
