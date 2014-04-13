package iiitb.fb.models.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.sql.Connection;
import java.sql.SQLException;

import iiitb.fb.database.DatabaseConnect;
import iiitb.fb.models.WorkEducation;

 
public class EditProfileImpl {

	//Function to get all the work eductation title and detail for Profile id

	
    ResultSet result1= null;
	
	Connection con = null; 

	private List<WorkEducation> listofeducationdetails=new ArrayList<WorkEducation>();
	



	public List<WorkEducation> getWorkEducationData(int pid) throws SQLException {
		// TODO Auto-generated method stub

		DatabaseConnect obj= new DatabaseConnect();   // object of database_connect
		
		
		con=obj.getConnection();   // establish the database connection 
		
		
		String edudata="  select distinct  workeducation_title,description from  workeducation  WHERE profile_id='"+pid+"'";
		
		
		
		ResultSet result1=obj.getData(edudata);   // get data
		
		
		
	
		while(result1.next())
		{
			
			    WorkEducation weobj1=new WorkEducation();
				weobj1.setWorkeducation_title(result1.getString("workeducation_title"));
				
				weobj1.setDescription(result1.getString("description"));
			
		        listofeducationdetails.add(weobj1);
		}
		
	
		

		
		return listofeducationdetails ;
	}




	public String getRelationshipStatus(int pid) {
		// TODO Auto-generated method stub
		
		String R_status="";
		try {
		DatabaseConnect obj= new DatabaseConnect();   // object of database_connect
   		
		
		con=obj.getConnection();   // establish the database connection 
		
		
		String data="  select relationship_status from profile  WHERE profile_id='"+pid+"'";
		
		
		
		ResultSet result=obj.getData(data);   // get data
		
		
			while(result.next())
			{
				R_status=result.getString("relationship_status");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		
		return R_status;
	}




	public String getAboutMe(int pid) {
		// TODO Auto-generated method stub
		
		String about_me="";
		try {
		DatabaseConnect obj= new DatabaseConnect();   // object of database_connect
   		
		
		con=obj.getConnection();   // establish the database connection 
		
		
		String aboutme="  select about_me from profile  WHERE profile_id='"+pid+"'";
		
		
		
		ResultSet result=obj.getData(aboutme);   // get data
		
		
			while(result.next())
			{
				about_me=result.getString("about_me");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		
		return about_me;
		
		
	
	}




	public String getFavQuote(int pid) {
		// TODO Auto-generated method stub
		String fav_quote="";
		try {
		DatabaseConnect obj= new DatabaseConnect();   // object of database_connect
   		
		
		con=obj.getConnection();   // establish the database connection 
		
		
		String data="  select fav_quote from profile  WHERE profile_id='"+pid+"'";
		
		
		
		ResultSet result=obj.getData(data);   // get data
		
		
			while(result.next())
			{
				fav_quote=result.getString("fav_quote");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		
		return fav_quote;
	}




	public List<WorkEducation>  getPlacesLived(int pid) throws SQLException {
		
		List<WorkEducation> listofplaceslived = new ArrayList<WorkEducation>();     
		

		DatabaseConnect obj= new DatabaseConnect();   // object of database_connect
		
		
		con=obj.getConnection();   // establish the database connection 
		
		
		String edudata="select hometown,current_city from profile  WHERE profile_id='"+pid+"'";
		
		
		
		ResultSet result1=obj.getData(edudata);   // get data
		
		System.out.print("data fethed");
		
	
	
		while(result1.next())
		{
			   WorkEducation weobj=new WorkEducation();
			
				weobj.setHomeTown(result1.getString("hometown"));
				//System.out.print(result1.getString("hometown"));
				
				weobj.setCurrentCity(result1.getString("current_city"));
				//System.out.print(result1.getString("current_city"));
				
		 listofplaceslived.add(weobj);
		}
		

		
		return listofplaceslived;
		
	}




	




	public List<WorkEducation> getBasicContactInfo(int pid) throws SQLException {
		// TODO Auto-generated method stub
		List<WorkEducation> listofbasicinformation = new ArrayList<WorkEducation>();
	    
		
			

		DatabaseConnect obj= new DatabaseConnect();   // object of database_connect
		
		
		con=obj.getConnection();   // establish the database connection 
		
		
		String edudata="select * from profile  WHERE profile_id='"+pid+"'";
		
		
		
		ResultSet result1=obj.getData(edudata);   // get data
		
		
	
	
		while(result1.next())
		{
			  
			WorkEducation weobj=new WorkEducation();
				weobj.setBirthday(result1.getString("birthday"));
				
				weobj.setLanguageKnown(result1.getString("language_known"));
				
				
				weobj.setInterestedIn(result1.getString("interested_in"));
				weobj.setReligiousView(result1.getString("religious_view"));
				weobj.setPoliticalView(result1.getString("political_view"));
				weobj.setGender(result1.getString("gender"));
				listofbasicinformation.add(weobj);
		}
		

		
		return listofbasicinformation;
	
	}

	










	
	

}
