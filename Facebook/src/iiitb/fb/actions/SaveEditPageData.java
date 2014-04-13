package iiitb.fb.actions;

import java.sql.SQLException;

import iiitb.fb.models.impl.EditProfileImpl;

public class SaveEditPageData {




 String workeducation_title;
 String description;
 String start_date;
 String end_date;

 public String getWorkeducation_title() {
	return workeducation_title;
}
public void setWorkeducation_title(String workeducation_title) {
	this.workeducation_title = workeducation_title;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getStart_date() {
	return start_date;
}
public void setStart_date(String start_date) {
	this.start_date = start_date;
}
public String getEnd_date() {
	return end_date;
}
public void setEnd_date(String end_date) {
	this.end_date = end_date;
}


public String execute() throws SQLException
{

EditProfileImpl pfimpl = new EditProfileImpl();


	
	System.out.println("hello");
  System.out.print(workeducation_title);

  pfimpl.getWorkEducationData(1);
  return "success";
}



}
