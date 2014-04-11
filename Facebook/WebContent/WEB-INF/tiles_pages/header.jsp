<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="s" uri="/struts-tags"%>

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
			

				<li class="dropdown"><a href="#" style="padding-right: 0px;"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="/Facebook/asset/images/fr_icon.png" height="25px"
						width="30px" style="padding-right: 0px;" />
				</a>
					<ul class="dropdown-menu">
						<li>Test1</li>
					</ul></li>
				<li class="dropdown"><a href="module01/messageclick"
					style="padding-left: 5px; padding-top: 35%;"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="/Facebook/asset/images/msg_ico.png" height="25px"
						width="27px" />
				</a>
					<ul class="dropdown-menu">
						<li>Test1</li>
					</ul></li>
				<li class="dropdown"><a href="#" style="padding-left: 0px;"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="/Facebook/asset/images/noti_icon.png" height="25px"
						width="26px" />
				</a>
					<ul class="dropdown-menu">
						<li>Test1</li>
					</ul></li>
					
				
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <img
						src="/Facebook/asset/images/wheel_icon.png" height="20px"
						width="20px">
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">Settings</a></li>
						<li><a href="redirectLogin">Logout</a></li>
					</ul>

			</ul>

			<form class="navbar-form navbar-left">
				<input type="text" class="form-control"
					placeholder="Search for people..">
			</form>
		</div>
	</div>
</div>