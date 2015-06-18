<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="<%= request.getContextPath()%>/resources/js/angular.min.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/angular-route.min.js"></script>
<script src="<%= request.getContextPath()%>/resources/js/bpsAngular.js"></script>
<title>Business Process System</title>
<style type="text/css">
.profilePic {
	height: 80px;
	width: 60px;
}
.userInfoTab {
	padding: 20;
	text-align: left;
}
</style>
</head>
<body>
<div style="border-left: 2px solid white;height: 130px;">
	<div style="margin-left: 10px;">
		<br>
		<table class="userInfoTab">
			<tr>
				<td>
					<div data-ng-if ="!profileData.userImage">
						<img class="profilePic" src="<%= request.getContextPath()%>/resources/images/default_p_img.png" />
					</div>
					<div data-ng-if ="profileData.userImage">
					Image Found
					</div>
				</td>
				<td>
					<b><font size="4" >{{profileData.userName}}</font></b><br><br>
					<font size="3" >{{profileData.userId}}</font><br>
					<font size="3" >{{profileData.userGroupId}}</font>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>