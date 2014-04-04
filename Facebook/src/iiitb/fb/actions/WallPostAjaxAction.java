package iiitb.fb.actions;

import java.text.SimpleDateFormat;
import java.util.Date;

import iiitb.fb.models.UserWallPost;
import iiitb.fb.models.WallPost;
import iiitb.fb.models.impl.WallPostImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class WallPostAjaxAction extends ActionSupport implements ModelDriven<UserWallPost>{

	private static final long serialVersionUID = 7692234736372795694L;
	UserWallPost uwp = new UserWallPost();
	public String addWallPost(){

		WallPostImpl wpi = new WallPostImpl();
		//hardcoded replace with session
		WallPost wp =new WallPost();
		wp.setPostFrom(1);
		wp.setPostTo(1);
		wp.setTimestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		wp.setWallPostText(uwp.getWallPostText());
		wp.setVisibility("Public");
		System.out.println(uwp.getWallPostText());
		
		int status = wpi.addWallPost(wp);
		if(status > 0){
			//hardcoded apply session
			uwp.setPostFromName("Prakash Kharche");
			uwp.setPostFrom(1);
			uwp.setWallPostText(wp.getWallPostText());
			uwp.setWallPostId(status);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}


	public UserWallPost getUwp() {
		return uwp;
	}

	public void setUwp(UserWallPost uwp) {
		this.uwp = uwp;
	}

	@Override
	public UserWallPost getModel() {
		// TODO Auto-generated method stub
		return uwp;
	}


}
