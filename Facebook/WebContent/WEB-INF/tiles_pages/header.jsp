<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
 <style>
 .dropdown-menu{
 	width: 420px;
 	min-height: 100px;
 	max-height: 400px;
 	overflow-y:auto;
 	 
 }
 .notification_items{
 	min-height: 35px;
 	padding-left: 2%;
 	padding-bottom: 2%;
 	padding-top: 2%;
 }
 .notification_items:hover{
 	cursor: pointer;
 	background-color: #E9EAED;
 }
#notifications_count{
 	padding: 3px 2px;
 	font-size: 11px;
 	margin-left: -10px;
 }
 #searchlistid{
 	padding: .5%;
 }
 #searchlistid:HOVER{
 	cursor: pointer;
 	background-color: #E9EAED;
 }
 </style>
<script>
$(document).ready(function(){
	$.ajax({
		url: '/Facebook/module06/loadNotifications',
		type: 'POST',
		success: function(data){
			$.each(data.notificationsList, function(index,value){
				var temp = '<a href="/Facebook/module06/loadSingleNotification?notificationType='+value.notificationType+'&uniqueId='+value.uniqueId+'"><li class="notification_items">'+'<img src="'+value.picture+'" height="50px" width="50px">&nbsp;&nbsp;'+value.notificationText+'</li></a>';
				temp += '<div style="height: 1px; width: 96%; background-color: #e3e3e3;"></div>';
				$("#notifications").append(temp);
				$("#notifications_count").html(index+1);
			});
			$("#notification_icon").attr('src','/Facebook/asset/images/noti_icon_2.png');
		}
	});
	$("#notification_icon").click(function(event){
		$("#notification_icon").attr('src','/Facebook/asset/images/noti_icon.png');
		$("#notifications_count").hide();
	});
	
// jquery for search friends.

	$("#searchId").keyup(function(){
		var nameToSearch=$("#searchId").val();
		$.ajax({
			
			url: '/Facebook/module02/searchAction?name='+nameToSearch,
			type:'POST',
			success: function(data){
				$("#search").empty();
				$.each(data.searchResult,function(index,value){
					var temp='<a href="/Facebook/module02/loadProfilePage?profileId='+value.profile_id+'&isFriend='+value.isFriend+'"><li id="searchlistid">'+'<img src='+value.friendprofilepic+' height="50px" width="50px" style="margin-left:1%;"> &nbsp;&nbsp;'+value.fname+' &nbsp;'+value.lname+'</li> </a>';
					
					$("#search").append(temp);
				});
				$("#searchForm").addClass("open");
			}
		});
	});
	
	$("#container").click(function(){
		$("#search").hide();
	});
	$("#searchId").click(function(){
		$("#search").show();
	});
});
</script>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">

			<a class="navbar-brand" href="/Facebook/module02/loadWall" style="padding-top: 24px;"><img
				src="/Facebook/asset/images/fb_logo.png" /></a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
			
				<li><a href="/Facebook/module02/gotoprofilepage" style="float:right; color: #9AA9C8; font-weight: bold;"><div style="height: 30px;width: 30px;float: left; border: 1px solid; border-color: rgb(71, 99, 158);"><img src="<s:property value="#session.user.getProfilePic()"  />" style="height: 30px;width: 30px; "></div>&nbsp;&nbsp;<div style=" color:white; height: 20px;width: 30px; float: right; font-size: 12px;"><s:property value="#session.user.getFname()"  /></div></a></li>
				<li><a href="/Facebook/module02/loadWall" style="color: white; font-size:12px; font-weight: bold;">Home</a></li>
			

				<li class="dropdown">
						<a href="#" style="padding-right: 0px;"class="dropdown-toggle" data-toggle="dropdown"> 
						<img src="/Facebook/asset/images/fr_icon.png" height="25px"width="30px" style="padding-right: 0px;" />
						</a>
					<ul class="dropdown-menu">
						<li>Test1</li>
					</ul>
				</li>


				<li class="dropdown">
						<a href="module01/messageclick"style="padding-left: 5px; padding-top: 35%;"class="dropdown-toggle" data-toggle="dropdown"> 
						<img src="/Facebook/asset/images/msg_ico.png" height="25px" width="27px" />
						</a>
					<ul class="dropdown-menu">
						<li>Test1</li>
					</ul>
				</li>


				<li class="dropdown">
					<a href="#" style="padding-left: 0px;" class="dropdown-toggle" data-toggle="dropdown"> 
						<img src="/Facebook/asset/images/noti_icon.png" id="notification_icon" height="25px" width="26px" />
							<sup><span class="badge alert-danger" id="notifications_count"></span></sup>
					</a>
					<ul class="dropdown-menu" id="notifications">
					</ul>
				</li>
					
				
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					 <img src="/Facebook/asset/images/wheel_icon.png" height="20px"width="20px">
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Settings</a></li>
						<li><a href="redirectLogin">Logout</a></li>
					</ul>
				</li>
			</ul>

			<form class="navbar-form navbar-left dropdown" id="searchForm">
				<input type="text" id="searchId" name="name" class="form-control"
					placeholder="Search for people.....">
					
						<ul class="dropdown-menu" id="search" style="width:540px; margin-left:-5%; ">
							
						</ul>
						
			</form>
		</div>
	</div>
</div>