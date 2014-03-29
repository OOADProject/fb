<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="/Facebook/asset/css/message.css" rel="stylesheet">

</head>
<body>

	<div id="container1">
		<div id="left">
			<div id="title">
				<a href="/Facebook/module01/inboxTitle">Inbox</a><span class="badge"><s:property value="unreadMessages"/></span>

			</div>
			<div id="messages">
				<ul class="nav nav-tabs nav-stacked affix-top" data-spy="affix"
					data-offset-top="125">
					
					
					<s:iterator value="namelist">
					<li ><fieldset><a href="conversation?conversation_id=<s:property value="profile_id"/>">
					<img src="<s:property value="profile_pic"/>" />&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="firstname"/>&nbsp;<s:property value="lastname"/>
										
						</a>
					</fieldset></li>				
					</s:iterator>					
				</ul>
			</div>
		</div>

		<div id="middle">
			<div id="namenmsg">
				<div id="name">
					<a href="#"><b><s:property value="firstMessageName"/></b></a>

				</div>
				<div id="newmsg">
				<form action="/Facebook/module01/newMessageButton" method="post">
					<div class="btn-group">
					
						<button type="submit" class="btn btn-xs btn-default">
							<span class="glyphicon glyphicon-plus"></span>&nbsp;New Message
						</button>
					
						<div class="btn-group">
							<button type="button"
								class="btn btn-xs btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span class="glyphicon glyphicon-asterisk"></span>&nbsp;Actions <span
									class="caret"></span>
							</button>
							<ul class="dropdown-menu dropdown-menu-right" role="menu">
								<li><a href="#"><font size="1">Delete Messages</font></a></li>
								<li><a href="#"><font size="1">Delete
											Conversation</font></a></li>
								<li><a href="#"><font size="1">Report Spam</font></a></li>
							</ul>
						</div>
						<button type="button"
							class="btn btn-xs btn-default dropdown-toggle"
							data-toggle="dropdown">
							<span class="glyphicon glyphicon-search"></span>&nbsp;
						</button>
							
					</div>
					</form>
				</div>
			
			</div>

			<div  id="detailmsg">
				
					<s:iterator value="conversation">
					<fieldset> <a href="#">                                  <!-- <a href="profile?profile_id=<s:property value="profile_id"/>"> -->
					&nbsp;&nbsp;&nbsp;&nbsp;<img src="<s:property value="profile_pic"/>" />&nbsp;<b><s:property value="firstname"/>&nbsp;<s:property value="lastname"/></b></a>
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<s:property value="conversation_body"/>
					
					</fieldset>				
					</s:iterator>	

			</div>
			<div id="replyarea">
				<div id="reply">
					<form>
						<textarea rows="4" cols="97" placeholder="Write a reply..."></textarea>
						<br>
						<button type="submit" class="btn btn-xs btn-primary ">Reply</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>