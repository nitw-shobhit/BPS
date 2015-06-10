<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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