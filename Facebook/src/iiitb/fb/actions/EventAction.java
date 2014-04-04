package iiitb.fb.actions;

import iiitb.fb.models.Event;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EventAction extends ActionSupport implements ModelDriven<Event> {



	public String showEventsList()	{
		return SUCCESS;
	}

	public String addEvent()	{
		return SUCCESS;
	}

	public String editEvent()	{
		return SUCCESS;
	}

	public String  inviteFriends()	{
		return SUCCESS;
	}

	public String showEventPage()	{


		return SUCCESS;


	}


	@Override
	public Event getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
