package iiitb.fb.actions;

import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import iiitb.fb.models.Profile;
import iiitb.fb.models.WorkEducation;
import iiitb.fb.models.impl.EditProfileImpl;

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
    
	
	public String relationship;
	public String aboutme;
	public String favquote;
	
	WorkEducation weobj=new WorkEducation();
	

	public String geteducationdetails() throws SQLException{
		
		EditProfileImpl pfimpl= new EditProfileImpl();
		
		//Map<String,Object> session = ActionContext.getContext().getSession();
		//int profile_id=(Integer)session.get("profile_id");
		//int login_id= (Integer)session.get("login_id");
	
		listofeducationdetails=pfimpl.getWorkEducationData(1);
		relationship=pfimpl.getRelationshipStatus(1);
	    aboutme=pfimpl.getAboutMe(1);
		favquote=pfimpl.getFavQuote(1);
		listofplaceslived1=pfimpl.getPlacesLived(1);
		
		listofbasicinformation=pfimpl.getBasicContactInfo(1);
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

	
	
}
