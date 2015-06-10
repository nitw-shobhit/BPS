<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<link rel="icon" type="image/x-icon" href="resources/images/favicon.ico" />
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
	.logoBox {
		position: relative;
		float: left;
		margin-left: 10px;
		margin-top: 10px;
	}
	.errorBox {
		position: relative;
	}
	.errorMessageBox {
		position: relative;
	}
</style>
</head>
<body>
	<center>
		<div class="main">
			<div class="logoBox">
				<%@include file = "dashboard/logo.jsp" %>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br><br>
			<div class="errorBox">
				<img src="<%= request.getContextPath()%>/resources/images/error-bg.png"><br>
				<div class="errorMessageBox"><font size="4">${errorMessage}</font></div>
			</div>
		</div>
	</center>
</body>
</html>