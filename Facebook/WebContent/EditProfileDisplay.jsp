
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page language="java" import="java.sql.*" errorPage=""%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Display</title>

<link rel="stylesheet" type="text/css"
	href="/Facebook/asset/css/ProfileDisplay.css">

<script type="text/javascript">
	function ShowWorkEducationForm()

	{
		var ele = document.getElementById("form_workeducation");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	function ShowRelationshipForm()

	{
		var ele = document.getElementById("form_relation");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	
	function AddRelationshipForm()

	{
		var ele = document.getElementById("form_addrelation");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	function ShowAboutmeForm() {
		var ele = document.getElementById("form_aboutme");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
    
	
	function AddAboutmeForm() {
		var ele = document.getElementById("form_addaboutme");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	function ShowFavquoteForm()

	{
		var ele = document.getElementById("form_favquote");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	
    function AddFavquoteForm()
    {

		var ele = document.getElementById("form_addfavquote");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
    	
    }
	function ShowHometownForm() {
		var ele = document.getElementById("form_hometown");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}

	}

	function AddHometownForm() {
		var ele = document.getElementById("form_addhometown");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}

	}

	function ShowCurrentcityForm() {
		var ele = document.getElementById("form_currentcity");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}

	}

	
	function AddCurrentcityForm() {
		var ele = document.getElementById("form_addcurrentcity");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}

	}
	function ShowLanguageForm() {

		var ele = document.getElementById("form_language");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}

	}

	function AddLanguageForm()
	{
		

		var ele = document.getElementById("form_addlanguage");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}

		
	}
	function ShowGenderForm() {

		
		var ele = document.getElementById("form_gender");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	function AddGenderForm()
	{
		

		var ele = document.getElementById("form_addgender");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
		
	}
	function ShowInterestedInForm() {

		var ele = document.getElementById("form_interestedin");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	

	function AddInterestedInForm()
	{
		
		var ele = document.getElementById("form_addinterestedin");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
		
	}
	
	function ShowReligiousViewForm() {

		var ele = document.getElementById("form_religiousview");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	function AddReligiousViewForm() {

		var ele = document.getElementById("form_addreligiousview");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	function ShowPoliticalViewForm() {

		var ele = document.getElementById("form_politicalview");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	
	function AddPoliticalViewForm() {

		var ele = document.getElementById("form_addpoliticalview");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	
	function ShowPhoneNoForm()
	{
		
		var ele = document.getElementById("form_phoneno");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
		
	}
	

	function AddPhoneNoForm()
	{
		
		var ele = document.getElementById("form_addphoneno");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
		
	}
	
	function ShowEmailIdForm()
	{
		
		var ele = document.getElementById("form_emailid");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
		
	}
	
	function AddEmailIdForm() 
	{
		
		var ele = document.getElementById("form_addemailid");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
		
	}
	
	//Ajax code

	function updateWork() {

		 alert($("#title").val());
		 alert($("#desc").val() );
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updatework.action?title='+ $("#title").val() +"&description=" +$("#desc").val() 
					+ "&startDate=" +$("#start_date").val() 
					+ "&endDate=" +$("#end_date").val()
					+ "&graduation=" +$("#graduation").val(),
		
					success : function(data) {

						$('#displaytitle').html(data.title);
						$('#displaydescription').html(data.description);
						$('#displaystartdate').html(data.startDate);
						$('#displayenddate').html(data.endDate);
						$('#displaygraduated').html(data.graduation);

					}
		
		});


		ShowWorkEducationForm();
	
	}

	function updateRelationshipStatus() {

		var id = document.getElementById("relationship_id");
		var status = id.options[id.selectedIndex].text;

		$.ajax({

					type : 'POST',
					url : '/Facebook/module03/updateRelationship.action?relationshipStatus='+ status,
					success : function(data) {

						$('#displaystatus').html(data.relationshipStatus);

					}

				});

		ShowRelationshipForm();
	}

	
function AddRelationshipStatus()
{
	
	var id = document.getElementById("addrelationship_id");
	var status = id.options[id.selectedIndex].text;

	$.ajax({

				type : 'POST',
				url : '/Facebook/module03/updateRelationship.action?relationshipStatus='+ status,
				success : function(data) {

					$('#adddisplaystatus').html(data.relationshipStatus);

				}

			});

	AddRelationshipForm();
	var ele = document.getElementById("displayaddrelationship");
	if (ele.style.display == "block") {
		ele.style.display = "none";
	} else {
		ele.style.display = "none";
	}
	
}
	function updateAboutMe() {

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateAboutMe.action?aboutMe='+ $("#aboutme_id").val(),
			success : function(data) {

				$('#displayaboutme').html(data.aboutMe);

			}

		});

		ShowAboutmeForm();
	}
	
	function AddAboutMe() {

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateAboutMe.action?aboutMe='+ $("#addaboutme_id").val(),
			success : function(data) {

				$('#adddisplayaboutme').html(data.aboutMe);

			}

		});

		AddAboutmeForm();
		var ele = document.getElementById("displayaddaboutme");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
			
	
	}
	
	
	

	function updateFavQuote() {

		//alert($("#favquote_id").val());	 

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateFavQuote.action?favQuote='	+ $("#favquote_id").val(),
			success : function(data) {

				$('#displayfavquote').html(data.favQuote);

			}

		});

		ShowFavquoteForm();
	}

	
	function AddFavQuote() {

		//alert($("#favquote_id").val());	 

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateFavQuote.action?favQuote='	+ $("#addfavquote_id").val(),
			success : function(data) {

				$('#adddisplayfavquote').html(data.favQuote);

			}

		});

		AddFavquoteForm();
		var ele = document.getElementById("displayaddfavquote");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
			
	}
	function UpdateHomeTown() {
		$.ajax({
			type : 'POST',
			url : '/Facebook/module03/updateHomeTown.action?homeTown='+ $("#hometown_id").val(),
			success : function(data) {

				$('#displayhometown').html(data.homeTown);

			}

		});

		ShowHometownForm();
	
	}

	
	function AddHomeTown() {
		$.ajax({
			type : 'POST',
			url : '/Facebook/module03/updateHomeTown.action?homeTown='+ $("#addhometown_id").val(),
			success : function(data) {

				$('#adddisplayhometown').html(data.homeTown);
				$('#editlinkhome').html("Edit");
				$('#deschome').html("homeTown");
			}

		});

		AddHometownForm();
		var ele = document.getElementById("displayaddhometown");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
		
	}

	
	function UpdateCurrentCity() {

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateCurrentCity.action?currentCity='+ $("#currentcity_id").val(),
			success : function(data) {

				$('#displaycurrentcity').html(data.currentCity);
			
			}

		});

		
		ShowCurrentcityForm();
		
	}	
	
	function AddCurrentCity() {

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateCurrentCity.action?currentCity='+ $("#addcurrentcity_id").val(),
			success : function(data) {

				$('#adddisplaycurrentcity').html(data.currentCity);
				$('#editlinkcity').html("Edit");
				$('#desccity').html("Current City");
			}

		});

		
	   AddCurrentcityForm();
		var ele = document.getElementById("displayaddcurrentcity");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	
	

	function updateLanguage() {
       
		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateLanguage.action?languageKnown='+$("#language_id").val(),
			success : function(data) {

				$('#displaylanguage').html(data.languageKnown);

			}

		});

		ShowLanguageForm();
	}
	
	
function AddLanguage() {
       
		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateLanguage.action?languageKnown='+$("#addlanguage_id").val(),
			success : function(data) {

				$('#adddisplaylanguage').html(data.languageKnown);
				$('#lablelanguage').html("Language Known :");
				$('#languageedit').html("Edit");
			}

		});

		AddLanguageForm();
		var ele = document.getElementById("displayaddlanguage");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	
	function updateGender() 
	{
		
		var id = document.getElementById("gender_id");
		var gender = id.options[id.selectedIndex].text;
		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateGender.action?gender='+ gender,
			success : function(data) {

				$('#displaygender').html(data.gender);

			}

		});

		ShowGenderForm();
	}

	
	function AddGender() 
	{
		
		var id = document.getElementById("addgender_id");
		var gender = id.options[id.selectedIndex].text;
		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateGender.action?gender='+ gender,
			success : function(data) {

				$('#adddisplaygender').html(data.gender);
				$('#genderlable').html("Add Gender");
				$('#genderedit').html("Edit");

			}

		});

		AddGenderForm();
		var ele = document.getElementById("displayaddgender");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}

	
	function updateInterestedIn() 
	{
		
		var id = document.getElementById("interestedin_id");
		var interest = id.options[id.selectedIndex].text;
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateInterestedIn.action?interestedIn='+ interest,
			success : function(data) {

				$('#displayinterestedin').html(data.interestedIn);

			}

		});

		ShowInterestedInForm();
	}
	
	function AddInterestedIn()
	{
		
		var id = document.getElementById("addinterestedin_id");
		var interest = id.options[id.selectedIndex].text;
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateInterestedIn.action?interestedIn='+ interest,
			success : function(data) {

				$('#adddisplayinterestedin').html(data.interestedIn);
				$('#interestlable').html("Interested In :");
				$('#interestedit').html("Edit");

			}

		});

		AddInterestedInForm();
		var ele = document.getElementById("displayaddinterestedin");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	
	function updateReligiousView() 
	{

		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateReligiousView.action?religiousView='+ $("#religiousview_id").val(),
			success : function(data) {

				$('#displayreligiousview').html(data.religiousView);

			}

		});

		ShowReligiousViewForm();
	}
	
	
	
	function AddReligiousView() 
	{

		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateReligiousView.action?religiousView='+ $("#addreligiousview_id").val(),
			success : function(data) {

				$('#adddisplayreligiousview').html(data.religiousView);
				$('#religiousviewlable').html("Add Religious View");
				$('#religiousviewedit').html("Edit");

			}

		});

		AddReligiousViewForm();
		
		var ele = document.getElementById("displayaddreligiousview");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	function updatePoliticalView() 
	{
		
		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updatePoliticalView.action?politicalView='+ $("#politicalview_id").val(),
			success : function(data) {

				$('#displaypoliticalview').html(data.politicalView);

			}

		});

		ShowPoliticalViewForm();
	}
	
	

	function  AddPoliticalView() 
	{
		
		
		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updatePoliticalView.action?politicalView='+ $("#addpoliticalview_id").val(),
			success : function(data) {

				$('#adddisplaypoliticalview').html(data.politicalView);
				$('#politicalviewlable').html("Political View :");
				$('#politicalviewedit').html("Edit");

			}

		});

		AddPoliticalViewForm();
		var ele = document.getElementById("displayaddpoliticalview");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	
	function updateEmailId()
	{

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateEmailId.action?email='+ $("#email_id").val(),
			success : function(data) {

				$('#displayemailid').html(data.email);

			}

		});

		ShowEmailIdForm();
		
	
	}
	
	function AddEmailId()
	{

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updateEmailId.action?email='+ $("#addemail_id").val(),
			success : function(data) {

				$('#adddisplayemailid').html(data.email);
				$('#emailidlable').html("Email Id :");
				$('#emailidedit').html("Edit");

			}

		});

		AddEmailIdForm();
		
		var ele = document.getElementById("displayaddemailid");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	
	function updatePhoneNo()
	{

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updatePhoneNo.action?phoneNo='+ $("#phoneno_id").val(),
			success : function(data) {

				$('#displayphoneno').html(data.phoneNo);

			}

		});

		ShowPhoneNoForm();
		
		
	}
	
	function AddPhoneNo()
	{

		$.ajax({

			type : 'POST',
			url : '/Facebook/module03/updatePhoneNo.action?phoneNo='+ $("#addphoneno_id").val(),
			success : function(data) {

				$('#adddisplayphoneno').html(data.phoneNo);
				$('#phonenolable').html("Phone No");
				$('#phonenoedit').html("Edit");

			}

		});

		AddPhoneNoForm();
		
		var ele = document.getElementById("displayaddphoneno");
		if (ele.style.display == "none") {
			ele.style.display = "block";
		} else {
			ele.style.display = "none";
		}
	}
	
	
	
	
	

	
</script>
<sx:head />
</head>


<body>

	<div id="container1">

		<div id="about">

			<img src="/Facebook/asset/images/person_image.png" width="30px"
				height="30px" style="padding-top: 30px; float: left" />
			<h2 class="lable">
				<a href="C:/Users/Divya M/git/fb/Facebook/WebContent/Profile.html">About</a>
			</h2>
			<input type="button" value="Edit" class="button" />
		</div>


		<div id="leftdivision">

			<div id="work_education">

				<h4 class="lable">Work and Education</h4>
				<input type="button" class="button" value="Edit"
					onclick="ShowWorkEducationForm();" />

				<div id="form_workeducation" style="display: none;">

					<s:form theme="simple">
						<table>
							<tr>
								<td><label class="formlable">Title</label></td>
								<td valign="bottom"><s:textfield type="text" size="35"
										name="workeducation_title" id="title"
										placeholder="Where you have worked?" /></td>
							</tr>

							<tr>
								<td><label class="formlable">Position</label></td>
								<td valign="bottom"><s:textfield type="text" size="35"
										name="description" id="desc" placeholder="short description.." /></td>
							</tr>

							<tr>
								<td><label class="formlable">Select From</label></td>
								<td valign="bottom"><s:textfield type="text" size="35"
										id="start_date" placeholder="Start Date.." /></td>

							</tr>
							<tr>
								<td><label class="formlable">Select To</label></td>
								<td valign="bottom"><s:textfield type="text" size="35"
										id="end_date" placeholder="End Date.." /></td>
								<!-- <sx:datetimepicker name="end" cssStyle="size:60px;" id="end_date" displayFormat="yyyy-MM-dd" /></td> -->

							</tr>

							<tr>
								<td><label class="formlable">Graduated</label></td>
								<td valign="bottom"><s:textfield type="text" size="35"
										id="graduation" placeholder="Graduation Date.." /></td>
								<!-- <sx:datetimepicker name="end" cssStyle="size:60px;" id="end_date" displayFormat="yyyy-MM-dd" /></td> -->

							</tr>

						</table>


						<input type="button" class="addbutton" value="Add job"
							onclick="updateWork()" />
						<input type="button" class="cancelbutton" value="Cancel"
							onclick="ShowWorkEducationForm();" />
					</s:form>

				</div>


				<div>
					<div style="float: left; width:100%;">
						<h5 class="data">
							<span id="displaytitle"></span>
						</h5>
					</div>

					<div style="float: left; width:100%;">
						<h6 class="description">
							<span id="displaydescription"></span>
						</h6>
					</div>

					<!--  <div style="float:left;"><h6 class="description">
					<span id="displaystartdate"><label style="color: rgb(102, 102, 102);"></label><s:property value="pfobj. getStartDate() " /></span>
				</h6></div>
				
				<div style="float:left;"><h6 class="description">
					<span id="displayenddate"><label style="color: rgb(102, 102, 102);"></label><s:property value="pfobj.getEndDate() " /></span>
				</h6></div>
				
				 <div style="float:left;"><h6 class="description">
					<span id="displaygraduated"><s:property value="pfobj.getGraduation() " /></span>
				</h6></div>-->
				</div>

				<!--  make div pass this id to temp  -->
				<s:iterator value="pfobj.getWorkexlist()">
					<h5 class="data">
						<s:property value="workeducation_title" />
					</h5>
					<h6 class="description">
						<s:property value="description" />
					</h6>
					<!--  <h6 class="description" style="float:left;"><label style="color: rgb(102, 102, 102);"> From :</label><s:property  value="start_date" /></h6>
					<h6 class="description" style="float:left;"><label style="color: rgb(102, 102, 102);"> To :</label><s:property value="end_date" /></h6>
					<h6 class="description"><s:property value="graduated" /></h6>-->
				</s:iterator>





			</div>


			<div id="relationship">

				<h4 class="lable">Relationship</h4>
				<input type="button" value="Edit" class="button"
					onclick="ShowRelationshipForm();">




				<!--  <img src="/Facebook/asset/images/placeholder-relationship.png"  class="imageclass"/> -->

				<div>
					<h5
						style="margin-left: 20px; float: left; width: 100%; color: #3b5998; font-weight: bold; font-size: 13px;">
						<span id="adddisplaystatus"></span>
					</h5>
				</div>

				<s:if
					test='%{! pfobj.getRelationshipStatus().equalsIgnoreCase("") }'>
					<h5
						style="margin-left: 20px; float: left; width: 100%; color: #3b5998; font-weight: bold; font-size: 13px;">
						<span id="displaystatus"> <s:property
								value="pfobj.getRelationshipStatus()" /></span>
					</h5>
				</s:if>
				<s:else>
					<div class="addhyperlink" style="margin-top: 20px;">
						<span id="displayaddrelationship"> <a
							onclick="AddRelationshipForm();">Add RelationShip Status</a></span>
					</div>

				</s:else>


				<div id="form_relation" style="display: none;">

					<label class="formlable"> Relationship Status </label> <select
						id="relationship_id" class="textbox">
						<option>Single</option>
						<option>In a Relation</option>
						<option>Engaged</option>
						<option>Married</option>
						<option>In a open Relationship</option>
						<option>It's Complicated</option>
						<option>Separated</option>
						<option>Divorced</option>
						<option>Widowed</option>
					</select> <input type="submit" class="addbutton" value="Save"
						onclick="updateRelationshipStatus();" /> <input type="submit"
						class="cancelbutton" value="Cancel"
						onclick="ShowRelationshipForm();" />
				</div>




				<div id="form_addrelation" style="display: none;">

					<label class="formlable"> Relationship Status </label> <select
						id="addrelationship_id" class="textbox">
						<option>Single</option>
						<option>In a Relation</option>
						<option>Engaged</option>
						<option>Married</option>
						<option>In a open Relationship</option>
						<option>It's Complicated</option>
						<option>Separated</option>
						<option>Divorced</option>
						<option>Widowed</option>
					</select> <input type="submit" class="addbutton" value="Save"
						onclick="AddRelationshipStatus();" /> <input type="submit"
						class="cancelbutton" value="Cancel"
						onclick="AddRelationshipForm();" />
				</div>





			</div>




			<div id="aboutme">

				<h4 class="lable">About You</h4>
				<input type="button" value="Edit" class="button"
					onclick="ShowAboutmeForm();" />

				<div>
					<h5 class="data">
						<span id="adddisplayaboutme"></span>
					</h5>
				</div>

				<s:if test='%{! pfobj.getAboutMe().equalsIgnoreCase("") }'>

					<div>
						<h5 class="data">
							<span id="displayaboutme"><s:property
									value="pfobj.getAboutMe()" /></span>
						</h5>
					</div>

				</s:if>

				<s:else>
					<div class="addhyperlink" style="margin-top: 20px;">
						<span id="displayaddaboutme"><a onclick="AddAboutmeForm();">Add
								About Yourself.</a></span>
					</div>
				</s:else>

				<div id="form_aboutme" style="display: none;">

					<label class="formlable">About You</label>
					<s:textfield type="text" size="35" id="aboutme_id" />

					<input type="submit" class="addbutton" value="Save"
						onclick="updateAboutMe()" /> <input type="submit"
						class="cancelbutton" value="Cancel" onclick="ShowAboutmeForm();" />
				</div>


				<div id="form_addaboutme" style="display: none;">


					<label class="formlable">About You</label>
					<s:textfield type="text" size="35" id="addaboutme_id" />

					<input type="submit" class="addbutton" value="Save"
						onclick="AddAboutMe()" /> <input type="submit"
						class="cancelbutton" value="Cancel" onclick="AddAboutmeForm();" />
				</div>

			</div>



			<div id="favquote">

				<h3 class="lable">Favourite Quotations</h3>
				<input type="button" value="Edit" class="button"
					onclick="ShowFavquoteForm();" />


				<div>
					<h5 class="data">
						<span id="adddisplayfavquote"></span>
					</h5>
				</div>

				<s:if test='%{! pfobj.getFavQuote().equalsIgnoreCase("") }'>
					<div>
						<h5 class="data">
							<span id="displayfavquote"><s:property
									value=" pfobj.getFavQuote()" /></span>
						</h5>
					</div>
				</s:if>

				<s:else>
					<div class="addhyperlink" style="margin-top: 20px;">
						<span id="displayaddfavquote"><a
							onclick="AddFavquoteForm();">Add Favourite Quotations.</a></span>
					</div>
				</s:else>

				<div id="form_favquote" style="display: none;">

					<label class="formlable">Favourite Quotation</label>
					<s:textfield type="text" size="35" id="favquote_id" />

					<input type="submit" class="addbutton" value="Save"
						onclick="updateFavQuote()" /> <input type="submit"
						class="cancelbutton" value="Cancel" onclick="ShowFavquoteForm();" />
				</div>



				<div id="form_addfavquote" style="display: none;">

					<label class="formlable">Favourite Quotation</label>
					<s:textfield type="text" size="35" id="addfavquote_id" />

					<input type="submit" class="addbutton" value="Save"
						onclick="AddFavQuote()" /> <input type="submit"
						class="cancelbutton" value="Cancel" onclick="AddFavquoteForm();" />
				</div>
			
			</div>

		</div>




		<div id="rightdivision">


			<div id="placeslived">

				<h4 class="lable">Places Lived</h4>
			
			
			    
				   <!--  code for added home town -->
				   <div id="addhometowndetails"  style="margin-top: 1px;">
			 
			        <h5 class="data"><span id="adddisplayhometown"  style="float: left"></span></h5>
			        <div class="hrefclass" style="float:right"> <a id="editlinkhome" onclick="ShowHometownForm();"></a></div>
		            <div><h6 class="description" id="deschome"></h6>
			       </div>        
			 	   </div>
				
				
		             <!-- code for updation -->		
				       <s:if test='%{!pfobj.getHomeTown().equalsIgnoreCase("")}'>
                        <div   style="margin-top:10px;">
					
						<h5 class="data">
							<span id="displayhometown"  style="float: left"><s:property value="pfobj.getHomeTown()" /></span>
						</h5>
						
						<div  class="hrefclass" style="float:right"> <a  onclick="ShowHometownForm();"> Edit</a></div>
						
						<div >
							<h6 class="description">HomeTown</h6>
						</div>
					</div>
				
		
				     <!-- code for checking empty value -->
				</s:if>
                <s:else>
					<div class="addhyperlink">
					<span id="displayaddhometown">	<a onclick="AddHometownForm();">Add HomeTown</a></span>
					</div>
				</s:else>
        
			<!-- update form -->
             <div id="form_hometown" style="display: none;">
					<label class="formlable"> Hometown</label>
					<s:textfield type="text" class="textbox" id="hometown_id" />
					<input type="button" class="addbutton" value="Save" onclick="UpdateHomeTown();" /> <input type="button"
						class="cancelbutton" value="Cancel" onclick="ShowHometownForm();" />
				</div>
        
            <!-- add hometown form -->
               <div id="form_addhometown" style="display: none;">
					<label class="formlable">Add Hometown</label>
					<s:textfield type="text" class="textbox" id="addhometown_id" />
					<input type="button" class="addbutton" value="Save" onclick="AddHomeTown();" /> <input type="button"
						class="cancelbutton" value="Cancel" onclick="AddHometownForm();" />
				</div>      





         <!--  code for currrent city -->

                       <div style="margin-top: 1px;">
						<h5 class="data"> <span id="adddisplaycurrentcity" style="float:left;"></span></h5>
                          <div class="hrefclass" style="float: right"> <a  id="editlinkcity"onclick="ShowCurrentcityForm();"></a></div>
						<div><h6 class="description"  id="desccity"></h6>
						</div>
					   </div>

				<s:if test='%{! pfobj.getCurrentCity().equalsIgnoreCase("") }'>
					<div style="margin-top: 10px;">
						<h5 class="data"> <span id="displaycurrentcity" style="float:left;"><s:property value="pfobj.getCurrentCity()" /></span></h5>
                          <div class="hrefclass" style="float: right">
							<a onclick="ShowCurrentcityForm();"> Edit</a>
						</div>
						<div>
							<h6 class="description">Current City</h6>
						</div>
					</div>


				</s:if>
				<s:else>
					<div class="addhyperlink" style="margin-top: 20px;">
						<span id="displayaddcurrentcity"><a onclick="AddCurrentcityForm();">Add CurrentCity</a></span>
					</div>

				</s:else>

				<div id="form_currentcity" style="display: none;">
					<label class="formlable">Currentcity</label>
					<s:textfield type="text" class="textbox" id="currentcity_id" />
					<input type="button" class="addbutton" value="Save"
						onclick="UpdateCurrentCity();" /> <input type="button"
						class="cancelbutton" value="Cancel"
						onclick="ShowCurrentcityForm();" />
				</div>


                <div id="form_addcurrentcity" style="display: none;">
					<label class="formlable">Add Currentcity</label>
					<s:textfield type="text" class="textbox" id="addcurrentcity_id" />
					<input type="button" class="addbutton" value="Save"
						onclick="AddCurrentCity();" /> <input type="button"
						class="cancelbutton" value="Cancel"
						onclick="AddCurrentcityForm();" />
				</div>


             <!-- Add Code Example -->




             
             
            

                
				
			</div>



			<div id="basicinfo">

				<h4 class="lable">Basic Information</h4>

				<div id="basicinfo_alignment">

					<s:if test='%{! pfobj.getBirthday().equalsIgnoreCase("") }'>
						<div>
							<div class="data" style="float: left;">
								<h6>
									<label style="color: rgb(102, 102, 102);">Birth Date :</label>
									<s:property value="pfobj.getBirthday()" />
								</h6>
							</div>
						</div>
					</s:if>
					<s:else>
						<div class="addhyperlink" style="margin-top: 0px;">
							<a onclick="ShowCurrentcityForm();">Add Birthdate</a>
						</div>
					</s:else>



                     
                    <div>
                    <div class="data" style="float: left;">
							<h6>
								<label id="lablelanguage" style="color: rgb(102, 102, 102);"></label>
								<span id="adddisplaylanguage" ></span>
							</h6>
					</div>
					
					<div class="hrefclass" style="float: right"> <a id="languageedit"onclick="ShowLanguageForm();"></a>
					</div>
					</div>
					<s:if test='%{! pfobj.getLanguageKnown().equalsIgnoreCase("") }'>
						<div class="data" style="float: left;">
							<h6>
								<label style="color: rgb(102, 102, 102);">Languages Known :</label>
								<span id="displaylanguage" ><s:property value="pfobj.getLanguageKnown()" /></span>
							</h6>
						</div>
						<div class="hrefclass" style="float: right"> <a onclick="ShowLanguageForm();"> Edit</a>
						</div>
					</s:if>
					<s:else>
						<div class="addhyperlink" style="margin-top: 0px;">
							<span id="displayaddlanguage"><a onclick="AddLanguageForm();">Add Languages</a></span>
						</div>
					</s:else>

					<!-- forms -->

					<div id="form_language" style="display: none;">

						<label class="formlable">Language</label>
						<s:textfield type="text" size="35" id="language_id" />

						<input type="submit" class="addbutton" value="Save"  onclick="updateLanguage()" />
							<input type="submit" class="cancelbutton" value="Cancel" onclick="ShowLanguageForm();" />
					</div>

                    <div id="form_addlanguage" style="display: none;">

						<label class="formlable">Language</label>
						<s:textfield type="text" size="35" id="addlanguage_id" />

						<input type="submit" class="addbutton" value="Save"  onclick="AddLanguage()" />
							<input type="submit" class="cancelbutton" value="Cancel" onclick="AddLanguageForm();" />
					</div>
                    
				



                    <div class="data" style="float: left;">
						<h6>
							<label  id="genderlable" style="color: rgb(102, 102, 102);"></label>
							<span id="adddisplaygender"></span>
						</h6>
					</div>
					<div class="hrefclass" style="float: right"> <a id="genderedit" onclick="ShowGenderForm();"></a>
					</div>

				<s:if test='%{! pfobj.getGender().equalsIgnoreCase("") }'>
					<div class="data" style="float: left;">
						<h6>
							<label style="color: rgb(102, 102, 102);">Gender :</label>
							<span id="displaygender"><s:property value="pfobj.getGender()" /></span>
						</h6>
					</div>
					<div class="hrefclass" style="float: right">
						<a onclick="ShowGenderForm();"> Edit</a>
					</div>
				</s:if>
				
				<s:else>
		       <div  id="displayaddgender"class="addhyperlink" style="margin-top: 0px;"> <a onclick="AddGenderForm();">Add Gender</a>
					</div>
				
				</s:else>


				<div id="form_gender" style="display: none;">

					<label class="formlable"> Gender </label> <select id="gender_id"
						class="textbox">
						<option>Male</option>
						<option>Female</option>
					</select> <input type="submit" class="addbutton" value="Save" onclick="updateGender()" /> 
						<input type="submit" class="cancelbutton" value="Cancel" onclick="ShowGenderForm();" />

				</div>


                <div id="form_addgender" style="display: none;">

					<label class="formlable"> Gender </label> <select id="addgender_id"
						class="textbox">
						<option>Male</option>
						<option>Female</option>
					</select> <input type="submit" class="addbutton" value="Save" onclick="AddGender()" /> 
						<input type="submit" class="cancelbutton" value="Cancel" onclick="AddGenderForm();" />

				</div>
                

				<!-- add interested -->
				
				<div class="data" style="float: left;">
						<h6>
							<label  id="interestlable" style="color: rgb(102, 102, 102);"></label>
						<span id="adddisplayinterestedin"></span>
						</h6>
					</div>
					<div class="hrefclass" style="float: right"><a id="interestedit" onclick="ShowInterestedInForm();"></a>
					</div>
				
				<s:if test='%{!pfobj.getInterestedIn().equalsIgnoreCase("") }'>
					<div class="data" style="float: left;">
						<h6>
							<label style="color: rgb(102, 102, 102);">Interested In:</label>
						<span id="displayinterestedin">	<s:property value="pfobj.getInterestedIn()" /></span>
						</h6>
					</div>
					<div class="hrefclass" style="float: right">
						<a onclick="ShowInterestedInForm();"> Edit</a>
					</div>
				</s:if>
				<s:else>
					<div class="addhyperlink" style="margin-top: 0px;">
				<span id="displayaddinterestedin">		<a onclick="AddInterestedInForm();">Add Interested In</a></span>
					</div>
				</s:else>


				<div id="form_interestedin" style="display: none;">

					<label class="formlable"> Interested In </label> <select
						id="interestedin_id" class="textbox">
						<option>Male</option>
						<option>Female</option>
					</select> <input type="submit" class="addbutton" value="Save"
						onclick="updateInterestedIn()" /> 
						<input type="submit" class="cancelbutton" value="Cancel"
						onclick="ShowInterestedInForm();" />

				</div>


                
				<div id="form_addinterestedin" style="display: none;">

					<label class="formlable"> Interested In </label> <select
						id="addinterestedin_id" class="textbox">
						<option>Male</option>
						<option>Female</option>
					</select> <input type="submit" class="addbutton" value="Save"
						onclick="AddInterestedIn()" /> 
						<input type="submit" class="cancelbutton" value="Cancel"
						onclick="AddInterestedInForm();" />

				</div>
                



              <div class="data" style="float: left;">
						<h6>
							<label  id="religiousviewlable" style="color: rgb(102, 102, 102);"></label>
							<span id= "adddisplayreligiousview"></span>
						</h6>
				</div>
					<div class="hrefclass" style="float:right"> <a id="religiousviewedit" onclick="ShowReligiousViewForm();"></a></div>
	         


				<s:if test='%{! pfobj.getReligiousView().equalsIgnoreCase("") }'>
					<div class="data" style="float: left;">
						<h6>
							<label style="color: rgb(102, 102, 102);">Religious
								View:</label>
							<span id= "displayreligiousview"><s:property value="pfobj.getReligiousView()" /></span>
						</h6>
					</div>
					<div class="hrefclass" style="float:right"> <a onclick="ShowReligiousViewForm();"> Edit</a></div>
				</s:if>

				<s:else>
					<div class="addhyperlink" style="margin-top: 0px;">
				<span id="displayaddreligiousview">	<a onclick="AddReligiousViewForm()">Add Religious Views</a></span>
					</div>
				</s:else>

				<div id="form_religiousview" style="display: none;">

					<label class="formlable">Religious Views</label>
					<s:textfield type="text" size="35" id="religiousview_id" />

					<input type="submit" class="addbutton" value="Save" onclick="updateReligiousView()" />
						<input type="submit" class="cancelbutton" value="Cancel" onclick="ShowReligiousViewForm();;" />
				</div>

               <div id="form_addreligiousview" style="display: none;">

					<label class="formlable">Religious Views</label>
					<s:textfield type="text" size="35" id="addreligiousview_id" />

					<input type="submit" class="addbutton" value="Save" onclick="AddReligiousView()" />
						<input type="submit" class="cancelbutton" value="Cancel" onclick="AddReligiousViewForm();;" />
				</div>
			







             <div class="data" style="float: left;">
					<h6>
						<label id="politicalviewlable" style="color: rgb(102, 102, 102);"></label>
						<span id="adddisplaypoliticalview"></span>
					</h6>
				</div>
				<div class="hrefclass" style="float: right">
					<a id="politicalviewedit" onclick="ShowPoliticalViewForm();"></a>
				</div>

			<s:if test='%{! pfobj.getPoliticalView().equalsIgnoreCase("") }'>
				<div class="data" style="float: left;">
					<h6>
						<label style="color: rgb(102, 102, 102);">Political View:</label>
						<span id="displaypoliticalview"><s:property value="pfobj.getPoliticalView()" /></span>
					</h6>
				</div>
				<div class="hrefclass" style="float: right">
				
					<a onclick="ShowPoliticalViewForm();"> Edit</a>
				</div>
			</s:if>
			
			<s:else>
				<div class="addhyperlink" style="margin-top: 0px;">
			<span id="displayaddpoliticalview">	<a onclick="AddPoliticalViewForm();">Add Political Views</a></span>
				</div>
			</s:else>

			<div id="form_politicalview" style="display: none;">

				<label class="formlable">Political Views</label>
				<s:textfield type="text" size="35" id="politicalview_id" />

				<input type="submit" class="addbutton" value="Save" onclick="updatePoliticalView()" /> 
					<input type="submit" class="cancelbutton" value="Cancel"
					onclick="ShowPoliticalViewForm();" />
			</div>
			
			
			
			<div id="form_addpoliticalview" style="display: none;">

				<label class="formlable">Political Views</label>
				<s:textfield type="text" size="35" id="addpoliticalview_id" />

				<input type="submit" class="addbutton" value="Save" onclick="AddPoliticalView()" /> 
					<input type="submit" class="cancelbutton" value="Cancel"
					onclick="AddPoliticalViewForm();" />
			</div>


		</div>
	</div>


			<div id="contactinfo">

				<h4 class="lable">Contact Information</h4>
              <div>
              <div class="data" style="float: left;">

				<h6>
					<label id="emailidlable" style="color: rgb(102, 102, 102);"></label>
					<span id="adddisplayemailid"></span>
				</h6>
				</div>
			
			<div class="hrefclass" style="float: right">
				<a id="emailidedit" onclick="ShowEmailIdForm();"></a>
			</div>
             </div>
             
			<s:if test='%{! pfobj.getEmail().equalsIgnoreCase("") }'>

				<div class="data" style="float: left;">
					<h6>
						<label style="color: rgb(102, 102, 102);">Email :</label> <span
							id="displayemailid"><s:property value="pfobj.getEmail()" /></span>
					</h6>
				</div>
				<div class="hrefclass" style="float: right">
					<a onclick="ShowEmailIdForm();"> Edit</a>
				</div>
			</s:if>
			<s:else>
				<div class="addhyperlink" style="margin-top: 0px;">
					<span id="displayaddemailid"> <a onclick="AddEmailIdForm();">Add Email Id</a></span>
				</div>
			</s:else>

			<div id="form_emailid" style="display: none;">

				<label class="formlable">Enter Email</label>
				<s:textfield type="text" size="35" id="email_id" />

				<input type="submit" class="addbutton" value="Save"
					onclick="updateEmailId()" /> <input type="submit"
					class="cancelbutton" value="Cancel" onclick="ShowEmailIdForm();" />
			</div>

			<div id="form_addemailid" style="display:none;">

				<label class="formlable">Enter Email</label>
				<s:textfield type="text" size="35" id="addemail_id" />

				<input type="submit" class="addbutton" value="Save"
					onclick="AddEmailId()" /> <input type="submit"
					class="cancelbutton" value="Cancel" onclick="AddEmailIdForm();" />
			</div>



			<div class="data" style="float: left;">
				<h6>
					<label id="phonenolable" style="color: rgb(102, 102, 102);"></label>
					<span id="adddisplayphoneno"></span>
				</h6>
			</div>
			<div class="hrefclass" style="float: right">
				<a id="phonenoedit" onclick="ShowPhoneNoForm();"></a>
			</div>


			<s:if test='%{! pfobj.getPhoneNo().equalsIgnoreCase("") }'>

				<div class="data" style="float: left;">
					<h6>
						<label style="color: rgb(102, 102, 102);">Phone No :</label> <span
							id="displayphoneno"><s:property
								value="pfobj.getPhoneNo()" /></span>
					</h6>
				</div>
				<div class="hrefclass" style="float: right">
					<a onclick="ShowPhoneNoForm();"> Edit</a>
				</div>
			</s:if>
			<s:else>
				<div class="addhyperlink" style="margin-top: 0px;">
					<span id="displayaddphoneno"> <a onclick="AddPhoneNoForm();">Add
							Phone No</a></span>
				</div>
			</s:else>

			<div id="form_phoneno" style="display: none;">

				<label class="formlable">Enter PhoneNo</label>
				<s:textfield type="text" size="35" id="phoneno_id" />

				<input type="submit" class="addbutton" value="Save"
					onclick="updatePhoneNo()" /> <input type="submit"
					class="cancelbutton" value="Cancel" onclick="ShowPhoneNoForm();" />
			</div>
			
			
			<div id="form_addphoneno" style="display: none;">

				<label class="formlable">Enter PhoneNo</label>
				<s:textfield type="text" size="35" id="addphoneno_id" />

				<input type="submit" class="addbutton" value="Save"
					onclick="AddPhoneNo()" /> <input type="submit"
					class="cancelbutton" value="Cancel" onclick="AddPhoneNoForm();" />
			</div>



		</div>

	</div>
</div>
</body>
</html>



