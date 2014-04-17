//for new wall post
$(document).ready(
		function() {
			$(".text1").emoticonize();
			$(".comments_div").emoticonize();
			$(".comments_div").on("keypress",	function(e) {
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
					url : '/Facebook/module06/addWallPost.action?wallPostText='+ $("#newWallPostText").val()+'&eventId='+$("#event_id_hidden").val(),
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