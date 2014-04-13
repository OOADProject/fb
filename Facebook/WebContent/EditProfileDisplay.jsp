
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page language="java" import="java.sql.*" errorPage="" %>

<script type="text/javascript" >
function showHide() {
    var ele = document.getElementById("form_workeducation");
    if(ele.style.display == "none") {
            ele.style.display = "block";
      }
    else {
        ele.style.display = "none";
    }
}
</script>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Profile Display </title>

<link rel="stylesheet" type="text/css" href="/Facebook/asset/css/ProfileDisplay.css">
</head>
<sx:head/>


<body>

<div id="container" style="  width:1200px;">

<div id="about">

<img src="/Facebook/asset/images/person_image.png"   width="30px" height="30px" style="padding-left:30px;padding-top:30px; float:left" /> 
<h2 class ="lable"><a href="C:/Users/Divya M/git/fb/Facebook/WebContent/Profile.html">About</a></h2>
<input type="button" value="Edit" class="button"/> 
</div>


<div id="leftdivision">

<div id="work_education">

<h3  class ="lable" > Work and Education</h3>
<input type="button"  class="button" value="Edit" onclick="showHide();" />

<div id="form_workeducation" style="display:none;">

<s:form  theme="simple" action="Call_To_SaveEditPageData">

<label class="formlable">Title</label> <td>
<s:textfield type="text" cssClass="textbox" name="workeducation_title"   value="Where you have worked?" />


<label  class="formlable">Position</label> 
<s:textfield type="text" cssClass="textbox" name="description"  value="short description.." />



<label class="formlable">Select From</label>
<s:textfield  type="text" name="start_date"  cssClass="textbox" displayFormat="dd-MMM-yyyy" value="When did you start working?"/>

<label class="formlable">Select To</label>
<s:textfield  name="end_date"  required="true" cssClass="textbox" displayFormat="dd-MMM-yyyy" value="When did you completed?"/>



<input type="submit"  class="addbutton" value="Add job"/>
<input type="submit"  class="cancelbutton" value="Cancel"/>

</s:form>
</div>



<s:iterator value="listofeducationdetails">
<h4  class="data" ><s:property value="workeducation_title"/> </h4>
<h6  class="description" ><s:property value="description"/> </h6>
</s:iterator>

</div>


<div id="relationship">

<h3 class ="lable"> Relationship</h3>
 <input type="button" value="Edit"  class="button" >

<img src="/Facebook/asset/images/placeholder-relationship.png" style="margin-left:-150px;margin-top:70px; float:left; width:40px ;height:60px;" /> 

<h4 style="float:left; margin-left: -80px;margin-top:90px; width:200px; color:blue;"><s:property value="relationship" /></h4>


</div>



<div id="aboutme">

<h3 class ="lable">About You</h3>
 <input type="button" value="Edit" class="button"/>
<h4 class="data"><s:property value="aboutme"/></h4>

</div>

<div id="favquote">
<h3 class ="lable">Favourite Quotations</h3>
<input type="button" value="Edit" class="button"/>
<h4 class="data">favquote</h4>

</div>

</div>




<div id="rightdivision">


<div id="placeslived">

<h3 class ="lable"> Places Lived</h3>
 <input type="button" class="button"  value="Edit"/>

<s:iterator value="listofplaceslived1">
<h4  class="data" ><s:property value="homeTown"/> </h4>
<h4  class="data" ><s:property value="currentCity"/> </h4>
</s:iterator>
</div>



<div id="basicinfo">

<h3 class ="lable">Basic Information</h3>
<input type="button"  class="button" value="Edit"/>

<s:iterator value="listofbasicinformation">
<h4  class="data" ><label>Birth Date</label><s:property value="birthday"/> </h4>
<h4  class="data" ><label>Languages Known</label><s:property value="languageKnown"/> </h4>
</s:iterator>

</div>



<div id="contactinfo">

<h3 class ="lable">Contact Information</h3>
 <input type="button"  class="button" value="Edit"/>

<h4 class="data">Email</h4>

<h4 class="data">PhoneNumber</h4>
</div>

</div>

</div>
</body>
</html> 



