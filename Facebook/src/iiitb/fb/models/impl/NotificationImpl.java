package iiitb.fb.models.impl;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.Notification;
import iiitb.fb.models.UserWallPost;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;


public class NotificationImpl {
	public List<Notification> loadNotifications(int profileId){
		List<Notification> notificationsList = new ArrayList<Notification>();
		
		notificationsList.addAll(getLikesNotifications(profileId));
		notificationsList.addAll(getCommentsNotification(profileId));
		//notificationsList.addAll(getPokes(profileId));
		notificationsList.addAll(getAcceptedFriendRequests(profileId));
		
		final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Collections.sort(notificationsList, new Comparator<Notification>() {

			@Override
			public int compare(Notification n1, Notification n2) {
				// TODO Auto-generated method stub
				
				try {
					return sdf.parse(n1.getTimestamp()).compareTo(sdf.parse(n2.getTimestamp()));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return 0;
				}
			}
			
		});
		Collections.reverse(notificationsList);
		return notificationsList;
	}



	//helper function to get likes
	private List<Notification> getLikesNotifications(int profileId){
		List<Notification> likesNotificationsList = new ArrayList<Notification>();
		DatabaseConnect dbc = new DatabaseConnect();
		//retrive the last read from notifications table 
		String lastRead = "2014-04-12 01:09:17";
		Connection connection = DatabaseConnect.getConnection();
		String query = "select p.first_name,p.last_name,p.profile_id,p.profile_pic,temp.wallpost_id,temp.timestamp from"
				+ " (select w.wallpost_id,l.profile_id,l.timestamp from wallpost w, likes l where w.post_from=? and w.wallpost_id=l.wallpost_id and l.profile_id!=? and l.timestamp>? order by l.timestamp desc) as temp, profile p"
				+ " where temp.profile_id=p.profile_id order by wallpost_id,timestamp desc;";
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, profileId);
			ps.setInt(2, profileId);
			ps.setString(3, lastRead);

			ResultSet rs = dbc.getData(ps);

			Notification n = null;
			int currentWallpost=0, listFlag=0;
			while(rs.next()){
				if(currentWallpost != rs.getInt("wallpost_id")){
					if(listFlag == 1){
						n.setNotificationText(n.getNotificationText()+" likes your wallpost");
						likesNotificationsList.add(n);
					}
					listFlag = 1;
					currentWallpost = rs.getInt("wallpost_id");
					n = new Notification();
					n.setNotificationType("Likes");
					n.setTimestamp(rs.getString("timestamp"));
					n.setPicture(rs.getString("profile_pic"));
					n.setUniqueId(currentWallpost);
					n.setNotificationText(new String());
				}

				n.setNotificationText(n.getNotificationText()+rs.getString("first_name")+" "+rs.getString("last_name")+",");
			}
			n.setNotificationText(n.getNotificationText()+" likes your wallpost");

			likesNotificationsList.add(n);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return likesNotificationsList;
	}
	
	//helper function to get comments
	private List<Notification> getCommentsNotification(int profileId){
		List<Notification> commentsNotificationsList = new ArrayList<Notification>();
		DatabaseConnect dbc = new DatabaseConnect();
		//retrive the last read from notifications table 
		String lastRead = "2014-04-12 01:09:17";
		Connection connection = DatabaseConnect.getConnection();
		String query = "select p.first_name,p.last_name,p.profile_id,p.profile_pic,temp.wallpost_id,temp.timestamp from"
				+ " (select w.wallpost_id,c.profile_id,c.timestamp from wallpost w, comment c where w.post_from=? and w.wallpost_id=c.wallpost_id and c.profile_id!=? and c.timestamp>? order by c.timestamp desc) as temp, profile p"
				+ " where temp.profile_id=p.profile_id order by wallpost_id,timestamp desc;";
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, profileId);
			ps.setInt(2, profileId);
			ps.setString(3, lastRead);

			ResultSet rs = dbc.getData(ps);

			Notification n = null;
			int currentWallpost=0, listFlag=0,lastCommented=0;
			while(rs.next()){

				if(currentWallpost != rs.getInt("wallpost_id")){
					if(listFlag == 1){
						n.setNotificationText(n.getNotificationText()+" commented on your wallpost");
						commentsNotificationsList.add(n);
					}
					listFlag = 1;
					currentWallpost = rs.getInt("wallpost_id");
					n = new Notification();
					n.setNotificationType("Comment");
					n.setTimestamp(rs.getString("timestamp"));
					n.setPicture(rs.getString("profile_pic"));
					n.setUniqueId(currentWallpost);
					n.setNotificationText(new String());
				}
				System.out.println(rs.getString("first_name")+rs.getString("last_name"));
				if(lastCommented != rs.getInt("profile_id")){
					n.setNotificationText(n.getNotificationText()+rs.getString("first_name")+" "+rs.getString("last_name")+",");
					lastCommented = rs.getInt("profile_id");

				}
			}
			n.setNotificationText(n.getNotificationText()+" commented on your wallpost");

			commentsNotificationsList.add(n);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return commentsNotificationsList;
	}
	
	//helper function to get accepted friend requests
	private List<Notification> getAcceptedFriendRequests(int profileId) {
		// TODO Auto-generated method stub
		List<Notification> friendsNotificationsList = new ArrayList<Notification>();
		DatabaseConnect dbc = new DatabaseConnect();
		//retrive the last read from notifications table 
		String lastRead = "2014-03-28 00:00:00";
		Connection connection = DatabaseConnect.getConnection();
		String query = "select p.profile_id,p.first_name,p.last_name,p.profile_pic,f.timestamp from friends f, profile p where"
				+ " f.profile_id=? and f.friend_id=p.profile_id and f.timestamp>? order by f.timestamp desc";
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, profileId);
			ps.setString(2, lastRead);

			ResultSet rs = dbc.getData(ps);

			while(rs.next()){
					Notification n = new Notification();
					n.setNotificationType("Friends");
					n.setTimestamp(rs.getString("timestamp"));
					n.setPicture(rs.getString("profile_pic"));
					n.setUniqueId(rs.getInt("profile_id"));
					n.setNotificationText("You and "+rs.getString("first_name")+" "+rs.getString("last_name")+" are now friends");
					friendsNotificationsList.add(n);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return friendsNotificationsList;
	}
	
	//helper functions to get pokes(have to define)
	private List<Notification> getPokes(int profileId) {
		// TODO Auto-generated method stub
		
		return null;
	}


}
