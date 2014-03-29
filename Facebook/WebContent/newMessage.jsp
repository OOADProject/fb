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
				<a href="#">Inbox</a><span class="badge">4</span>

			</div>
			<div id="messages">
				<ul class="nav nav-tabs nav-stacked affix-top" data-spy="affix"
					data-offset-top="125">
					<li ><a href="#monu"><img
							src="/Facebook/asset/images/monika.png" />&nbsp;&nbsp;&nbsp;&nbsp;Monika
							Sharma&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>9:12 pm</small></a></li>
					<li><a href="#abc"><img src="/Facebook/asset/images/ashok.png" />&nbsp;&nbsp;&nbsp;&nbsp;Ashok
							Dhiman&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>7:48 pm</small></a></li>
					<li><a href="#ashu"><img src="/Facebook/asset/images/divya.png" />&nbsp;&nbsp;&nbsp;&nbsp;Divya
							Maharshi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>4:04 pm</small></a></li>
					<li><a href="#abc"><img src="/Facebook/asset/images/prakash.png" />&nbsp;&nbsp;&nbsp;&nbsp;Prakash
							Kharche&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small>11:37
								am</small></a></li>
					<li><a href="#monu"><img src="/Facebook/asset/images/nisha.png" />&nbsp;&nbsp;&nbsp;&nbsp;Nisha
							Basia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>08:41 am</small></a></li>
					<li><a href="#abc"><img src="/Facebook/asset/images/parush.png" />&nbsp;&nbsp;&nbsp;&nbsp;Parush
							Aggarwal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>Sat</small></a></li>
					<li><a href="#"><img src="/Facebook/asset/images/sanjana.png" />&nbsp;&nbsp;&nbsp;&nbsp;Sanjana
							Mehra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>Sat</small></a></li>
					<li><a href="#"><img src="/Facebook/asset/images/tuli.png" />&nbsp;&nbsp;&nbsp;&nbsp;Tuli
							Kundu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>fri</small></a></li>
					<li><a href="#"><img src="/Facebook/asset/images/vishal.png" />&nbsp;&nbsp;&nbsp;&nbsp;Vishal
							Sharma&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>fri</small></a></li>
					<li><a href="#"><img src="/Facebook/asset/images/prakash.png" />&nbsp;&nbsp;&nbsp;&nbsp;Prakash
							Kharche&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>thu</small></a></li>
					<li><a href="#"><img src="/Facebook/asset/images/prakash.png" />&nbsp;&nbsp;&nbsp;&nbsp;Prakash
							Kharche&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>thu</small></a></li>
					<li><a href="#"><img src="/Facebook/asset/images/prakash.png" />&nbsp;&nbsp;&nbsp;&nbsp;Prakash
							Kharche&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>wed</small></a></li>
					<li><a href="#"><img src="/Facebook/asset/images/prakash.png" />&nbsp;&nbsp;&nbsp;&nbsp;Prakash
							Kharchu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<small>mon</small></a></li>
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
						<button type="submit" class="btn btn-xs btn-primary ">Reply</button>
					
				</div>
			</div>
			</form>
		</div>
		
	</div>
</body>
</html>