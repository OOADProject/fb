package iiitb.fb.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import iiitb.fb.models.Event;
import iiitb.fb.models.impl.EventImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EventAction extends ActionSupport implements ModelDriven<Event> {

	//private List<Event> eventlist= new ArrayList<Event>() ;
	private ArrayList<ArrayList<Event>> datewiseEventList=null;

	public ArrayList<ArrayList<Event>> getDatewiseEventList() {
		return datewiseEventList;
	}

	public void setDatewiseEventList(ArrayList<ArrayList<Event>> datewiseEventList) {
		this.datewiseEventList = datewiseEventList;
	}

	

	public String showEventsList()	{
		
		datewiseEventList =new ArrayList<ArrayList<Event>>();
		EventImpl evimpl=new EventImpl();
		datewiseEventList=evimpl.showEventsList(1);	
				
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
