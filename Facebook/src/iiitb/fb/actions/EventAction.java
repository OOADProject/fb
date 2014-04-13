package iiitb.fb.actions;

import java.util.ArrayList;
import java.util.List;

import iiitb.fb.models.Event;
import iiitb.fb.models.impl.EventImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EventAction extends ActionSupport implements ModelDriven<Event> {

	private List<Event> evlist= new ArrayList<Event>() ;

	public List<Event> getEvlist() {
		return evlist;
	}

	public void setEvlist(List<Event> evlist) {
		this.evlist = evlist;
	}

	public String showEventsList()	{
		
		EventImpl evimpl=new EventImpl();
		evlist=evimpl.showEventsList(1);	
		
		
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
public String execute(){
	
	return SUCCESS;
}

	@Override
	public Event getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
