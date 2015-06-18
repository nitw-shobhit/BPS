<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/angular.min.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/angular-route.min.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/bpsAngular.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.loginBox {
	background: url(<%= request.getContextPath()%>/resources/images/loginbox.jpg) no-repeat center center;
	height: 450px;
	width: 540px;
	margin-right: auto;
	margin-left: auto;
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
.main {
	background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	height: 950px;
	width: 1200px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<br><br><br><br><br><br><br><br>
	<div class="loginBox">
	<br><br><br><br><br><br><br>
		<input type= "text" class= "loginInput" data-ng-model="userId" value="Admin" /><br><br>
		<input type= "password" class="loginInput" data-ng-model="userPass" style="margin-top: 17px;" value="Admin" /><br><br><br>
		<button class= "loginSubmit" data-ng-click="login()">Login</button>
	</div>
</body>
</html>