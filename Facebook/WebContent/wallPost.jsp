<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
<link href="/Facebook/asset/css/jquery.cssemoticons.css" media="screen" rel="stylesheet" type="text/css" />
<script src="/Facebook/asset/js/jquery.cssemoticons.js" type="text/javascript"></script>
<style type="text/css">
#side_menu {
	width: 23%;
	padding-left: 2%;
	position: relative;
	float: left;
}

#news_feeds_div {
	width: 76%;
	position: relative;
	float: right;
	height: 100%;
	padding-top: 2%;
	padding-left: 1%;
	padding-right: 1%;
}

#menu_items {
	font-size: 12px;
	font-weight: bold;
	padding-bottom: 3px;
	padding-top: 3px;
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
.comment_form{
		background-color: #F6F7F8;
	width: 100%;
	padding-left: 10px;
	min-height: 40px;
}
#full_name:hover {
	text-decoration: underline;
}

#like_comment_button {
	color: #6D84B4;
	font-size: 13px;
	font-stretch: narrower;
}

#like_comment_button:hover {
	text-decoration: underline;
}

.comments_div {
	background-color: #F6F7F8;
	width: 100%;
	border-top: 1px solid #e3e3e3;
}

#likes {
	padding-bottom: 1px;
}

#single_wallpost {
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
</style>
<script type="text/javascript">

</script>
<script type="text/javascript">
//for new wall post
	$(document).ready(function(){
		$(".text1").emoticonize();
		$(".comments_div").emoticonize();

		$(".comments_div").live("keypress",function(e) {
		    if(e.which == 13) {
		    	var f = $(this);
		    	var x = f.find('#comment_wp_text');
		    	var y = f.find('#comment_wp_id');
		    	var z = f.find("#comments_collection");
		    	$.ajax({
		    		type:'POST', 
					url:'/Facebook/module06/commentWallPost.action?wallPostId='+$(y).val()+"&commentText="+$(x).val(),
					success: function(data){
						var temp = '<div id="comment"><img src="/Facebook/asset/images/unknown.jpg" width="32px" height="32px" align="left" />'+
						'<a href="#" id="full_name_comment">&nbsp;&nbsp;'+data.fullName+'</a>&nbsp;'+
						'<font size="2.5">'+data.commentText+'</font> <br></div>';
						$(z).append(temp);
						$(x).val("");
						$(".comments_div").emoticonize();
					}
					
		    	});
		    }
		});

		$("#newButton").click(function(event){
			$.ajax({
				type:'POST',
				url:'/Facebook/module06/addWallPost.action?wallPostText='+$("#newWallPostText").val(),
				success:function(data){
						var temp = 	"<div id=\"single_wallpost\"><div id=\"wallpost_body\">";
						temp += "<a href=\"#\" id=\"full_name\"><img height=\"40px\" width=\"40px\" align=\"left\" src=\"/Facebook/asset/images/unknown.jpg\" /></a>";
						temp += "&nbsp;&nbsp;<a href=\"#\" id=\"full_name\">"+data.postFromName+"</a> <br>";
						temp += "<br> <br> <font size=\"2.7\"><div class=\"text1\">"+data.wallPostText+"</div></font> <br>";
						temp += "<a href=\"#\" id=\"like_comment_button\">Like</a>&nbsp;*&nbsp;<a href=\"#\" id=\"like_comment_button\">Comment</a></div>";
						temp += "<div class=\"comments_div\">";
						temp += "<div id=\"likes\">&nbsp;&nbsp;&nbsp;<img alt=\"Like\" src=\"/Facebook/asset/images/like_icon.png\" height=\"13\" width=\"15\"></div>";
						temp += '<center><div style="height: 1px; width: 96%; background-color: #e3e3e3; margin-bottom: 5px; margin-top: 5px;"></div></center>';
						temp += '<div id="comments_collection"></div><div class="comment_form">'+
						'<img src="/Facebook/asset/images/unknown.jpg" width="32px" height="32px" align="left" />&nbsp;&nbsp;'+
						'<input type="hidden" value='+data.wallPostId+' id="comment_wp_id"/>'+
						'<input style="height: 27px;" type="text" name="commentText" id="comment_wp_text" placeholder="Write a comment.." size="79" /></div>';
						temp += '</div>';
						$("#wallposts_collection").prepend(temp).children(':first').hide().fadeIn(1000);
						$("#newWallPostText").val("");
						$(".text1").emoticonize();

				}
				
				
			});
		});
	});
</script>
</head>
<body>
	<div id="side_menu">
		<br> <br> <br> <br>
		<h6 style="font-weight: bold; color: gray;">FAVORITES</h6>
		<p id="menu_items">
			<a href="#"><img src="/Facebook/asset/images/newsfeed.png"
				height="15px">&nbsp;&nbsp;News Feed</a><br>
		</p>


		<p id="menu_items">
			<a href="#"><img src="/Facebook/asset/images/messages.png"
				height="17px">&nbsp;&nbsp;Messages</a><br>
		</p>


		<p id="menu_items">
			<a href="#" id="menu_items"><img
				src="/Facebook/asset/images/events.png" height="15px">&nbsp;&nbsp;Events</a><br>
		</p>


		<p id="menu_items">
			<a href="#" id="menu_items"><img
				src="/Facebook/asset/images/photos.png" height="15px">&nbsp;&nbsp;Photos</a><br>
		</p>

	</div>

	<div id="news_feeds_div">
		<div id="single_wallpost">
			<img alt="error" style="margin-left: 2%;"
				src="/Facebook/asset/images/update_status.png" align="left"
				width="16px" height="16px">
			<p style="font-weight: bold; font-size: 13px;">&nbsp;Update
				Status</p>
			<center>
				<div
					style="height: 1px; width: 96%; background-color: #e3e3e3; margin-bottom: 5px; margin-top: 5px;"></div>
			</center>

				<input type="text" id="newWallPostText" size="84" placeholder="Whats on your mind?"
					required="true"
					style="border: 0px; height: 40px; margin-left: 2%; outline: none; overflow: visible;" /><br>
				<div
					style="padding-left: 86%; padding-top: 6px; padding-bottom: 6px; background-color: #F6F7F8; border-top: 1px solid #e3e3e3;">
					<button type="button" id="newButton" class="btn btn-xs btn-primary"
						style="background-color: #5973A8; padding-left: 20px; padding-right: 20px;">Post</button>
				</div>
		</div>
		<div id="wallposts_collection">
		<s:iterator value="wallPostsList">
			<div id="single_wallpost">
				<div id="wallpost_body">
					<a href="#" id="full_name"><img height="40px" width="40px" align="left" src="/Facebook/asset/images/unknown.jpg" /></a>
					 &nbsp;&nbsp;<a href="#" id="full_name"><s:property value="postFromName" /></a> <br>
					<br> <br> <font size="2.7"><div class="text1"><s:property value="wallPostText" /></div></font> <br> 
					<s:url id="url" action="likeWallPost">
						<s:param name="wallPostId"><s:property value="wallPostId"/>
						</s:param>
					</s:url>
					<s:a href="%{url}" id="like_comment_button">Like</s:a>&nbsp;*&nbsp;
					
					<a href="#" id="like_comment_button">Comment</a>
				</div>
				<div class="comments_div">
					<s:if test="%{likesList.size()!=0}">
						<div id="likes">
							&nbsp;&nbsp;<img alt="Like"
								src="/Facebook/asset/images/like_icon.png" height="13"
								width="15">

						</div>
					</s:if>
					<div id="likes">
						&nbsp;&nbsp;&nbsp;<img alt="Like"
							src="/Facebook/asset/images/like_icon.png" height="13" width="15">

					</div>
					<center>
						<div
							style="height: 1px; width: 96%; background-color: #e3e3e3; margin-bottom: 5px; margin-top: 5px;"></div>
					</center>
					<div id="comments_collection">

					<s:iterator value="commentsList">


						<div id="comment">
							<img src="/Facebook/asset/images/unknown.jpg" width="32px"
								height="32px" align="left" /><a href="#" id="full_name_comment">&nbsp;&nbsp;<s:property
									value="fullName" /></a>&nbsp;<font size="2.5"><s:property
									value="commentText" /></font> <br>
						</div>
					</s:iterator>
										</div>
					
						<div class="comment_form">
							<img src="/Facebook/asset/images/unknown.jpg" width="32px"
								height="32px" align="left" />&nbsp;&nbsp;
								<input type="hidden" value='<s:property value="wallPostId"/>' id="comment_wp_id"/>	
								<input style="height: 27px;" type="text" id="comment_wp_text" name="commentText"
								placeholder="Write a comment.." size="79" />
						</div>
				</div>
			</div>

		</s:iterator>
		</div>
	</div>

</body>
</html>