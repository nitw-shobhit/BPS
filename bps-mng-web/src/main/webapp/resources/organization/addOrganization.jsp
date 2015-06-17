<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.orgPopUp {
	display: none;
	font-family: Arial;
	font-size: 20px;
}
.inputBox {
	border: none;
	border-bottom: solid 2px #c9c9c9;
	transition: border 0.3s;
}
</style>
</head>
<body>
	<div id="schOrg" class="orgPopUp" title="Create a School"
		style="background-color: #EFB3B3;">
		<form:form action="/bps-mng-web/mngOrg/addOrganization.do"
			method="POST">
			Please tell us a little about your School..
			<input type="hidden" name="orgType" value="S" />
			<br>
			<br>
			<table cellspacing="5">
				<tr>
					<td>Name</td>
					<td><input type="text" name="orgName" class="inputBox"
						style="padding: 8px;" /></td>
				</tr>
				<tr>
					<td>Unique ID</td>
					<td><input type="text" name="orgId" class="inputBox"
						style="padding: 8px;" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><textarea rows="2" cols="22" class="inputBox"
							style="resize: none;" name="orgAddr"></textarea></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><textarea rows="3" cols="22" class="inputBox"
							style="resize: none;" name="orgDesc"></textarea></td>
				</tr>
			</table>
			<br>
			<%@include file="../reusable/popUpButtonSet.jsp"%>
		</form:form>
	</div>
	<div id="univOrg" class="orgPopUp" title="Create a University"
		style="background-color: #BCF5A9;">
		<form:form action="/bps-mng-web/mngOrg/addOrganization.do"
			method="POST">
			Please tell us a little about your University..
			<input type="hidden" name="orgType" value="U" />
			<br>
			<br>
			<table cellspacing="5">
				<tr>
					<td>Name</td>
					<td><input type="text" name="orgName" class="inputBox"
						style="padding: 8px;" /></td>
				</tr>
				<tr>
					<td>Unique ID</td>
					<td><input type="text" name="orgId" class="inputBox"
						style="padding: 8px;" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><textarea rows="2" cols="22" class="inputBox"
							style="resize: none;" name="orgAddr"></textarea></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><textarea rows="3" cols="22" class="inputBox"
							style="resize: none;" name="orgDesc"></textarea></td>
				</tr>
			</table>
			<br>
			<%@include file="../reusable/popUpButtonSet.jsp"%>
		</form:form>
	</div>
	<div id="compOrg" class="orgPopUp" title="Create a Company"
		style="background-color: #F5F6CE;">
		<form:form action="/bps-mng-web/mngOrg/addOrganization.do"
			method="POST">
			Please tell us a little about your Company..
			<input type="hidden" name="orgType" value="C" />
			<br>
			<br>
			<table cellspacing="5">
				<tr>
					<td>Name</td>
					<td><input type="text" name="orgName" class="inputBox"
						style="padding: 8px;" /></td>
				</tr>
				<tr>
					<td>Unique ID</td>
					<td><input type="text" name="orgId" class="inputBox"
						style="padding: 8px;" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><textarea rows="2" cols="22" class="inputBox"
							style="resize: none;" name="orgAddr"></textarea></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><textarea rows="3" cols="22" class="inputBox"
							style="resize: none;" name="orgDesc"></textarea></td>
				</tr>
			</table>
			<br>
			<%@include file="../reusable/popUpButtonSet.jsp"%>
		</form:form>
	</div>
</body>
</html>