package iiitb.fb.models.impl;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.*;

public class UpdateFriendsCat {
	
DatabaseConnect dbconnect=new DatabaseConnect();

//Function to get all the categories of friends
public boolean	FetchFriendCatList(int pid,FriendsCat obj){
	ArrayList<String> category = new ArrayList<String>();
	ResultSet rs=dbconnect.getData("SELECT DISTINCT cat_name FROM friendscat WHERE PROFILE_ID='"+pid+"'");
	try {
		if(rs.next()){
			 category.add(rs.getString("cat_name"));	
		while (rs.next()){
			 category.add(rs.getString("cat_name"));
		     }
		obj.setCatList(category);
		return true;
	    }
		else{
		category.add("Close Friends");
		category.add("Family");
		obj.setCatList(category);
		int i=dbconnect.updateData("INSERT INTO friendscat (cat_name,profile_id,friends_profile_id) VALUES ('Close Friends','"+pid+"','"+0+"')");
		if(i>0) return true;
	}
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
return false;			
    }

//Function to get list of profile id belonging to input category
  public void FriendsListInCategory(String category,FriendsListCat obj,int pid){
	  ArrayList<Integer> friend = new ArrayList<Integer>();
		
		
		ResultSet rs=dbconnect.getData("SELECT friends_profile_id FROM friendscat WHERE PROFILE_ID='"+pid+"'"+"AND CAT_NAME='"+category+"'");
		
			try {
				if(rs.next()){
					 friend.add(rs.getInt("friends_profile_id"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			obj.setFriendsList(friend);
  }
  
 //Function to delete a given profile id from a given friend category
public int deleteFromCategory(int pid,int friendid,String category){
	int val=dbconnect.updateData("DELETE FROM friendscat WHERE PROFILE_ID='"+pid+"'"+"AND CAT_NAME='"+category+"'"+"AND friends_profile_id='"+friendid+"'");
    return val;
}

//Function to add a given profile id to a given friend category
public int addInCategory(int pid,int friendid,String category){
	int val=dbconnect.updateData("INSERT INTO friendscat (cat_name,profile_id,friends_profile_id) VALUES ('"+category+"','"+pid+"','"+friendid+"')");
    return val;

 }

}