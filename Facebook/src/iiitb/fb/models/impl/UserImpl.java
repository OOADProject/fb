package iiitb.fb.models.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.User;

public class UserImpl{

	public boolean isValidUser(User user)//checking for valid user for registration. 
	{
		System.out.println(user.getGender());
		System.out.println(user.getBirthday());
		try {
		DatabaseConnect db=new DatabaseConnect();
		String query="select * from login where email='"+user.getEmail()+"'";
		ResultSet rs=db.getData(query);
			if(!rs.next())
			{
			return true;	
			}
			else
			{
			return false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	public int addUser(User user)
	{
		String loginid="";
		int pid=0;
		try {
		DatabaseConnect db=new DatabaseConnect();
		Date joindate=new Date();
		SimpleDateFormat ft=new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(ft.format(joindate));
		
		String query="insert into login (login_id,email,upass,join_date) values(default,'"+user.getEmail()+"','"+user.getPassword()+"','"+ft.format(joindate)+"')";
		db.updateData(query);
		String query1="select login_id from login where email='"+user.getEmail()+"'";
		ResultSet rs=db.getData(query1);
		
			while(rs.next())
			{
				loginid=rs.getString("login_id");	
			}
		String query2="insert into profile(profile_id,login_id,isactive,first_name,last_name,birthday,gender)"+"values(default,'"+loginid+"',1,'"+user.getFname()+"','"+user.getLname()+"','"+user.getBirthday()+"','"+user.getGender()+"')";	
		db.updateData(query2);
		
		String queryforpid="select profile_id from profile where login_id="+loginid;
		rs=db.getData(queryforpid);
			while(rs.next())
			{
				pid=rs.getInt("profile_id");
			}
		return pid;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pid;
	}
	
	public void addProfileInfo(User user)
	{
		String loginid="";
		try {
			DatabaseConnect db=new DatabaseConnect();
			String query="select login_id from login where email='"+user.getEmail()+"'";
			ResultSet rs=db.getData(query);

			while(rs.next())
			{
				loginid=rs.getString("login_id");	
			}
			int log_id=Integer.parseInt(loginid);
			
		//	String query1="insert into profile(hometown,current_city,high_school,college,company_name)"+"values('"+user.getHometown()+"','"+user.getCurrentcity()+"','"+user.getHighschool()+"','"+user.getCollege()+"','"+user.getCompanyname()+"') where login_id='"+log_id+"'";
			String query1="update profile set hometown='"+user.getHometown()+"',current_city='"+user.getCurrentcity()+"',high_school='"+user.getHighschool()+"',college='"+user.getCollege()+"',company_name='"+user.getCompanyname()+"' where login_id="+log_id;
			db.updateData(query1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public User loginCheck(User user)
	{
		try {
		String userpassword="";
		DatabaseConnect db=new DatabaseConnect();
		String query="select upass  from login where email='"+user.getUserName()+"'or uname='"+user.getUserName()+"'";
		ResultSet rs=db.getData(query);
		
			while(rs.next())
			{
				userpassword=rs.getString("upass");
			}
			if(userpassword.equals(user.getPassword()))
			{
				String q="select profile_id,first_name,last_name,profile_pic from profile where login_id=(select login_id from login where email='"+user.getUserName()+"'or uname='"+user.getUserName()+"' )";
				ResultSet rs1=db.getData(q);
				while(rs1.next())
				{
				user.setProfile_id(rs1.getInt("profile.profile_id"));
				user.setFname(rs1.getString("profile.first_name"));
				user.setLname(rs1.getString("profile.last_name"));
				user.setProfilePic(rs1.getString("profile.profile_pic"));
				}
				return user;
			}
			else
			{
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void addProfilepic(User user , String path)
	{
		try {
			DatabaseConnect db=new DatabaseConnect();
			String loginid="";
			String query="select login_id from login where email='"+user.getEmail()+"'";
			ResultSet rs=db.getData(query);

			while(rs.next())
			{
				loginid=rs.getString("login_id");
			}

			String query1="update profile set profile_pic='"+path+"' where login_id='"+loginid+"'";
			db.updateData(query1);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}