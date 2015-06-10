<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
	<style type="text/css">
		.main {
			background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat center center fixed;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
			height: 750px;
		}
		.contentBox {
			position: relative;
			margin-left: 7px;
			margin-top: 5px;
		}
		.organization {
			height: 180px;
			width: 96%;
		}
		.organizationData {
			height: 490px;
			width: 96%;
		}
		.addOrg {
			height: 155px;
			width: 200px;
			box-shadow: 7px 7px 7px #888;
		}
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
		.getStartedLink {
			text-decoration: underline;
			font-size: 25px;
			background-color: #FFF;
		}
		.getStartedLink:hover {
			background-color: #000;
			color: #FFF;
			cursor: pointer;
			text-decoration: underline;
			font-size: 25px;
		}
	</style>
	<script type="text/javascript">
		function openPopupWindow(id) {
			$(id).dialog({ modal: true, height: 270, width: 700, closeOnEscape: true}).prev(".ui-dialog-titlebar").css("background","white");
		}
		function openClosePopupWindow(id1, id2) {
			$(id1).dialog("close");
			$(id2).dialog({ modal: true, height: 450, width: 520, closeOnEscape: true}).prev(".ui-dialog-titlebar").css("background","white");
		}
	</script>
</head>
<body>
	<div class="main">
		<div class="contentBox">
			<br>
			<div id="orgBox">
				<fieldset class="organization">
					<legend><b><font size="3">MY ORGANIZATIONS</font></b></legend>
					<c:forEach items="${organizationList}" var="org">
						<div class="addOrg" style="background-color: #E0E6F8; text-align: center;">
							<a onclick="openPopupWindow('#chooseOrg')" style="cursor: pointer;">
								<br><br><br>
								<font size="5">${org.orgName}</font>
								<font size="3">${org.orgId}</font>
								<font size="3">${org.orgDesc}</font>
							</a>
						</div>
					</c:forEach>
					<div class="addOrg" style="background-color: #E0E6F8; text-align: center;">
						<a onclick="openPopupWindow('#chooseOrg')" style="cursor: pointer;">
							<br><br><br>
							<font size="5">Add New Organization..</font>
						</a>
					</div>
				</fieldset>
			</div>
			<br>
			<div id="orgDetBox">
				<fieldset class="organizationData">
					<legend><b><font size="3">ORGANIZATIONS DETAILS</font></b></legend>
				</fieldset>
			</div>
		</div>
	</div>
	<div id="chooseOrg" class="orgPopUp" title="Choose Organization Type" >
		<table cellpadding="10">
			<tr>
				<td>
					<div class="addOrg" style="background-color: #EFB3B3; text-align: center;">
						<a onclick="openClosePopupWindow('#chooseOrg','#schOrgDesc')" style="cursor: pointer;">
							<br><br><br>
							<font size="5">School</font>
						</a>
					</div>
				</td>
				<td>
					<div class="addOrg" style="background-color: #BCF5A9; text-align: center;">
						<a onclick="openClosePopupWindow('#chooseOrg','#univOrgDesc')" style="cursor: pointer;">
							<br><br><br>
							<font size="5">University</font>
						</a>
					</div>
				</td>
				<td>
					<div class="addOrg" style="background-color: #F5F6CE; text-align: center;">
						<a onclick="openClosePopupWindow('#chooseOrg','#compOrgDesc')" style="cursor: pointer;">
							<br><br><br>
							<font size="5">Company</font>
						</a>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div id="schOrgDesc" class="orgPopUp" title="Create a School" style="background-color: #EFB3B3; text-align: center;">
		<br>
		<font size="5">The <b>School</b> organization provides a school specific template business process flows, privilege settings, user details.</font>
		<br><br><br><br><br><br><br>
		<a onclick="openClosePopupWindow('#schOrgDesc','#schOrg')" class="getStartedLink">Get Started</a>
	</div>
	<div id="univOrgDesc" class="orgPopUp" title="Create a University" style="background-color: #BCF5A9; text-align: center;">
		<br>
		<font size="5">The <b>University</b> organization provides a university specific template business process flows, privilege settings, user details.</font>
		<br><br><br><br><br><br><br>
		<a onclick="openClosePopupWindow('#univOrgDesc','#univOrg')" class="getStartedLink">Get Started</a>
	</div>
	<div id="compOrgDesc" class="orgPopUp" title="Create a Company" style="background-color: #F5F6CE; text-align: center;">
		<br>
		<font size="5">The <b>Company</b> organization provides a company specific template business process flows, privilege settings, user details.</font>
		<br><br><br><br><br><br><br>
		<a onclick="openClosePopupWindow('#compOrgDesc','#compOrg')" class="getStartedLink">Get Started</a>
	</div>
	
	<div id="schOrg" class="orgPopUp" title="Create a School" style="background-color: #EFB3B3;">
		<form:form action="/bps-mng-web/mngOrg/addOrganization.do" method="POST" >
			Please tell us a little about your School..
			<br><br>
			<table cellspacing="5">
				<tr>
					<td>
						Name
					</td>
					<td>
						<input type="text" name="" class="inputBox" style="padding: 8px;" />
					</td>
				</tr>
				<tr>
					<td>
						Unique ID
					</td>
					<td>
						<input type="text" name="" class="inputBox" style="padding: 8px;" />
					</td>
				</tr>
				<tr>
					<td>
						Address
					</td>
					<td>
						<textarea rows="2" cols="22" class="inputBox" style="resize: none;"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						Description
					</td>
					<td>
						<textarea rows="3" cols="22" class="inputBox" style="resize: none;"></textarea>
					</td>
				</tr>
			</table>
			<br>
			<%@include file="reusable/popUpButtonSet.jsp" %>
		</form:form>
	</div>
	<div id="univOrg" class="orgPopUp" title="Create a University" style="background-color: #BCF5A9;">
		Please tell us a little about your University..
		<br><br>
		<table cellspacing="5">
			<tr>
				<td>
					Name
				</td>
				<td>
					<input type="text" name="" class="inputBox" />
				</td>
			</tr>
			<tr>
				<td>
					Unique ID
				</td>
				<td>
					<input type="text" name="" class="inputBox" />
				</td>
			</tr>
			<tr>
				<td>
					Address
				</td>
				<td>
					<textarea rows="2" cols="23" style="resize: none;"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					Description
				</td>
				<td>
					<textarea rows="3" cols="23" style="resize: none;"></textarea>
				</td>
			</tr>
		</table>
		<br>
		<%@include file="reusable/popUpButtonSet.jsp" %>
	</div>
	<div id="compOrg" class="orgPopUp" title="Create a Company" style="background-color: #F5F6CE;">
		Please tell us a little about your Company..
		<br><br>
		<table cellspacing="5">
			<tr>
				<td>
					Name
				</td>
				<td>
					<input type="text" name="" class="inputBox" />
				</td>
			</tr>
			<tr>
				<td>
					Unique ID
				</td>
				<td>
					<input type="text" name="" class="inputBox" />
				</td>
			</tr>
			<tr>
				<td>
					Address
				</td>
				<td>
					<textarea rows="2" cols="22" style="resize: none;"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					Description
				</td>
				<td>
					<textarea rows="3" cols="22" style="resize: none;"></textarea>
				</td>
			</tr>
		</table>
		<br>
		<%@include file="reusable/popUpButtonSet.jsp" %>
	</div>
</body>
</html>