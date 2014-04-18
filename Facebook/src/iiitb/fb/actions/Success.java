package iiitb.fb.actions;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class Success extends ActionSupport{
	
	private static final long serialVersionUID = -4193421785406064309L;

	private ArrayList<String> yearList;
	private ArrayList<String> monthList;
	private ArrayList<String> dayList;
	

	
	public String execute(){
		yearList = new ArrayList<String>();
		monthList = new ArrayList<String>();
		dayList = new ArrayList<String>();
		yearList.add("Year");
		for(int i = 2014; i>= 1905; i--){
			String temp=Integer.toString(i);
			yearList.add(temp);
		}
		
		dayList.add("Day");
		for(int i=1;i<=31;i++)
		{
			String temp=Integer.toString(i);
			dayList.add(temp);
		}
		
		monthList.add("Month");
		for(int i=1;i<=12;i++)
		{
			String temp=String.valueOf(i);
			monthList.add(temp);
		}
		
		return SUCCESS;
	}
	
	public String profile()
	{
		return SUCCESS;
	}
	
	public String skipStep1()
	{
		return SUCCESS;
	}
	
	public String backToStep1()
	{
		return SUCCESS;
	}
	public String skipStep2()
	{
		return SUCCESS;
	}
	public String forgotPassword()
	{
		return SUCCESS;
	}
	
	
	
	public ArrayList<String> getMonthList() {
		return monthList;
	}
	
	public void setMonthList(ArrayList<String> monthList) {
		this.monthList = monthList;
	}

	public ArrayList<String> getDayList() {
		return dayList;
	}

	public void setDayList(ArrayList<String> dayList) {
		this.dayList = dayList;
	}

	public ArrayList<String> getYearList() {
		return yearList;
	}

	public void setYearList(ArrayList<String> yearList) {
		this.yearList = yearList;
	}

}
