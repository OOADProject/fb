<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/Facebook/asset/js/jquery-2.1.0.js">
</script>
<script>
$(document).ready(function(){
	$("#changecoverid").hide();
	
	$("#coverdivid").mouseenter(function(){
		$("#changecoverid").show();	
		});
	
	$("#coverdivid").mouseleave(function(){
		$("#changecoverid").hide();	
	});
	
});
</script>
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.min.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.css.map" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.css.map" rel="stylesheet" />
<link href="/Facebook/asset/css/login_home.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
</head>
<body>
	<div id="coverdivid" style="height:320px;width:100%; margin-top:2%; position: relative; border:1px solid; border-color: rgb(211, 214, 219);">
		
	<a href="#" style="position: relative;z-index: 1;"> <img src="/Facebook/asset/images/profilepics/0.jpg"  style="height:320px;width:100%; position: relative;"></a>	
	<a href="/Facebook/module02/reloadprofile"><p style="position: absolute; z-index: 100; left: 190px; top:280px; font-weight: bold; color: white; font-size: 20px;"><s:property value="#session.user.getFname()"/>&nbsp;<s:property value="#session.user.getLname()"/></p></a>
	
	<input type="button" value="Update Info" style="background-color:rgb(251, 251, 252); position: absolute; font-size:12px; font-weight:bold; z-index: 100; left: 85%; bottom:3%;">
	

	<div id="changecoverid" style="font-size: 12px; font-weight: bold; height:7%; width:12%; border:1px solid; background-color:rgb(251, 251, 252);  color: ; margin-top:-15%;  margin-left: 85%; z-index: 100; position: absolute;">
				
					<input type="file" name="myFile" class="filestyle" data-input="false" id="filestyle-0" tabindex="-1" style="position: absolute; left: -9999px;" />
					
						<label for="filestyle-0" class="btn" style="margin-top: -6%; margin-left: -6%; font-size: 12px; font-weight:bold;" ><i class="icon-folder-open"></i> Change Cover
						
						</label>
					
			
	</div>
	

	
	
	<div style="position:absolute; top:0; ; z-index:2 ;  height:150px; width:150px; border:1px solid; margin-top:24%; margin-left:2%; border:1px solid; border-color: rgb(211, 214, 219); ">
		<a href="#"><img src='<s:property value="#session.user.getProfilePic()" />' style="height:148px; width: 148px;"></a>
	</div>

</div>


<nav class="navbar navbar-default" role="navigation">
      <div class="container-fluid" style="position: relative; background-color: white;" >
        
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          
         
         
          
          <ul class="nav navbar-nav navbar-left">
       
       		<li>.</li>
       		<li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li>
       		<li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li>
       		
       		<li style="font-weight: bold; "><a href="#" style="color: rgb(82, 110, 166);">About</a></li>
       		<li style="font-weight: bold; "><a href="#" style="color: rgb(82, 110, 166);">Photo</a></li>
            <li style="font-weight: bold; "><a href="/Facebook/module02/friends" style="color: rgb(82, 110, 166);">Friends</a></li>
            
            <li class="dropdown" style="font-weight: bold; ">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: rgb(82, 110, 166);">More <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Sports</a></li>
                <li><a href="#">Events</a></li>
                <li class="divider"></li>
                <li><a href="#">Manage section</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

	<div id="friendheader" style="height:90px;width:100%; background-color:rgb(246, 247, 248); border:1px solid; border-color: rgb(211, 214, 219); " >
	<img src="/Facebook/asset/images/fr_icon.png"  style="height:25px;width:3.5%; margin-left:1%; margin-top: 1%; float: left; " />
	 <a href="/Facebook/module02/displayfriends"><div style="float:left; margin-top: 1%; margin-left: 1%; font-weight: bold; font-size: 20px; color: rgb(55, 64, 78);">Friends</div></a>
	
	<div class="btn-group" style="float: right; margin-right: 2%;margin-top: 1.5%;" > 
	<button type="button" class="btn btn-default" style=" font-size: 12px; font-weight: bold;">Friend Requests<div></div></button>
	 <button type="button" class="btn btn-default" style=" font-size: 12px; font-weight: bold;">+ Find Friends</button>
	</div>
	

	<a href="#"><div style="width:25%; height: 40px; margin-top:7%;margin-left:-13%; float: left; font-weight: bold; color: rgb(55, 64, 78);">All Friends &nbsp;<s:property value="numberoffriends" /> </div></a>
	
	
	<div >
	<input type="text" name="searchfriend" style="float:left; margin-top:-5.5%; margin-left: 67%; height: 22px; width:28%; font-size: 12px;" placeholder = "Search Your Friends" >
	<a href="#"><div style="height: 22px;width: 22px; border: 1px solid; float: right; border-color: rgb(173, 179, 188); margin-top:-45px; margin-right:18px;"><img src="/Facebook/asset/images/search.jpg" /></div></a>
	</div>
 	</div>
	
	<div id="friendsdisplay" style="height:700px; width:100%; border: 1px solid; border-color: rgb(211, 214, 219); position: relative;">










		<div
			style="height: 110px; width: 47%; border: 1px solid; border-color: rgb(211, 214, 219); margin-top: 2%; margin-left: -24%; float: left;">
			<div style="height: 110px; width: 100px; float: left;">
				<a href="#"><img src="/Facebook/asset/images/profilepics/16.jpg"
					style="height: 110px; width: 100px;" /></a>
			</div>
			<div style="margin-top: 10%;">
				<a href="#"
					style="color: rgb(59, 89, 152); font-size: 12px; font-weight: bold;">&nbsp;&nbsp;&nbsp;Chulbul
					Pandey </a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle"
						data-toggle="dropdown"
						style="height: 27px; font-size: 12px; font-weight: bold">
						Friend <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Add To Another List....</a></li>
						<li class="divider"></li>
						<li><a href="#">Report/Block....</a></li>
						<li><a href="#">Unfriend</a></li>
					</ul>
				</div>

			</div>
		</div>











		<div
			style="float: right; height: 110px; width: 47%; border: 1px solid; border-color: rgb(211, 214, 219); margin-top: 2%; margin-right: 2%">
			<div style="height: 110px; width: 100px;">
				<a href="#"><img src="/Facebook/asset/images/profilepics/13.jpg"
					style="height: 110px; width: 100px;" /></a>
			</div>

			<div align="right" style="margin-top: -19%; margin-right: 8%;">
				<a href="#"
					style="color: rgb(59, 89, 152); font-size: 12px; font-weight: bold;">Rajjo
				</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle"
						data-toggle="dropdown"
						style="height: 27px; font-size: 12px; font-weight: bold">
						Friend <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Add To Another List....</a></li>
						<li class="divider"></li>
						<li><a href="#">Report/Block....</a></li>
						<li><a href="#">Unfriend</a></li>
					</ul>
				</div>

			</div>
		</div>




	</div>	
</body>
</html>