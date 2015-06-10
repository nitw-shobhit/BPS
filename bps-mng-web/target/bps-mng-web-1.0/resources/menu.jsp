<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
	<style type="text/css">
		.main {
			background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat center center fixed;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
		}
		.menuTable {
			font-weight: bold;
			font-size: 15px;
		}
		.menuLink {
			text-decoration: none;
			color: black;
			cursor: pointer;
		}
		.menuLink.hover {
			color: white;
			cursor: pointer;
		}
	</style>
</head>
<body>
	<div class="main">
		<table class="menuTable">
			<tr>
				<td><a href="<%= request.getContextPath()%>/resources/home.jsp" class="menuLink" target="contentFrame" >HOME&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a></td>
				<td><a href="/bps-mng-web/mngOrg/getOrganizationData.do" class="menuLink" target="contentFrame" >ORGANIZATIONS&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a></td>
				<td><a href="/bps-mng-web/mngProcess/getProcessData.do" class="menuLink" target="contentFrame" >PROCESS&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a></td>
				<td><a href="<%= request.getContextPath()%>/resources/logs.jsp" class="menuLink" target="contentFrame" >LOGS&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a></td>
				<td><a href="<%= request.getContextPath()%>/resources/settings.jsp" class="menuLink" target="contentFrame" >SETTINGS&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a></td>
				<td><a href="<%= request.getContextPath()%>/index.jsp" class="menuLink" target="_top" >LOGOUT&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</a></td>
				<td><a href="<%= request.getContextPath()%>/resources/help.jsp" class="menuLink" target="contentFrame" >HELP</a></td>
			</tr>
		</table>
	</div>
</body>
</html>