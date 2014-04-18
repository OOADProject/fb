package iiitb.fb.models.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.Friend;
import iiitb.fb.models.User;

public class PeopleYouMayKnowImpl {

	List<Friend> PeopleList=new ArrayList<Friend>();
	/**
	 * @param user
	 * @return
	 */
	public List<Friend> getPeoples(User user)
	{
		try {
		DatabaseConnect db=new DatabaseConnect();
		String query="select profile_id,profile_pic,first_name,last_name from profile p where profile_id in(select f2.friend_id from (select profile_id,friend_id from friends where profile_id="+user.getProfile_id()+") as f1,friends as f2"
				+ " where((f1.friend_id=f2.profile_id) and (f2.friend_id!="+user.getProfile_id()+") and (f2.friend_id not in(select friend_id from friends where profile_id="+user.getProfile_id()+")  ))) limit 0,6";
		ResultSet rs=db.getData(query);
	
			while(rs.next())
			{
				Friend f=new Friend();
				f.setFname(rs.getString("first_name"));
				f.setLname(rs.getString("last_name"));
				f.setFriendprofilepic(rs.getString("profile_pic"));
				f.setProfile_id(rs.getInt("profile_id"));
				PeopleList.add(f);
			}
			return PeopleList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return PeopleList;
	}
	
}
