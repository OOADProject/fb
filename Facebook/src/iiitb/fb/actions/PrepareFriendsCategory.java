package iiitb.fb.actions;
import iiitb.fb.models.FriendsCat;
import iiitb.fb.models.impl.UpdateFriendsCat;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PrepareFriendsCategory extends ActionSupport implements ModelDriven<FriendsCat>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	FriendsCat obj=new FriendsCat();
		
	public String execute(){
		
		UpdateFriendsCat ufc=new UpdateFriendsCat();
		//Map<String,Object> session = ActionContext.getContext().getSession();
		//int logged_id=(Integer)session.get("profile_id");
		if(ufc.FetchFriendCatList(1, obj))
			return SUCCESS;
		else return ERROR;
		 
		 
	}
	
	
	
public FriendsCat getObj() {
		return obj;
	}

	public void setObj(FriendsCat obj) {
		this.obj = obj;
	}

@Override
public FriendsCat getModel() {
	// TODO Auto-generated method stub
	return obj;
  }

}