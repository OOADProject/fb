<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-rel" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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


</head>
<body>
	<!-- <div style="width: 20%">
	<form action="module02/userLogin">
	
		<h3><input type="text" class="form-control" name="userName" placeholder="Username"/></h3>
		<h3><input type="text" class="form-control" name="password" placeholder="Password"/></h3>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>	
	</form>
	</div>
	 -->
	<div class="body_login" id="body_login">

		<div class="body_login_signup">
			<p id="create_account">Sign Up</p>
			<p id="punch_line">It's free and always will be.</p>
			<input type="text" placeholder="First Name" id="fname"
				class="details" /> <input type="text" placeholder="Last Name"
				id="lname" class="details" /><br> <input type="text"
				placeholder="Your Email" id="email" class="details" /><br> <input
				type="text" placeholder="Re-enter Email" id="reemail"
				class="details" /><br> <input type="password"
				placeholder="New Password" id="pwd" class="details" /><br>

			<p id="birthday" style="font-weight: bold;">Birthday</p>
			<select id="month">
				<option value="-1">Month</option>
			</select> <select id="day">
				<option value="-1">Day</option>
			</select> <select id="year">
				<option value="-1">Year</option>
			</select><br>
			<h4>
				<input type="radio" />&nbsp;&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="radio" />&nbsp;&nbsp;Female
			</h4>
			<p style="font-size: x-small;">
				By clicking Sign Up, you agree to our Terms and that you have<br>
				read our Data Use Policy, including our Cookie Use
			</p>
			<button type="button" class="btn btn-lg btn-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sign Up
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
		</div>
		<div class="body_login_left">
			<p id="help">
				Connect with friends and the <br>world around you on Facebook.
			</p><br><br><br>
			<p><img src="/Facebook/asset/images/home1.png" align="left"><h4 class="featurette-heading"/>&nbsp;&nbsp;&nbsp;See photos and updates <span class="text-muted">from friends in News Feed.</span></h4></p><br><br>
			<p><img src="/Facebook/asset/images/home2.png" align="left"><h4 class="featurette-heading">&nbsp;&nbsp;&nbsp;Share what's new  <span class="text-muted">in your life on your Timeline.</span></h4></p><br><br>
			<p><img src="/Facebook/asset/images/home3.png" align="left"><h4 class="featurette-heading">&nbsp;&nbsp;&nbsp;Find more  <span class="text-muted">of what you're looking for with Graph Search.</span></h4></p><br><br>
		</div>
	</div>
</body>
</html>