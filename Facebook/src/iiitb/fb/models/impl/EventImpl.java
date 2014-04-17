package iiitb.fb.models.impl;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.Event;
import iiitb.fb.models.Friend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class EventImpl {

	public ArrayList<ArrayList<Event>> showEventsList(int profile_id)	{

		ArrayList<Event> myEvents =new ArrayList<Event>();
		//ArrayList<ArrayList<Event>> datewiseEventList = new ArrayList<ArrayList<Event>>();
		ArrayList<Event> myallEvents =new ArrayList<Event>();
		ArrayList<ArrayList<Event>> allEventList = new ArrayList<ArrayList<Event>>();
		ArrayList<Event> onDate =null;
		Date eventDtTm ;
		//String datematch="";


		String now=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss").format(System.currentTimeMillis());
		System.out.println("current date " + now );


		DatabaseConnect dc=new DatabaseConnect();
		String getEventsQuery = "select e.* from event e,eventinvite ei where (e.profile_id="+profile_id+" or (ei.invite_id="+profile_id+" and ei.event_id=e.event_id)) and e.isBirthday=0 and e.event_date>='"+now+"'order by e.event_date";


		ResultSet eventset = dc.getData(getEventsQuery);
		try {
			while(eventset.next())
			{
				Event ev = new Event();
				eventDtTm=new Date();
				ev.setEventId(eventset.getInt("event_id"));
				eventDtTm=eventset.getTimestamp("event_date");
				ev.setEventDateHdr(new SimpleDateFormat("EEEE, MMMM dd yyyy").format(eventDtTm));
				ev.setEventTime(new SimpleDateFormat("HH:MM aa").format(eventDtTm));									
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

		/* Datewise arraylist of events for a given profile id */		

		/*	Iterator itr =myEvents.iterator();
		ArrayList<Event> datedEvents =new ArrayList<Event>();
		int count=1;
		while(itr.hasNext())
		{   Event tempObj = (Event)itr.next();
		if(count==1)
		{datematch=tempObj.getEventDateHdr();
		datedEvents.add(tempObj);
		//  System.out.println(tempObj.getEventTitle());
		count++; 

		}
		else if(datematch.equals(tempObj.getEventDateHdr()))
		{
			datedEvents.add(tempObj);
			//System.out.println(tempObj.getEventTitle());
		}
		else
		{
			datewiseEventList.add(datedEvents);
			datedEvents=new ArrayList<Event>();
			datematch=tempObj.getEventDateHdr();
			datedEvents.add(tempObj);

			//  System.out.println(tempObj.getEventTitle());

		}


		}
		if(datedEvents.size()!=0)
		{
			datewiseEventList.add(datedEvents);
		}


		for(int i=0;i<datewiseEventList.size() ; i++)
		{
			for(int j=0;j<datewiseEventList.get(i).size() ; j++)
				System.out.println(datewiseEventList.get(i).get(j).getEventTitle());
		}

		 */

		/*Sorted B'day list for a given profile id */

		class CustomComparator implements Comparator<Event> {
			@Override
			public int compare(Event o1, Event o2) {
				String bday1=new SimpleDateFormat("MM-dd").format(o1.getEventDate());
				String bday2=new SimpleDateFormat("MM-dd").format(o2.getEventDate());

				return bday1.compareTo(bday2);
			}
		}


		String getBdayQuery = "select * from event where profile_id="+profile_id+" and isBirthday=1";
		ArrayList< Event> bDayList=new ArrayList<Event>();
		ResultSet bDayset = dc.getData(getBdayQuery);
		try {
			while(bDayset.next())
			{
				Event ev = new Event();
				eventDtTm=new Date();
				eventDtTm=bDayset.getTimestamp("event_date");
				ev.setEventId(bDayset.getInt("event_id"));
				ev.setEventDateHdr(new SimpleDateFormat("MMMM dd").format(eventDtTm));
				ev.setEventTime(new SimpleDateFormat("HH:MM aa").format(eventDtTm));									
				ev.setEventId(bDayset.getInt("event_id"));
				ev.setEventTitle(bDayset.getString("event_title"));
				ev.setEventOwnerId(bDayset.getInt("profile_id"));
				ev.setDescription(bDayset.getString("description"));
				ev.setEventDate(bDayset.getTimestamp("event_date"));
				ev.setEvent_where(bDayset.getString("event_where"));
				ev.setEventStart(bDayset.getTimestamp("event_start"));
				ev.setEventEnd(bDayset.getTimestamp("event_end"));
				ev.setEventPhoto(bDayset.getString("event_photo"));
				ev.setIsBirthday(bDayset.getInt("isBirthday"));
				bDayList.add(ev);


			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		Collections.sort(bDayList, new CustomComparator());

		System.out.println("Birthdays");
		for(int i=0;i<bDayList.size() ; i++)
		{

			System.out.println(bDayList.get(i).getEventTitle() +" at " + bDayList.get(i).getEventDateHdr());
		} 


		/*Merge the list of b'day and other events on the basis of their dates*/
		int i=0,j=0 ;

		while(i<myEvents.size() && j<bDayList.size())
		{
			String eventdate=new SimpleDateFormat("MM-dd").format(myEvents.get(i).getEventDate());
			String bdaydate=new SimpleDateFormat("MM-dd").format(bDayList.get(j).getEventDate());

			if((eventdate.compareTo(bdaydate))<0)
			{
				myallEvents.add(myEvents.get(i));
				System.out.println("added "+myEvents.get(i).getEventTitle() + "on" + new SimpleDateFormat("MM-dd").format(myEvents.get(i).getEventDate()) );
				i++;
			}

			else if((eventdate.compareTo(bdaydate))==0)
			{
				myallEvents.add(myEvents.get(i));
				System.out.println("added "+myEvents.get(i).getEventTitle()+ "on" + new SimpleDateFormat("MM-dd").format(myEvents.get(i).getEventDate()));
				i++;

			}
			else if((eventdate.compareTo(bdaydate))>0)
			{
				myallEvents.add(bDayList.get(j));
				System.out.println("added "+bDayList.get(j).getEventTitle()+ "on" + new SimpleDateFormat("MM-dd").format(bDayList.get(j).getEventDate()));
				j++;
			}

		}


		if(i<myEvents.size())
		{
			for(int k=i;k<myEvents.size();k++)
			{myallEvents.add(myEvents.get(k));
			System.out.println("added "+ myEvents.get(k).getEventTitle()+"on " + new SimpleDateFormat("MM-dd").format(myEvents.get(k).getEventDate()));
			}
		}

		else if (j<bDayList.size())
		{
			for(int k=j;k<bDayList.size();k++)
			{	myallEvents.add(bDayList.get(k));
			System.out.println("added "+bDayList.get(k).getEventTitle() +"on" + new SimpleDateFormat("MM-dd").format(bDayList.get(k).getEventDate()));
			}


		}

		for(Event e: myallEvents)
		{
			System.out.println("event" + e.getEventTitle() + "date" +e.getEventDate());
		}


		int p=0;

		while(p< myallEvents.size())
		{   
			onDate=new ArrayList<Event>(); 
			String datecheck =new SimpleDateFormat("MM-dd").format(myallEvents.get(p).getEventDate());
			while(p< myallEvents.size() && datecheck.equals(new SimpleDateFormat("MM-dd").format(myallEvents.get(p).getEventDate())))
			{ 
				onDate.add(myallEvents.get(p));
				p++;
			}
			allEventList.add(onDate);

		}



		System.out.println("allEventList");

		for(int q=0;i<allEventList.size() ; i++)
		{
			System.out.println("sublist");
			for(int r=0;j<allEventList.get(q).size() ; j++)
				System.out.println(allEventList.get(q).get(r).getEventTitle());
		}




		return allEventList ;
	}

	public int addEvent(Event newEvent,String invited)	
	{
		DatabaseConnect dc=new DatabaseConnect();
		Connection connection = dc.getConnection();
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

		String getAddEventsQuery = "INSERT into event(profile_id,event_title,description,event_where,event_date,event_start,event_end,event_photo,isBirthday)" + "VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareStatement(getAddEventsQuery);
			ps.setInt(1,newEvent.getEventOwnerId());
			ps.setString(2,newEvent.getEventTitle());
			ps.setString(3,newEvent.getDescription());
			ps.setString(4,newEvent.getEvent_where());
			ps.setString(5,sdf.format(newEvent.getEventDate()));
			ps.setString(6,sdf.format(newEvent.getEventStart()));
			ps.setString(7,sdf.format(newEvent.getEventEnd()));
			ps.setString(8,newEvent.getEventPhoto());
			ps.setInt(9,newEvent.getIsBirthday());

			dc.updateData(ps);
			String queryId = "select last_insert_id()";
			ps = connection.prepareStatement(queryId);
			ResultSet rs = dc.getData(ps);

			int eventId=0;
			if(rs.next()){
				eventId =  rs.getInt("last_insert_id()");
			}

			addInvitedFriends(eventId,invited);
			return eventId;

		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;

		} 




	}



	/*.............................................................................
	 * 	Add invited friends to the invite table.								   *
	 ..............................................................................*/

	public boolean addInvitedFriends(int eventId,String invited)
	{
		DatabaseConnect dc=new DatabaseConnect();
		Connection  connection = dc.getConnection();
		for (String token : invited.split(","))
		{
			int inviteId = Integer.parseInt(token);
			String addInvitequery = "Insert into eventinvite(event_id,invite_id,status )" + "values(?,?,?)";
			try {
				PreparedStatement ps = connection.prepareStatement(addInvitequery);
				ps.setInt(1,eventId);
				ps.setInt(2, inviteId);
				ps.setString(3,"sent");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return true;
	}

	public boolean editEvent()	{
		return true ;
	}



	/*.........................................................................
	 * This function get the complete friendlist of the user to show in modal  *
	 ..........................................................................*/

	public void  inviteFriends(int profileId, ArrayList<Friend> friendlist)	{

		DatabaseConnect dc=new DatabaseConnect();
		String getfriendidQuery = "select friend_id from friends where profile_id='"+profileId+"'";


		ResultSet friendset = dc.getData(getfriendidQuery);
		try {
			while(friendset.next())
			{
				Friend fr=new Friend();
				fr.setProfile_id(friendset.getInt("friend_id"));
				String getfrienddetailQuery = "select first_name,last_name,profile_pic from profile where profile_id='"+fr.getProfile_id()+"'";
				ResultSet frienddetailset = dc.getData(getfrienddetailQuery);
				while(frienddetailset.next()){
					fr.setFriendprofilepic(frienddetailset.getString("profile_pic"));
					fr.setFname(frienddetailset.getString("first_name"));
					fr.setLname(frienddetailset.getString("last_name"));
				}

				friendlist.add(fr);

			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}


}

