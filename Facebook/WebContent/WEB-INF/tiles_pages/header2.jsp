<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div id="header2">
	<div id="fb_logo">
		<img alt="Facebook" width="175px" height="45px"
			src="/Facebook/asset/images/logo.png">
	</div>


	<div id="login_details">
		<p id="caption">Email or
			Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</p>
		<form action="module02/userLogin">
		<input type="text" name="userName" size="19" id="uname" /> <input
			type="password" name="password" size="19" id="password" /> <input
			type="submit" value="Log In" id="login_button" /><br>
		<div id="logged_in">
			<input type="checkbox" id="remember_me" name="logged_in">Keep
			me logged in
		
			<p id="forgot_password">Forgot your password?</p>
		</div>	</form>

	</div>

</div>
