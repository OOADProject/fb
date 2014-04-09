<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/Facebook/asset/css/jquery.cssemoticons.css" media="screen" rel="stylesheet" type="text/css" />
<script src="/Facebook/asset/js/jquery.cssemoticons.js" type="text/javascript"></script>
<link href="/Facebook/asset/css/message.css" rel="stylesheet">


<script type="text/javascript">

$(document).ready(function(){
	
	$("#detailmsg").emoticonize();
	$("#reply").emoticonize();
	$("#reply").live("keypress",function(e) {
		if(e.which==13){
			var f = $(this);
			var x = f.find('#replytext');
			var y = f.find('#conversation_id');
			
			$.when(
			$.ajax({
				type:'POST', 
				url:'/Facebook/module01/replyMsg1.action?conversation_id='+$(y).val()+"&conversation_body="+$(x).val(),
				success: function(data){
					var temp =  ' <a href="#">&nbsp;&nbsp;&nbsp;&nbsp;<img src="'+data.profile_pic+'" align="left" />'+
								'&nbsp;<b>'+data.firstname+'&nbsp;'+data.lastname+'</b></a>'+
								'<br>&nbsp;&nbsp;&nbsp;&nbsp;'+data.conversation_body+'<br><br>';
								
								
								$("#detailmsg").append(temp);
								$("#detailmsg").animate({ scrollTop: $(document).height() }, "fast");
								$(x).val("");
								$("#detailmsg").emoticonize();
								
								
							
				}
			})).then( function(){
				 alert('strt');
		        $.ajax({
		        	type:'POST', 
					url:'/Facebook/module01/replyMsgListUpdate.action?conversation_id='+$(y).val(),
					success: function(data){
						for(MessageNameList in data ){
							
						}
						
					}
		        });
		        alert('all complete');
		        
		    });	
		}
	});


	
});
</script>

</head>
<body>

	<div id="container1">
		<div id="left">
			<div id="title">
				<a href="/Facebook/module01/inboxTitle">Inbox</a><span class="badge"><s:property value="unreadMessages"/></span>

			</div>
			<div id="messages">
				<ul class="nav nav-tabs nav-stacked affix-top" 
					data-offset-top="125">
					
					
					<s:iterator value="namelist">
					<input type="hidden" id="conversation_id" name="conversation_id" value="<s:property value="profile_id"/>"/>
					<li ><a href="conversation?conversation_id=<s:property value="profile_id"/>"><fieldset>
					<img src="<s:property value="profile_pic"/>" />&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="firstname"/>&nbsp;<s:property value="lastname"/>
							
						
					</fieldset></a></li>				
					</s:iterator>					
				</ul>
			</div>
		</div>

		<div id="middle">
			<div id="namenmsg">
				<div id="name">
					<a href="#"><h4><b><s:property value="firstMessageName"/></b></h4></a>

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
								<li><a href="deleteconversation?conversation_id=<s:property value="conversation_id"></s:property>"><font size="1">Delete
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
					&nbsp;&nbsp;&nbsp;&nbsp;<img src="<s:property value="profile_pic"/>" align="left" />&nbsp;<b><s:property value="firstname"/>&nbsp;<s:property value="lastname"/></b></a>
					<br>&nbsp;&nbsp;&nbsp;&nbsp;
					<s:property value="conversation_body"/><br><br>
					
					</fieldset>				
					</s:iterator>	

			</div>
			<div id="replyarea">
				<div id="reply">
					<form action="replyMsg" method="get">             <!-- send conversation_id to compose action and then based on both conv_id and profile_id store the msg and diplay chat -->
						<textarea rows="4" cols="82" name="message_body" id="replytext" placeholder="Write a reply..." ></textarea>
						<br><input type="hidden" name="conversation_id" id="conversation_id" value='<s:property value="conversation_id"/>'/>
						
						<button type="submit" id="replyBtn" class="btn btn-xs btn-primary ">Reply</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script>
	$("#detailmsg").animate({ scrollTop: $(document).height() }, "fast");
	 // return false;
	</script>
	
</body>
</html>