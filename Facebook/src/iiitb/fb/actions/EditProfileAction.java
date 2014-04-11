package iiitb.fb.actions;

import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;



import java.util.Map;

import iiitb.fb.models.Profile;
import iiitb.fb.models.User;
import iiitb.fb.models.WorkEducation;
import iiitb.fb.models.impl.EditProfileImpl;
import iiitb.fb.models.impl.LoadProfileImpl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EditProfileAction extends  ActionSupport implements ModelDriven<WorkEducation> {

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	Profile pfobj= new Profile();
	private List<WorkEducation> listofeducationdetails = new ArrayList<WorkEducation>();
	private List<WorkEducation> listofplaceslived1 = new ArrayList<WorkEducation>();
	private List<WorkEducation> listofbasicinformation = new ArrayList<WorkEducation>();
    User user = new User();
	
	public String relationship;
	public String aboutme;
	public String favquote;
	
	WorkEducation weobj=new WorkEducation();
	

	public String geteducationdetails() throws SQLException{
		
		EditProfileImpl pfimpl= new EditProfileImpl();
		
		Map<String,Object> session = ActionContext.getContext().getSession();
		int profile_id=(Integer)session.get("currentProfile");
		//int login_id= (Integer)session.get("login_id");
		user = new LoadProfileImpl().getUser(profile_id);
		listofeducationdetails=pfimpl.getWorkEducationData(profile_id);
		relationship=pfimpl.getRelationshipStatus(profile_id);
	    aboutme=pfimpl.getAboutMe(profile_id);
		favquote=pfimpl.getFavQuote(profile_id);
		listofplaceslived1=pfimpl.getPlacesLived(profile_id);
		
		listofbasicinformation=pfimpl.getBasicContactInfo(profile_id);
		return SUCCESS;
		
	}
		 
	
	
	 
	
	@Override
	public WorkEducation getModel() {
		// TODO Auto-generated method stub
		return weobj;
	}



	



	public WorkEducation getWeobj() {
		return weobj;
	}



	public void setWeobj(WorkEducation weobj) {
		this.weobj = weobj;
	}



	public List<WorkEducation> getListofeducationdetails() {
		return listofeducationdetails;
	}

    

	public void setListofeducationdetails(List<WorkEducation> listofeducationdetails) {
		this.listofeducationdetails = listofeducationdetails;
	}





	public String getRelationship() {
		return relationship;
	}





	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}





	public String getAboutme() {
		return aboutme;
	}





	public void setAboutme(String aboutme) {
		this.aboutme = aboutme;
	}





	public String getFavquote() {
		return favquote;
	}





	public void setFavquote(String favquote) {
		this.favquote = favquote;
	}





	public List<WorkEducation> getListofplaceslived1() {
		return listofplaceslived1;
	}





	public void setListofplaceslived1(List<WorkEducation> listofplaceslived1) {
		this.listofplaceslived1 = listofplaceslived1;
	}





	public List<WorkEducation> getListofbasicinformation() {
		return listofbasicinformation;
	}





	public void setListofbasicinformation(List<WorkEducation> listofbasicinformation) {
		this.listofbasicinformation = listofbasicinformation;
	}





	public User getUser() {
		return user;
	}





	public void setUser(User user) {
		this.user = user;
	}

	
	
}
