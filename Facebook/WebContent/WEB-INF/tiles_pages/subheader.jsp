<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>   
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
<div id="coverdivid" style="height:320px;width:100%; margin-top:2%; position: relative;">
		
	<a href="#" style="position: relative;z-index: 1;"> <img src="/Facebook/asset/images/profilepics/0.jpg"  style="height:320px;width:100%; position: relative;"></a>	
	
	<a href="/Facebook/module02/reloadprofile"><p style="position: absolute; z-index: 100; left: 190px; top:280px; font-weight: bold; color: white; font-size: 20px; "><s:property value="user.getFname()"/>&nbsp;<s:property value="user.getLname()"/></p></a>
		
	<input type="button" value="Update Info" style="background-color:rgb(251, 251, 252);position: absolute; font-size:12px; font-weight:bold; z-index: 100; left: 85%; bottom:3%;">
	
	
	
	<div id="changecoverid" style="font-size: 12px; font-weight: bold; height:7%; width:12%; border:1px solid; background-color:rgb(251, 251, 252);  color: ; margin-top:-15%;  margin-left: 85%; z-index: 100; position: absolute;">
				
					<input type="file" name="myFile" class="filestyle" data-input="false" id="filestyle-0" tabindex="-1" style="position: absolute; left: -9999px;" />
					
						<label for="filestyle-0" class="btn" style="margin-top: -6%; margin-left: -6%; font-size: 12px; font-weight:bold;" ><i class="icon-folder-open"></i> Change Cover</label>
	</div>
	
	
	<div style="position:absolute; top:0; ; z-index:2 ;  height:150px; width:150px; border:1px solid; margin-top:24%; margin-left:2%; border:1px solid; border-color: rgb(211, 214, 219);">
		<a href="#"><img src='<s:property value="user.getProfilePic()" />' style="height:148px; width: 148px;"></a>
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
       		<li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li><li>.</li>
       		
       		<li style="font-weight: bold; "><a href="/Facebook/module03/Call_To_geteductaiondata" style="color: rgb(82, 110, 166);">About</a></li>
       		<li style="font-weight: bold; "><a href="#" style="color: rgb(82, 110, 166);">Photo</a></li>
            <li style="font-weight: bold; ">
            <s:url namespace="/module02" action="/Facebook/module02/friends" var="loadFriends">
            	<s:param name="profileId">
            		<s:property value="user.getProfile_id()"/>
            	</s:param>
            </s:url>
            <s:a href="%{loadFriends}" style="color: rgb(82, 110, 166);">Friends</s:a></li>
            
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