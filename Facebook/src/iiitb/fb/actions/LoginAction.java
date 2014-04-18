package iiitb.fb.actions;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;

import iiitb.fb.models.User;
import iiitb.fb.models.impl.UserImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User>,SessionAware{

	private static final long serialVersionUID = -636653932093134244L;
	
	
	User user = new User();
	private String reemail;
	boolean flag;  // if flag==true ,then user is valid.
	String errorstatus;
	String loginerror;
	private int month;
	private int day;
	private int year;
	private ArrayList<String> yearList;
	private ArrayList<String> monthList;
	private ArrayList<String> dayList;
	Map<String, Object> session;
	String dbpathofimage;
	
	
	






	public LoginAction() {
		// TODO Auto-generated constructor stub
		yearList = new ArrayList<String>();
		monthList = new ArrayList<String>();
		dayList = new ArrayList<String>();
		yearList.add("Year");
		for(int i=2014 ; i>= 1905; i--){
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
	}

	

	
	
	
	
	public String registration() // For Registering new user.
	{
		UserImpl ui = new UserImpl();
		int pid;
		if(!(user.getEmail().equals(reemail)))
		{
			errorstatus="Entered email doesn't matches.";
			return ERROR;
		}
		getBirthDay();
		flag=ui.isValidUser(user);
		if(flag)
		{
			pid=ui.addUser(user); // To add user in databse.
			user.setProfile_id(pid);
			session.put("user", user);
			return SUCCESS;
		}
		else
		{
			errorstatus="Sorry, it looks like this E-mail belongs to an existing account.";
			return ERROR;
		}
	}
	
	public void getBirthDay()
	{
		user.setBirthday(year+"/"+month+"/"+day);
	}
	
	
	
	// for filling profile info for the first time.
	public String addProfileInfo()
	{
		User tempuser=new User();
		UserImpl ui = new UserImpl();
		tempuser=(User)session.get("user");
		user.setBirthday(tempuser.getBirthday());
		user.setEmail(tempuser.getEmail());
		user.setFname(tempuser.getFname());
		user.setGender(tempuser.getGender());
		user.setLname(tempuser.getLname());
		user.setPassword(tempuser.getPassword());
		user.setProfile_id(tempuser.getProfile_id());
		ui.addProfileInfo(user);
		session.put("user", user);
	 return SUCCESS;
	}
	
	public String addProfilePic()
	{
		System.out.println("PROFILE PIC");
		try {
			User tempuser=new User();
			tempuser=(User)session.get("user");
		String destpath="C:\\Users\\Dipesh\\git\\fb\\dip\\Facebook\\WebContent\\asset\\images\\profilepics\\";
		int picnm=tempuser.getProfile_id();
		String picname=Integer.toString(picnm);
		user.setMyFileFileName(picname+".jpg");
		File destfile=new File(destpath,user.getMyFileFileName());
		FileUtils.copyFile(user.getMyFile(), destfile);
		dbpathofimage="/Facebook/asset/images/profilepics/"+user.getMyFileFileName();
		user.setProfilePic(dbpathofimage);
		user.setBirthday(tempuser.getBirthday());
		user.setEmail(tempuser.getEmail());
		user.setFname(tempuser.getFname());
		user.setGender(tempuser.getGender());
		user.setLname(tempuser.getLname());
		user.setPassword(tempuser.getPassword());
		user.setProfile_id(tempuser.getProfile_id());
		user.setHighschool(tempuser.getHighschool());
		user.setHometown(tempuser.getHometown());
		user.setCollege(tempuser.getCollege());
		user.setCompanyname(tempuser.getCompanyname());
		user.setCurrentcity(tempuser.getCurrentcity());
		user.setHometown(tempuser.getHometown());
		UserImpl ui = new UserImpl();
		ui.addProfilepic(user,user.getProfilePic());
		User temp=ui.assignUserNameAndId(user);
		user.setUserName(temp.getUserName());
		user.setFbemail(temp.getFbemail());
		session.put("user", user);
		
		return SUCCESS;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ERROR;
	}
	
	
	
	
	
	public String addCoverPic()
	{
		System.out.println("HELLO");
		return SUCCESS;
	}
	
	
	
	
	
	// For Login
	public String login(){
		UserImpl ui = new UserImpl();
		user=ui.loginCheck(user);
		if(user==null)
		{
		loginerror="Username or password is not correct.";	
		System.out.println();
		return ERROR;	
		}
		else
		{
		session.put("user", user);
		return SUCCESS;
		}
	}







	@Override
	public User getModel() {
		return user;
	}

	
	public ArrayList<String> getYearList() {
		return yearList;
	}

	public void setYearList(ArrayList<String> yearList) {
		this.yearList = yearList;
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
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getReemail() {
		return reemail;
	}

	public void setReemail(String reemail) {
		this.reemail = reemail;
	}
	
	public String getErrorstatus() {
		return errorstatus;
	}


	public void setErrorstatus(String errorstatus) {
		this.errorstatus = errorstatus;
	}
	
	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	public String getLoginerror() {
		return loginerror;
	}

	public void setLoginerror(String loginerror) {
		this.loginerror = loginerror;
	}
	
	

	public String getDbpathofimage() {
		return dbpathofimage;
	}







	public void setDbpathofimage(String dbpathofimage) {
		this.dbpathofimage = dbpathofimage;
	}







	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}

	public Map<String, Object> getSession() {
		return session;
	}

}
