<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<link rel="icon" type="image/x-icon" href="<%= request.getContextPath()%>/resources/images/favicon.ico" />
</head>
	<frameset cols="20%, *, 20%">
		<frame name="blankFrame" frameborder="0" scrolling="no" noresize="noresize" />
		<frameset rows="15%, 3.3%, *">
			<frameset cols="70%, *">
				<frame name="logoFrame" src="<%= request.getContextPath()%>/resources/logo.jsp" frameborder="0" scrolling="no" noresize="noresize" />
				<frame name="userInfoFrame" src="<%= request.getContextPath()%>/resources/userInfo.jsp" frameborder="0" scrolling="no" noresize="noresize" />
			</frameset>
			<frame name="menuFrame" src="<%= request.getContextPath()%>/resources/menu.jsp" frameborder="0" scrolling="no" noresize="noresize" />
			<frame name="contentFrame" src="<%= request.getContextPath()%>/resources/home.jsp" frameborder="0" scrolling="no" noresize="noresize" />
		</frameset>
		<frame name="blankFrame" frameborder="0" scrolling="no" noresize="noresize" />
	</frameset>
</html>