<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<link rel="icon" type="image/x-icon" href="<%= request.getContextPath()%>/resources/images/favicon.ico" />
<style type="text/css">
	.main {
		background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat center center fixed;
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
		height: 950px;
		width: 1200px;
	}
	.loginBox {
		background: url(<%= request.getContextPath()%>/resources/images/loginbox.jpg) no-repeat center center;
		position: relative;
		height: 450px;
		width: 540px;
	}
	.logoBox {
		position: relative;
		float: left;
		margin-left: 5px;
		margin-top: 5px;
	}
	.loginInput {
		height: 38px;
		width: 367px;
		margin-right: 1px;
		margin-top: 16px;
	}
	.loginSubmit {
		height: 45px;
		width: 372px;
		margin-right: 1px;
		background-color: #1E61CC;
		font-weight: bold;
		font-size: 20px;
		color: #FFF;
	}
</style>
</head>
<body>
	<center>
		<div class="main">
		<div class="logoBox">
			<img src="<%= request.getContextPath()%>/resources/images/logo.png" />
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<div class="loginBox">
			<br><br><br><br><br><br><br>
				<form:form action="/bps-mng-web/mngLogin/validateLogin.do" method="POST">
					<input type = "text" class = "loginInput" name = "userId" value="Admin" /><br><br>
					<input type = "password" class="loginInput" name = "userPass" style="margin-top: 17px;" value="Admin" /><br><br><br>
					<input type = "submit" class = "loginSubmit" value="Login" />
				</form:form>
			</div>
		</div>
	</center>
</body>
</html>