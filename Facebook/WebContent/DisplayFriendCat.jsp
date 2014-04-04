<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/Facebook/asset/css/dashboard.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <div id="sp1">
     <s:iterator value="catList"><p id="menu_items"><a href="#?category=<s:property/>"><img src="/Facebook/asset/images/newsfeed.png" height="15px">&nbsp;&nbsp;<s:property/></a><br></p> 
      </s:iterator>  
      </div>
</body>
</html>