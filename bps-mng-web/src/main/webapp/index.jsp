<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html data-ng-app="bps-app">
<head>
<script src="<%= request.getContextPath()%>/resources/js/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/css/bootstrap.css">
<script src="<%= request.getContextPath()%>/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/css/ngDialog.css">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/css/ngDialog-theme-default.css">
<script src="<%= request.getContextPath()%>/resources/js/angular.min.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/angular-route.min.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/angular-ui-router.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/draganddrop.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/angular-translate.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/bpsAngular.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/ngDialog.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process Management</title>
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
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<div class="main" style="">
		<div id = "header" style="height: 130px; width: 1200px;">
			<div data-ui-view="logo" style="height: 130px; width: 870px; float: left;">
			</div>
			<div data-ui-view="userInfo" style="height: 130px; width: 320px; float: right;">
			</div>
		</div>
		<div data-ui-view="menu" style="height: 50px; width: 1200px; margin-top: 5px;">
		</div>
		<div data-ui-view="content" style="height: 750px; width: 1200px; margin-top: 5px;">
		</div>
	</div>
</body>
</html>