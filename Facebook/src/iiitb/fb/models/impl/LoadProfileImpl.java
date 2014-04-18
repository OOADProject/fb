package iiitb.fb.models.impl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.User;

public class LoadProfileImpl {

	User user=new User();
	/**
	 * @param pid
	 * @return
	 */
	public User getUser(int pid)
	{ 
		try {
		DatabaseConnect db=new DatabaseConnect();
		String query="select * from profile where profile_id ="+pid;
		ResultSet rs=db.getData(query);
		
			while(rs.next())
			{
			user.setBirthday(rs.getString("birthday"));
			user.setCollege(rs.getString("college"));
			user.setCompanyname(rs.getString("company_name"));
			user.setCurrentcity(rs.getString("current_city"));
			user.setFname(rs.getString("first_name"));
			user.setGender(rs.getString("gender"));
			user.setHighschool(rs.getString("high_school"));
			user.setHometown(rs.getString("hometown"));
			user.setLname(rs.getString("last_name"));
			user.setProfile_id(rs.getInt("profile_id"));
			user.setProfilePic(rs.getString("profile_pic"));
			
			}
	
		String query1="select * from login where login_id=(select login_id from profile where profile_id="+pid+" )";
		ResultSet rs1=db.getData(query1);
		while(rs1.next())
		{
			user.setEmail(rs1.getString("email"));
			user.setFbemail(rs1.getString("fb_email"));
			user.setUserName(rs1.getString("uname"));
		}
		System.out.println("i am here");
		return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;

		}
	}
	
	public int isFriend(int currentProfileId, int profile_id) {
		// TODO Auto-generated method stub
		try {
		DatabaseConnect dbc = new DatabaseConnect();
		
		String query = "select * from friends where profile_id="+profile_id+" and friend_id="+currentProfileId;
		ResultSet rs = dbc.getData(query);
			if(rs.next())
			{
				return 1;
			}
			else
			{
				String query1="select * from friendrequest where request_from="+profile_id+" and request_to="+currentProfileId;
				ResultSet rs1=dbc.getData(query1);
				if(rs1.next())
				{
					return 2;
				}
				else
				{
					return 0;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;

	}
	
	
	
}
