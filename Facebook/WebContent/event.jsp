<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
    <%@taglib prefix="sx" uri="/struts-dojo-tags" %>
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVENT</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="/Facebook/asset/js/jquery-1.9.1.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="/Facebook/asset/js/bootstrap-datepicker.js"></script>
<script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#example1').datepicker({
                    format: "dd/mm/yyyy"
                });  
            
            });
        </script>
        
 <script type="text/javascript">
var temp = '<form action="#">';
debugger;
var ajaxvar="nisha";
	$(document).ready(function(){
		$("#inviteBtn").click(function(event){
				$.ajax({
				url : "/Facebook/module05/loadFriendstoInvite",
				type: 'POST',
				success: function(data){
					var i=1;	
					$.each(data.friendlist, function(index, value){
						if(i%2!=0)						
						{temp += '<input type="checkbox" style="position:relative;float:left;"/>&nbsp;<img src="'+value.profile_pic+'" height="20px" width="20px" style="position:relative;float:left;"/><h5 style="position:relative;float:left;">'+value.fname+' '+value.lname+'</h5>';
						 i++;
						}
						else
						{   temp += '<input type="checkbox" style="position:relative;float:left;"/>&nbsp;<img src="'+value.profile_pic+'" height="20px" width="20px" style="position:relative;float:left;"/><h5 style="position:relative;float:left;">'+value.fname+' '+value.lname+'</h5></td>';
							i++;
						 				
							
						}
						});
					
					temp +='<button type="button" class="btn btn-primary" id="inviteSaveBtns">Save</button></form>';
					$("#invitemodal-body").append(temp);
					
				}
			});
		});
	});
</script>

<link rel="stylesheet" href="/Facebook/asset/css/datepicker.css">
 
 <link rel="stylesheet" type="text/css" href="/Facebook/asset/css/eventlist.css">

 <sx:head />

</head>
<body>
<div id="main-content">
<div class="main-header"> 
<span id="createEventBtn"><button class="btn btn-default btn-sm" data-toggle="modal" data-target="#mymodal" aria-hidden="true">
        <b> + Create Event</b>
        </button>
</span>
<h3>
<b>Events</b>
</h3>


</div>
<div class ="upcoming-events">
<div class="upcoming-events-header">
<h4>
 <b>Upcoming Events</b>
</h4>
</div>

</div>
<div class="all-eventslist">
 <s:iterator value="datewiseEventList" var="sublist">
<div class="event-row">
  <div class="event-header">
   <s:property value="eventDateHdr"/>
</div>
  <div class ="event-content">
<ul>
<s:iterator value="sublist" >
<s:if test="isBirthday==0">
<li>
<table  width="40%">

  <tr>
    <td rowspan="4" valign="top" width="20%"><s:property value="eventTime"/></td>
    <td rowspan="4"><a class="_8o _8t lfloat _ohe" href="" > <img class="event-img" src="<s:property value='eventPhoto'/>"/></a></td>
    <td ><s:property value="eventTitle"/></td>
  </tr>
  <tr>
    
    <td><s:property value="event_where"/></td>
  </tr>
 <tr>
    
    <td><s:property value="eventOwnerId"/></td>
  </tr>
 
 </table>
</li>
</s:if>

<s:else>

<a href="" > <img class="event-img" src="<s:property value='eventPhoto'/>"/></a>

</s:else>

</s:iterator>
</ul>
</div>
</div>
 </s:iterator>

</div>


       <div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header" style="background-color: #6d84b4;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Create Event</h4>
              </div>
              <div class="modal-body">
					<s:form name="createEvent" action="#">
						Name: &nbsp; &nbsp;<input type="text" placeholder="Ex. Birthday Party" /><br><br>
									Details:<br>
									 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <textarea rows="3" cols="50"placeholder="Add more info."></textarea><br><br>
								
									Where: &nbsp; &nbsp; <input type="text" value="" placeholder="Add a place." /><br><br>
								
							
									When:  &nbsp; &nbsp;<input  type="text" placeholder="click to show datepicker"  id="example1">  &nbsp; &nbsp;<input type="text" placeholder="Add a time." /><br>
								 
					</s:form>
					
					

</div>
					
				</div>
                
              </div>
              <div class="modal-footer">
              <span id="inviteBtn"><button class="btn btn-default btn-sm" data-toggle="modal" data-target="#invitemodal" aria-hidden="true">
       <span class="glyphicon glyphicon-envelope">
       </span>
       Invite Friend 
        </button>
</span>
                 <button type="button" class="btn btn-primary">Save</button>
                 <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
             </div>
            
            </div>
            					<div class="modal fade" id="invitemodal" tabindex="-1" role="dialog" aria-labelledby="inviteModalLabel" aria-hidden="true" >
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header" style="background-color: #6d84b4;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="inviteModalLabel">Invite Friends</h4>
              </div>
              <div id="invitemodal-body" class="modal-body">
					
					
					<!-- friends list with checkbox -->
					
					
					
					
				</div>
                
              </div>
             
            
            </div>
          </div>
          </div>



</body>
</html>