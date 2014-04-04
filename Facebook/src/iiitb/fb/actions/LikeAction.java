package iiitb.fb.actions;

import java.text.SimpleDateFormat;
import java.util.Date;

import iiitb.fb.models.Like;
import iiitb.fb.models.impl.LikeImpl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LikeAction extends ActionSupport implements ModelDriven<Like>{

	private static final long serialVersionUID = -1366018989206881211L;
	Like l = new Like();
	
	public String likeWallPost(){
		LikeImpl li = new LikeImpl();
		//hardcoded
		l.setProfileId(1);
		l.setTimestamp(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		if(li.likeWallPost(l)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	@Override
	public Like getModel() {
		// TODO Auto-generated method stub
		return l;
	}
	
}
