package iiitb.fb.models.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.UserComment;
import iiitb.fb.models.UserLike;
import iiitb.fb.models.UserWallPost;
import iiitb.fb.models.WallPost;

public class WallPostImpl {
	
	public int addWallPost(WallPost wp){
		DatabaseConnect dbc = new DatabaseConnect();
		Connection connection = dbc.getConnection();
		
		String query = "insert into wallpost (wallpost_id,post_from, post_to, wallpost_text, timestamp, visibility)"
				+ "values (default, ?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setInt(1, wp.getPostFrom());
			ps.setInt(2, wp.getPostTo());
			ps.setString(3, wp.getWallPostText());
			ps.setString(4, wp.getTimestamp());
			ps.setString(5, wp.getVisibility());
			
			dbc.updateData(ps);
			String queryId = "select last_insert_id()";
			ps = connection.prepareStatement(queryId);
			ResultSet rs = dbc.getData(ps);
			
			int wallPostId=0;
			if(rs.next()){
				wallPostId =  rs.getInt("last_insert_id()");
			}
			return wallPostId;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	
	public boolean deleteWallPost(WallPost wp){
		DatabaseConnect dbc = new DatabaseConnect();
		Connection connection = dbc.getConnection();
		String query = "delete from wallpost where wallpost_id = ?";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, wp.getWallPostId());
			dbc.updateData(ps);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public List<UserWallPost> getWallPosts(int profileId){
		DatabaseConnect dbc = new DatabaseConnect();
		Connection connection = dbc.getConnection();
		String query = "select * from (select w.*,p.profile_id,p.first_name,p.last_name,p.profile_pic from wallpost w left join profile p on p.profile_id=w.post_from) as temp, friends f"
				+ " where temp.post_from=? or f.profile_id=? and f.friend_id=temp.post_from order by temp.timestamp desc";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			//remove hardcoding from here
			ps.setInt(1, profileId);
			ps.setInt(2, profileId);
			
			ResultSet rs = dbc.getData(ps);
			List<UserWallPost> postsList = new ArrayList<UserWallPost>();
			while(rs.next()){
				UserWallPost uwp = new UserWallPost();
				uwp.setWallPostId(rs.getInt("wallpost_id"));
				uwp.setPostFrom(rs.getInt("post_from"));
				uwp.setPostFromName(rs.getString("first_name")+" "+rs.getString("last_name"));
				uwp.setPostFromPicture(rs.getString("profile_pic"));
				uwp.setPostTo(rs.getInt("post_to"));
				uwp.setTimestamp(rs.getString("timestamp"));
				uwp.setVisibility(rs.getString("visibility"));
				uwp.setWallPostText(rs.getString("wallpost_text"));
				uwp.setCommentsList(getComments(uwp.getWallPostId()));
				uwp.setLikesList(getLikes(uwp.getWallPostId()));
				postsList.add(uwp);
				
			}
			
			return postsList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	
	}
	//helper function to get likes of a particular post
	private List<UserLike> getLikes(int wallPostId) {
		// TODO Auto-generated method stub
		List<UserLike> likesList = new ArrayList<UserLike>();
		DatabaseConnect dbc = new DatabaseConnect();
		Connection connection = dbc.getConnection();
		String query = "select * from likes l, profile p where l.wallpost_id = ? and l.profile_id = p.profile_id";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, wallPostId);
			ResultSet rs = dbc.getData(ps);
			
			while(rs.next()){
				UserLike ul = new UserLike();
				ul.setFullName(rs.getString("first_name")+" "+rs.getString("last_name"));
				ul.setWallPostId(wallPostId);
				ul.setProfileId(rs.getInt("profile_id"));
				ul.setTimestamp(rs.getString("timestamp"));
				likesList.add(ul);
			}
			
			return likesList;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;

		}
	}
	//helper function to get comments of a particular posts
	private List<UserComment> getComments(int wallPostId) {
		// TODO Auto-generated method stub
		List<UserComment> commentsList = new ArrayList<UserComment>();
		DatabaseConnect dbc = new DatabaseConnect();
		Connection connection = dbc.getConnection();
		String query = "select * from comment c, profile p where c.wallpost_id=? and c.profile_id=p.profile_id";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, wallPostId);
			
			ResultSet rs = dbc.getData(ps);
			while(rs.next()){
				UserComment uc = new UserComment();
				uc.setCommentText(rs.getString("comment_text"));
				uc.setFullName(rs.getString("first_name")+" "+rs.getString("last_name"));
				uc.setProfileId(rs.getInt("profile_id"));
				uc.setProfilePicture(rs.getString("profile_pic"));
				uc.setTimestamp(rs.getString("timestamp"));
				uc.setVisibility(rs.getString("visibility"));
				uc.setWallPostId(wallPostId);
				commentsList.add(uc);
			}
			
			return commentsList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}


}