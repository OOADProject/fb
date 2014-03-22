<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title"/></title>
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet"/>
<link href="/Facebook/asset/css/bootstrap-theme.min.css" rel="stylesheet"/>
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet"/>
<link href="/Facebook/asset/css/bootstrap.css" rel="stylesheet"/>
<link href="/Facebook/asset/css/bootstrap.min.css" rel="stylesheet"/>
<link href="/Facebook/asset/css/bootstrap-theme.css.map" rel="stylesheet"/>
<link href="/Facebook/asset/css/bootstrap.css.map" rel="stylesheet"/>
</head>
</head>
<body>
<div id="header">
		<tiles:insertAttribute name="header" />
	</div>
	<div id="container">
	<hr>
		<div id="body">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<hr>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>