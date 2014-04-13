package iiitb.fb.models.impl;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.Event;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventImpl {
	
	public List<Event> showEventsList(int profile_id)	{
		
		List<Event> myEvents =new ArrayList<Event>();
		
		DatabaseConnect dc=new DatabaseConnect();
		String getEventsQuery = "select * from event where profile_id=1 order by event_date";
		ResultSet eventset = dc.getData(getEventsQuery);
		try {
			while(eventset.next())
			{
				Event ev = new Event();
				ev.setEventId(eventset.getInt("event_id"));
				ev.setEventTitle(eventset.getString("event_title"));
				ev.setEventOwnerId(eventset.getInt("profile_id"));
				ev.setDescription(eventset.getString("description"));
				ev.setEventDate(eventset.getTimestamp("event_date"));
				ev.setEvent_where(eventset.getString("event_where"));
				ev.setEventStart(eventset.getTimestamp("event_start"));
				ev.setEventEnd(eventset.getTimestamp("event_end"));
				ev.setEventPhoto(eventset.getString("event_photo"));
				ev.setIsBirthday(eventset.getInt("isBirthday"));
				myEvents.add(ev);			
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return myEvents ;
	}

	public boolean addEvent()	
	{
		
		
		
		return true ;
	}

	public boolean editEvent()	{
		return true ;
	}

	public boolean  inviteFriends()	{
		return true ;
	}

	public boolean showEventPage()	{
				return true;


	}

	
	

}
