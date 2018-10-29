<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Shiro | Struts</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="row">
		<div class="container">
			<shiro:authenticated>
				<form id="logoutForm" action="/shiro-with-struts-template/userLogOut">
					<button>Log Out</button>
				</form>
			</shiro:authenticated>
			<shiro:notAuthenticated>
				<form id="loginForm" action="/shiro-with-struts-template/userLogIn" method="POST">
					<input name="username" placeholder="Username" type="text">
					<input name="password" placeholder="Password" type="password">
					<button>Log In</button>
				</form>
			</shiro:notAuthenticated>
		</div>
	</div>
</body>
</html>