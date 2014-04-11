<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/Facebook/asset/css/dashboard.css" rel="stylesheet">
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.min.css"
	rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.min.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.css.map"
	rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.css.map" rel="stylesheet" />
<link href="/Facebook/asset/css/login_home.css" rel="stylesheet" />
<script src="/Facebook/asset/js/bootstrap.js"></script>
<link href="/Facebook/asset/css/tokens.css" rel="stylesheet" />
<script src="/Facebook/asset/js/tokens.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
(function(){
$('#demo').tokens({
source : [
...
],
initValue : [ 'jQuery', 'jQuery Script Net' ]
});
})();
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Friends Category</title>
</head>
<body>
      <div id="sp1">
     <s:iterator value="catList"><p id="menu_items"><a href="#?category=<s:property/>"><img src="/Facebook/asset/images/newsfeed.png" height="15px">&nbsp;&nbsp;<s:property/></a><br></p> 
      </s:iterator>  
      </div>


<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  <span class="glyphicon glyphicon-plus"></span> Manage List
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Create List</h4>
      </div>
      <div class="modal-body">
      <input type="text" id="demo"/>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>



</body>
</html>