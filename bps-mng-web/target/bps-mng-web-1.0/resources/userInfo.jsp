<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		height: 135px;
	}
	.profilePic {
		height: 80px;
		width: 60px;
	}
</style>
</head>
<body>
	<div class="main">
		<table cellpadding="10">
			<tr>
				<td>
					<c:choose>
						<c:when test="${userBeanRet.userImage == null}">
							<img class="profilePic" src="<%= request.getContextPath()%>/resources/images/default_p_img.png" />
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<b><font size="4" ><c:out value="${userBeanRet.userName}" /></font></b><br><br>
					<font size="3" ><c:out value="${userBeanRet.userId}" /></font><br>
					<font size="3" ><c:out value="${userBeanRet.userGroupId}" /></font>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>