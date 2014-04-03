<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="/Facebook/asset/css/newMessage.css" rel="stylesheet">

</head>
<body>

	
	<div id="container1">
		<div id="left">
			<div id="title">
				<a href="#">Inbox</a><span class="badge"><s:property value="unreadMessages"/></span>

			</div>
			<div id="messages">
				<ul class="nav nav-tabs nav-stacked affix-top" 
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
		<form action="/Facebook/module01/newMsgSend">
		
			<div id="newMsgHeading">
			<h5>	<b>New Message</b></h5>
			</div>
			<div  id="detailmsg">
			<div id="to">
			To:&nbsp; <input type="text" name="receiver_name" placeholder="Name">
			</div>
			</div>
			<div id="replyarea">
				<div id="reply">
					
						<textarea name="message_body" rows="4" cols="97" placeholder="Write a message..."></textarea>
						<br>
						<button type="submit" class="btn btn-xs btn-primary ">Send </button>
					
				</div>
			</div>
			</form>
		</div>
		
	</div>
</body>
</html>