package iiitb.fb.actions;

import iiitb.fb.models.UserLike;
import iiitb.fb.models.impl.WallPostImpl;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class LikeAjaxAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8264768548526244884L;
	private List<UserLike> likesList;
	private int wallPostId;
	public String getLikes(){
		WallPostImpl wi = new WallPostImpl();
		likesList = wi.getLikes(wallPostId);
		return SUCCESS;
	}
	public List<UserLike> getLikesList() {
		return likesList;
	}
	public void setLikesList(List<UserLike> likesList) {
		this.likesList = likesList;
	}
	public int getWallPostId() {
		return wallPostId;
	}
	public void setWallPostId(int wallPostId) {
		this.wallPostId = wallPostId;
	}
	
}
