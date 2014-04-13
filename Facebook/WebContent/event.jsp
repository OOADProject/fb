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

<link rel="stylesheet" href="/Facebook/asset/css/datepicker.css">
 
 <link rel="stylesheet" type="text/css" href="/Facebook/asset/css/eventlist.css">

 <sx:head />

</head>
<body>
<div id="main-content">
<div class="main-header"> 
<span id="createEventBtn"><button class="btn btn-default btn-sm" data-toggle="modal" data-target="#mymodal">
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
<div class="event-row">
  <div class="event-header">
 Today
</div>
  <div class ="event-content">
<ul>
<li>

<table  width="40%">
 
  <tr>
    <td rowspan="4" valign="top" width="20%"> 1:00 pm</td>
    <td rowspan="4"><a class="_8o _8t lfloat _ohe" href="" > <img class="event-img" src="C:\Users\Nisha Basia\Desktop\happy_smiley-t2.jpg"/></a></td>
    <td >Event Name</td>
  </tr>
  <tr>
    
    <td>where</td>
  </tr>
 <tr>
    
    <td>Owner Name</th>
  </tr>
 <tr>
    
    <td><button class="btn btn-default btn-sm">
        <b> + Invite friends</b>
        </button></td>
  </tr>
</table>



</li>


<li>
<table>
<tr>
<td> B'day 1
</td>
<td> B'day 2
</td>

</tr>

</table>
</li>
</ul>


</div>
</div>


<div class ="event-row">
  <div class="event-header">
Next day
 
</div>
  <div class="event-content">
<ul>
<li>
<table>
<tr >
<td> 1st
</td>
<td> <a > img </a>
</td>

</tr>
</table>

</li>


<li>
<table>
<tr>
<td> B'day 1
</td>
<td> B'day 2
</td>

</tr>

</table>
</li>
</ul>




</div>
</div>
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
              <div class="modal-footer">
                 <button type="button" class="btn btn-primary">Save</button>
                 <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
             </div>
            
            </div>
          </div>
</div>
</body>
</html>