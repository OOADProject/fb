<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
<link href="/Facebook/asset/css/jquery.cssemoticons.css" media="screen"
	rel="stylesheet" type="text/css" />
<script src="/Facebook/asset/js/jquery.cssemoticons.js"
	type="text/javascript"></script>

<style type="text/css">

#side_menu {
	 width: 23%;
	padding-left: 2%;
	position: relative;
	float: left;
}

#news_feeds_div {
	width: 70%;
	position: relative;
	float: right;
	height: 100%;
	padding-top: 2%;
	padding-left: 1%;
}

#menu_items {
	font-size: 12px;
	font-weight: bold;
	padding-bottom: 3px;
}

#menu_items:hover {
	padding-bottom: 3px;
	padding-top: 3px;
	background-color: #DDDEE0;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
<style type="text/css">
#full_name {
	font-size: 13px;
	font-weight: bolder;
	color: #3B59A4;
}

#full_name_comment {
	font-size: 12px;
	font-weight: bolder;
	color: #3B59A4;
}

#comment {
	background-color: #F6F7F8;
	width: 100%;
	padding-left: 10px;
	min-height: 40px;
}

.comment_form {
	background-color: #F6F7F8;
	width: 100%;
	padding-left: 10px;
	min-height: 40px;
}

#full_name:hover {
	text-decoration: underline;
}

.like_comment_button {
	color: #6D84B4;
	font-size: 13px;
	font-stretch: narrower;
}

#comment_link:hover {
	text-decoration: underline;
	cursor: pointer;
}

#like_link:hover {
	text-decoration: underline;
	cursor: pointer;
}
#unlike_link:hover {
	text-decoration: underline;
	cursor: pointer;
}
.comments_div {
	background-color: #F6F7F8;
	width: 100%;
	border-top: 1px solid #e3e3e3;
}

#likes {
	padding-bottom: 1px;
}
.likes_others{
	color: #6D84B4;

}
.likes_others:hover{
	text-decoration: underline;
	cursor: pointer;
}
likes_list_others{
	   width: 600px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    background-color: #FFF;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 6px;
    outline: 0 none;
}
.single_wallpost {
	min-height: 20px;
	padding: 19px 0px 0px 0px;
	margin-bottom: 20px;
	background-color: white;
	border: 1px solid #e3e3e3;
	border-radius: 2px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05)
}

#wallpost_body {
	padding-left: 10px;
}

#myModal .modal-body{
	max-height: 500px;
	overflow-y: auto;

}
.modal-header{
	background-color: #F5F6F7;
}
</style>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	//for new wall post
	$(document).ready(
			function() {
					$(".text1").emoticonize();
					$(".comments_div").emoticonize();
					$(".comments_div").live("keypress",	function(e) {
									if (e.which == 13) {
										var f = $(this);
										var x = f.find('#comment_wp_text');
										var y = f.find('#comment_wp_id');
										var z = f.find("#comments_collection");
										$.ajax({
											type : 'POST',
											url : '/Facebook/module06/commentWallPost.action?wallPostId='+$(y).val()+ "&commentText="+ $(x).val(),
											success : function(data) {
														var temp = '<div id="comment"><img src=\'<s:property value="#session.user.getProfilePic()"/>\' width="32px" height="32px" align="left" />'
																		+ '<a href="#" id="full_name_comment">&nbsp;&nbsp;'
																		+ data.fullName
																		+ '</a>&nbsp;'
																		+ '<font size="2.5">'
																		+ data.commentText
																		+ '</font> <br></div>';
												$(z).append(temp);
												$(x).val("");
												$(".comments_div").emoticonize();
													}

											});
										}
								});

					$("#newButton").click(function(event){
								$.ajax({
									type : 'POST',
									url : '/Facebook/module06/addWallPost.action?wallPostText='+ $("#newWallPostText").val(),
									success : function(data) {
											var temp = "<div class=\"single_wallpost\"><div id=\"wallpost_body\">";
											temp += "<a href=\"#\" id=\"full_name\"><img height=\"40px\" width=\"40px\" align=\"left\" src="+data.postFromPicture+" /></a>";
											temp += "&nbsp;&nbsp;<a href=\"#\" id=\"full_name\">"
											+ data.postFromName+ "</a> <br>";
											temp += "<br> <br> <font size=\"2.7\"><div class=\"text1\">"
											+ data.wallPostText
											+ "</font> <br><br>";
											temp += '<div class="likes_container"><div class="like_comment_button" style="padding-bottom: 1%;">'+
											'<input type="hidden" value="'+data.wallPostId+'" id="like_wp_id" />';
											temp += '<div class="clickable" id="like_link" style="float: left;">Like</div>';
											temp += '<div id="intermediate" style="float: left;">&nbsp;*&nbsp;</div>';
											temp += '<div class="clickable" id="comment_link" style="float: left;">Comment</div></div>';
											temp +='<div id="likes" style="position: absolute; float: left; font-size: 12px; padding-top: 4%;">&nbsp;&nbsp;'+
											'<img alt="Like" src="/Facebook/asset/images/like_icon.png" height="13" width="15" id="like_image">';
											temp += 'like this</div></div></div></div><br>';
											temp +='<div class="comments_div"><br>';
											temp += '<center><div style="height: 1px; width: 96%; background-color: #e3e3e3; margin-bottom: 5px; margin-top: 5px;"></div></center>';
											temp += '<div id="comments_collection"></div><div class="comment_form">'
											+ '<img src=\'<s:property value="#session.user.getProfilePic()"/>\' width="32px" height="32px" align="left" />&nbsp;&nbsp;'
											+ '<input type="hidden" value='+data.wallPostId+' id="comment_wp_id"/>'
											+ '<input style="height: 27px;" type="text" name="commentText" id="comment_wp_text" placeholder="Write a comment.." size="79" /></div>';
											temp += '</div>';
											$("#wallposts_collection").prepend(temp).children(':first').hide().fadeIn(1000);
											$("#newWallPostText").val("");
											$(".text1").emoticonize();

														}

													});
										});
					});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		debugger;
		

			$("#comment_link").unbind();
			$("#wallposts_collection").on("click","#like_link",function(event) {
				debugger;
				var element = $(this).parents(".single_wallpost");
				var hiddenBox = element.find("#like_wp_id");
				var link = element.find("#like_link");
				var status = element.find("#like_image");
				
				
				$.ajax({
						type : 'POST',
						url : '/Facebook/module06/likePost.action?wallPostId='+$(hiddenBox).val(),
						success : function(data) {
										$(link).html("Unlike");
										$(link).attr('id','unlike_link');
										$(status).after("&nbsp;You");
										}
									});

				});
			
			$("#wallposts_collection").on("click","#unlike_link",function(event) {
				debugger;
				var element = $(this).parents(".single_wallpost");
				var hiddenBox = element.find("#like_wp_id");
				var link = element.find("#unlike_link");
				var status = element.find("#like_image");
				var likesDiv = element.find("#likes");
				var str = $(likesDiv).text().replace('You','');
				var img = element.find("#like_image");
				
				
				$.ajax({
						type : 'POST',
						url : '/Facebook/module06/unlikePost.action?wallPostId='+$(hiddenBox).val(),
						success : function(data) {
										
										$(link).html("Like");
										$(link).attr('id','like_link');
										//$(likesDiv).html(str);
										//$(likesDiv).prepend(img);
										//$(likesDiv).prepend("&nbsp;&nbsp;");
										}
									});
				var temp = "";
				debugger;
				$.ajax({
					type : 'POST',
					url : '/Facebook/module06/loadLikes.action?wallPostId='+$(hiddenBox).val(),
					success: function(data1){
						$.each(data1.likesList, function(index, value1){
							temp = temp + ',<a href="#" style="color:#6D84B4; ">'+value1.fullName+'</a>';
							alert(value1.fullName);
						});
						temp += " like this";
						$(likesDiv).html(temp);
						$(likesDiv).prepend(img);
						$(likesDiv).prepend("&nbsp;&nbsp;");
						
					}
				});

				});
				$(".single_wallpost").on("click","#comment_link",function(event) {
					debugger;
					var element = $(this).parents(".single_wallpost");
					var commentTextBox = element.find("#comment_wp_text");
					$(commentTextBox).focus();
				
					});
				});
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#wallposts_collection").on("click",".likes_others", function(e){
			debugger;

		/* 	var parent = $(this).parents("#wallposts_collection");
			var likesListDiv = parent.find("#likes_list_others"); */
			var parent1 = $(this).parents(".single_wallpost");
			var hiddenBox = parent1.find("#like_wp_id");
			var url = '/Facebook/module06/loadLikes.action?wallPostId='+$(hiddenBox).val();
			$("#likes_list_others").html("");
			$("#loader_likes").show();
			$("#loader_likes").delay(1000).hide(1);

			$.ajax({
				type : 'POST',
				url : url,
				success: function(data){
					var temp = "";

					
					 $.each(data.likesList, function(index, value){
						temp +='<s:url action="#" var="profileLink" escapeAmp="false"><s:param name="profileId">';
						temp += value.profileId;
						temp += '</s:param></s:url>';
						temp += '<s:a href="#"><img src="'+value.profilePic+'" height="50px" width="50px" style="float:left;position:relative;"></s:a>';
						temp += '&nbsp;&nbsp;<a href="#"><p style="font-weight:bold; width:50%;float:left;position:relative;">&nbsp;&nbsp;'+value.fullName+'</p></a>';
						temp += "<br><br><hr>";
						
					});

					 $("#likes_list_others").html(temp);
					
				}
			});
			


		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function(){
		
		$(".friendRequestId").click(function(e){
		debugger;
			$.ajax({
				url: '/Facebook/module02/friendRequest',
				type: 'POST',
				success: function(data){
					var temp='&nbsp;&nbsp;&nbsp;&nbsp;Friend Request sent.';
					temp+='<input id="cancelRequestButton" type="button" value="Cancel Friend Request" style="background-color: rgb(106, 167, 79); font-weight:bold;color: white; float:right;margin-right: 2%;">';
					$("#addFriendID").html(temp);
				}		
			});
			e.preventDefault();
		});
		
		$("#addFriendID").on("click","#cancelRequestButton",function(e){
			$.ajax({
				url: '/Facebook/module02/canclefriendRequest',
				type: 'POST',
				success: function(data){
					var temp='&nbsp;&nbsp;&nbsp;&nbsp;To see,what shares with friends,<a class="friendRequestId" href="#" style="color: rgb(59, 89, 152);">Send a friend request.</a>';
					temp+='<input class="friendRequestId" type="button" value="+1 Add Friend" style="background-color: rgb(106, 167, 79); font-weight:bold;color: white; float:right;margin-right: 2%;">';
					$("#addFriendID").html(temp);
				}
			});
		});
	
	});
</script>

</head>
<body>
<div style="height: 100px; width: 100%; border: 1px solid; border-color:rgb(211, 214, 219); background-color: white; font-size:12px; " >
		<div style="height:35px;width:100%; border: 1px solid; border-color:rgb(211, 214, 219); background-color: rgb(246, 247, 248)">
			<h5 style="font-weight: bold; color: rgb(106, 116, 128)">&nbsp;&nbsp;&nbsp;Do you Know <s:property value="user.fname" />?</h5>  
		</div>
		<br>
		<div id="addFriendID">
	<s:if test="%{isFriend == 0}">
	
	
		&nbsp;&nbsp;&nbsp;&nbsp;To see,what shares with friends,<a class="friendRequestId" href="#" style="color: rgb(59, 89, 152);">Send a friend request.</a>
		
		<input class="friendRequestId" type="button" value="+1 Add Friend" style="background-color: rgb(106, 167, 79); font-weight:bold;color: white; float:right;margin-right: 2%;">	
		
	</s:if>
	
	<s:if test="%{isFriend == 1}">
		&nbsp;&nbsp;&nbsp;&nbsp;You and <s:property value="user.fname"/> are Friends
	</s:if>
	
	<s:if test="%{isFriend == 2}">
		&nbsp;&nbsp;&nbsp;&nbsp;Friend Request sent to <s:property value="user.fname"/>
		<input id="cancelRequestButton" type="button" value="Cancel Friend Request" style="background-color: rgb(106, 167, 79); font-weight:bold;color: white; float:right;margin-right: 2%;">
	</s:if>
	
	</div>
		
	</div>
	<div id="side_menu">
	<!--  	<div
			style="height: 60px; width: 300px; margin-left: 0px; margin-top: 15%;">
			<img src='<s:property value="#session.user.getProfilePic()"/>'
				height="50px" width="50px" align="left" />&nbsp; 
				<s:url action="/Facebook/module02/gotoprofilepage" var="profileLink">
					<s:param name="profileId">
						<s:property value="#session.user.getProfile_id()"/>
					</s:param>
				</s:url>
				<s:a href="%{profileLink}"
				style="color: black; font-size: 12px; font-weight: bold;"><s:property
					value="#session.user.getFname()" />&nbsp;<s:property
					value="#session.user.getLname()" /></s:a> <br>&nbsp;&nbsp;
					<a href="#" style="font-size: 12px;">Edit Profile</a>
		</div>

		<h6 style="font-weight: bold; color: gray;">FAVORITES</h6>
		<p id="menu_items">
			<a href="/Facebook/module02/loadWall"><img
				src="/Facebook/asset/images/newsfeed.png" height="15px">&nbsp;&nbsp;News
				Feed</a><br>
		</p>


		<p id="menu_items">
			<a href="/Facebook/module01/messageclick"><img
				src="/Facebook/asset/images/messages.png" height="17px">&nbsp;&nbsp;Messages</a><br>
		</p>


		<p id="menu_items">
			<a href="/Facebook/module05/eventaction" id="menu_items"><img
				src="/Facebook/asset/images/events.png" height="15px">&nbsp;&nbsp;Events</a><br>
		</p>


		<p id="menu_items">
			<a href="#" id="menu_items"><img
				src="/Facebook/asset/images/photos.png" height="15px">&nbsp;&nbsp;Photos</a><br>
		</p>
	<a href="/Facebook/module07/display_frnd_cat_list"><h6 style="font-weight: bold; color: gray;">FRIENDS</h6></a>
	-->
	</div>

	<div id="news_feeds_div">
		<div class="single_wallpost">
			<img alt="error" style="margin-left: 2%;"
				src="/Facebook/asset/images/update_status.png" align="left"
				width="16px" height="16px">
			<p style="font-weight: bold; font-size: 13px;">&nbsp;Post</p>
			<center>
				<div
					style="height: 1px; width: 96%; background-color: #e3e3e3; margin-bottom: 5px; margin-top: 5px;"></div>
			</center>

			<input type="text" id="newWallPostText" size="84"
				placeholder="Whats on your mind?" required="true"
				style="border: 0px; height: 40px; margin-left: 2%; outline: none; overflow: visible;" /><br>
			<div
				style="padding-left: 86%; padding-top: 6px; padding-bottom: 6px; background-color: #F6F7F8; border-top: 1px solid #e3e3e3;">
				<button type="button" id="newButton" class="btn btn-xs btn-primary"
					style="background-color: #5973A8; padding-left: 20px; padding-right: 20px;">Post</button>
			</div>
		</div>
		<div id="wallposts_collection">
			<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    			<div class="modal-dialog">
      				<div class="modal-content">
					  <div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          					<h4 class="modal-title" id="myModalLabel">People Who Like This</h4>
        				</div>
        				<div id="loader_likes" style="background-color: #E9EAED;width: 100%;border: 1px solid #e3e3e3;">
         				 	<center><img src="/Facebook/asset/images/loader.gif" height="30px" ></center>
       					</div>
        				<div class="modal-body" id="likes_list_others">
        				
       					</div>
      				</div><!-- /.modal-content -->
   			 	</div><!-- /.modal-dialog -->
  			</div>
			<s:iterator value="wallPostsList">
				<div class="single_wallpost">
					<div id="wallpost_body">
							<s:url action="/Facebook/module02/loadProfilePage" var="profileLink">
								<s:param name="profileId">
									<s:property value="postFrom"/>
								</s:param>
							</s:url>
						<s:a href="%{profileLink}" id="full_name"><img height="40px" width="40px"
							align="left" src='<s:property value="postFromPicture"/>' /></s:a>
						&nbsp;&nbsp;
							<s:url action="/Facebook/module02/loadProfilePage" var="profileLink">
								<s:param name="profileId">
									<s:property value="postFrom"/>
								</s:param>
							</s:url>
						<s:a href="%{profileLink}" id="full_name"><s:property
								value="postFromName" /></s:a> <br> <br> <br> <font
							size="2.7"><div class="text1">
								<s:property value="wallPostText" />
							</div></font> <br>
							<div class="likes_container">
						<div class="like_comment_button" style="padding-bottom: 1%;">
							<input type="hidden" value='<s:property value="wallPostId"/>'
								id="like_wp_id" />
							<s:if test="%{isLiked == 0}">
								<div class="clickable" id="like_link" style="float: left;">Like</div>
							</s:if>
							<s:if test="%{isLiked == 1}">
								<div class="clickable" id="unlike_link" style="float: left;">Unlike</div>
							</s:if>
								<div id="intermediate" style="float: left;">&nbsp;*&nbsp;</div>
								<div class="clickable" id="comment_link" style="float: left;">Comment</div>
						</div>
													
						<div id="likes"
							style="position: absolute; float: left; font-size: 12px; padding-top: 4%;">
							&nbsp;&nbsp;<img alt="Like"
								src="/Facebook/asset/images/like_icon.png" height="13"
								width="15" id="like_image">
							<s:if test="%{likesList.size()!=0}">
								<s:iterator value="likesList" status="currentIndex">
									<s:if test="#currentIndex.index <= 0">
										<s:if test="%{isLiked == 1}">
											You
										</s:if>
										<s:if test="%{isLiked == 0}">
										<s:url action="/Facebook/module02/loadProfilePage" var="profileLink">
											<s:param name="profileId">
												<s:property value="profileId"/>
											</s:param>
										</s:url>
											,<s:a href="%{profileLink}" style="color:#6D84B4; "><s:property value="fullName"/></s:a>
										
										</s:if>
									</s:if>
									<!-- 
									<s:if test="#currentIndex.index > 2">
										and &nbsp;<a class="likes_others" href="#likes_list_others"><s:property value="likesList.size()-2"/>&nbsp; others</a>
											
									</s:if> -->
								</s:iterator>
							</s:if>
							<s:if test="likesList.size() > 1">
										and &nbsp;<a class="likes_others" href="#likes_list_others" data-toggle="modal" data-target="#myModal"><s:property value="likesList.size()-1"/>&nbsp; others</a>
								
							</s:if>
							<s:if test="%{likesList.size() == 0}">
								&nbsp;
							</s:if>
							
								like this
						</div>
					</div>
					</div>
					<br>


					<div class="comments_div">
						<br>
						<center>
							<div
								style="height: 1px; width: 96%; background-color: #e3e3e3; margin-bottom: 5px; margin-top: 5px;"></div>
						</center>
						<div id="comments_collection">

							<s:iterator value="commentsList">


								<div id="comment">
									<img src="<s:property value="profilePicture"/>" width="32px"
										height="32px" align="left" />
								<s:url action="/Facebook/module02/gotoprofilepage" var="profileLink">
									<s:param name="profileId">
										<s:property value="profileId"/>
									</s:param>
								</s:url>
										<s:a href="%{profileLink}"
										id="full_name_comment">&nbsp;&nbsp;<s:property
											value="fullName" /></s:a>&nbsp;<font size="2.5"><s:property
											value="commentText" /></font> <br>
								</div>
							</s:iterator>
						</div>

						<div class="comment_form">
							<img
								src='<s:property value="#session.user.getProfilePic()"/>'
								width="32px" height="32px" align="left" />&nbsp;&nbsp; <input
								type="hidden" value='<s:property value="wallPostId"/>'
								id="comment_wp_id" /> <input style="height: 27px;" type="text"
								id="comment_wp_text" name="commentText"
								placeholder="Write a comment.." size="70" />
						</div>
					</div>
				</div>

			</s:iterator>
		</div>
		
	</div>

</body>
</html>