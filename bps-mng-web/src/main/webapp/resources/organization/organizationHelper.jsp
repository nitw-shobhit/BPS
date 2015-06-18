<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.addOrg {
	height: 130px;
	width: 200px;
	box-shadow: 7px 7px 7px #888;
	float: left;
	margin-right: 10px;
}
.getStartedLink {
	text-decoration: underline;
	font-size: 25px;
	background-color: #FFF;
}
</style>
</head>
<body>
	<div id="chooseOrg" class="orgPopUp" title="Choose Organization Type">
		<br>
		<table style="padding: 10;">
			<tr>
				<td>
					<div class="addOrg"
						style="background-color: #EFB3B3; text-align: center;">
						<a onclick="openClosePopupWindow('#chooseOrg','#schOrgDesc')"
							style="cursor: pointer;">
							<br>
							<img src="<%=request.getContextPath()%>/resources/images/school.ico" height="80" width="80" /><br>
							<font size="4">School</font>
						</a>
					</div>
				</td>
				<td>
					<div class="addOrg"
						style="background-color: #BCF5A9; text-align: center;">
						<a onclick="openClosePopupWindow('#chooseOrg','#univOrgDesc')"
							style="cursor: pointer;">
							<br>
							<img src="<%=request.getContextPath()%>/resources/images/university.ico" height="80" width="80" /><br>
							<font size="4">University</font>
						</a>
					</div>
				</td>
				<td>
					<div class="addOrg"
						style="background-color: #F5F6CE; text-align: center;">
						<a onclick="openClosePopupWindow('#chooseOrg','#compOrgDesc')"
							style="cursor: pointer;">
							<br>
							<img src="<%=request.getContextPath()%>/resources/images/company.ico" height="80" width="80" /><br>
							<font size="4">Company</font>
						</a>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div id="schOrgDesc" class="orgPopUp" title="Create a School"
		style="background-color: #EFB3B3; text-align: center;">
		<br> <font size="5">The <b>School</b> organization
			provides a school specific template business process flows, privilege
			settings, user details.
		</font> <br> <br> <br> <br> <br> <br> <br>
		<a onclick="openClosePopupWindow('#schOrgDesc','#schOrg')"
			class="getStartedLink">Get Started</a>
	</div>
	<div id="univOrgDesc" class="orgPopUp" title="Create a University"
		style="background-color: #BCF5A9; text-align: center;">
		<br> <font size="5">The <b>University</b> organization
			provides a university specific template business process flows,
			privilege settings, user details.
		</font> <br> <br> <br> <br> <br> <br> <br>
		<a onclick="openClosePopupWindow('#univOrgDesc','#univOrg')"
			class="getStartedLink">Get Started</a>
	</div>
	<div id="compOrgDesc" class="orgPopUp" title="Create a Company"
		style="background-color: #F5F6CE; text-align: center;">
		<br> <font size="5">The <b>Company</b> organization
			provides a company specific template business process flows,
			privilege settings, user details.
		</font> <br> <br> <br> <br> <br> <br> <br>
		<a onclick="openClosePopupWindow('#compOrgDesc','#compOrg')"
			class="getStartedLink">Get Started</a>
	</div>
</body>
</html>