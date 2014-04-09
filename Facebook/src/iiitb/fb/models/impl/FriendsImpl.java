package iiitb.fb.models.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.Friend;
import iiitb.fb.models.User;

public class FriendsImpl {
	List<Friend> friendsid=new ArrayList<Friend>();
	
	public List<Friend> allFriends(User user)
	{
		Friend f=new Friend();
		int i=0;
		try {
		DatabaseConnect db=new DatabaseConnect();
		String query="select profile_id,fname,lname,profilepic from profile where profile_id=(select friend_id from friends where profile_id='"+user.getProfile_id()+"')";
		ResultSet rs=db.getData(query);
		while(rs.next())
			{
			f.setProfile_id(rs.getInt("profile_id"));
			f.setFname(rs.getString("fname"));
			f.setLname(rs.getString("lname"));
			f.setFriendprofilepic(rs.getString("profile_pic"));
			friendsid.add(i,f);
			i++;
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return friendsid;
	}
	
	
}
