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
	background: url(<%= request.getContextPath()%>/resources/images/loginbox.jpg);
	height: 440px;
	width: 600px;
	margin-right: auto;
	margin-left: auto;
}
.loginInput {
	height: 45px;
	width: 375px;
	margin-right: 1px;
	margin-top: 16px;
}
.loginSubmit {
	height: 50px;
	width: 375px;
	margin-right: 1px;
	margin-top: 30px;
	font-weight: bold;
	font-size: 20px;
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
	<br><br><br><br>
	<div class="loginBox">
		<input type= "text" class= "loginInput" data-ng-model="userId" value="Admin" style="margin-top: 138px;" />
		<input type= "password" class="loginInput" data-ng-model="userPass" style="margin-top: 33px;" value="Admin" />
		<button class= "btn btn-primary loginSubmit" data-ng-click="login()">Login</button>
	</div>
</body>
</html>