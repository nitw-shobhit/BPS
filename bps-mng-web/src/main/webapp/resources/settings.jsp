<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
</head>
	<frameset cols="20%, *">
		<frame src="<%= request.getContextPath()%>/resources/settings/settingsMenu.jsp" name="settingsMenu" frameborder="0" scrolling="no" noresize="noresize" >
		<frame src="<%= request.getContextPath()%>/resources/settings/settingsTarget.jsp" name="settingsTarget" frameborder="0" scrolling="no" noresize="noresize" >
	</frameset>
</html>