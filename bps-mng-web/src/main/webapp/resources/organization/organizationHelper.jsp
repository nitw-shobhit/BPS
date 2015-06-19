<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<script type="text/ng-template" id="selectOrgPopup">
	<table style="padding: 10;">
		<tr>
			<td>
				<div class="addOrg"
					style="background-color: #EFB3B3; text-align: center;">
					<a ng-dialog="addSchOrg" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous style="cursor: pointer;">
						<img src="<%=request.getContextPath()%>/resources/images/school.ico" height="80" width="80" /><br>
						<font size="4">School</font>
					</a>
				</div>
			</td>
			<td>
				<div class="addOrg"
					style="background-color: #BCF5A9; text-align: center;">
					<a ng-dialog="addUniOrg" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous style="cursor: pointer;">
						<img src="<%=request.getContextPath()%>/resources/images/university.ico" height="80" width="80" /><br>
						<font size="4">University</font>
					</a>
				</div>
			</td>
			<td>
				<div class="addOrg"
					style="background-color: #F5F6CE; text-align: center;">
					<a ng-dialog="addComOrg" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous style="cursor: pointer;">
						<img src="<%=request.getContextPath()%>/resources/images/company.ico" height="80" width="80" /><br>
						<font size="4">Company</font>
					</a>
				</div>
			</td>
		</tr>
	</table>
</script>

<script type="text/ng-template" id="addSchOrg">
	<br>
	<div id="schOrgDesc" style="background-color: #EFB3B3; text-align: center;">
		<br> <font size="5">The <b>School</b> organization
			provides a school specific template business process flows, privilege
			settings, user details.
		</font> <br> <br> <br> <br> <br> <br> <br>
		<a ng-dialog="addSchool" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous class="getStartedLink">Get Started</a>
	</div>
</script>

<script type="text/ng-template" id="addUniOrg">
	<br>
	<div id="univOrgDesc"
		style="background-color: #BCF5A9; text-align: center;">
		<br> <font size="5">The <b>University</b> organization
			provides a university specific template business process flows,
			privilege settings, user details.
		</font> <br> <br> <br> <br> <br> <br> <br>
		<a ng-dialog="addUniversity" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous class="getStartedLink">Get Started</a>
	</div>
</script>

<script type="text/ng-template" id="addComOrg">
	<br>
	<div id="compOrgDesc"
		style="background-color: #F5F6CE; text-align: center;">
		<br> <font size="5">The <b>Company</b> organization
			provides a company specific template business process flows,
			privilege settings, user details.
		</font> <br> <br> <br> <br> <br> <br> <br>
		<a ng-dialog="addCompany" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous class="getStartedLink">Get Started</a>
	</div>
</script>

<script type="text/ng-template" id="addSchool">
<br>
<div id="schOrg"
	style="background-color: #EFB3B3;">
	<form>
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
		<table cellspacing="5">
			<tr>
				<td>
					<input type="submit" value="Confirm" class="button-gen" />
				</td>
				<td>
					<input type="button" onclick="closePopup()" value="Cancel" class="button-gen" />
				</td>
			</tr>
		</table>
	</form>
</div>
</script>

<script type="text/ng-template" id="addUniversity">
<br>
<div id="univOrg"
	style="background-color: #BCF5A9;">
	<form>
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
		<table cellspacing="5">
			<tr>
				<td>
					<input type="submit" value="Confirm" class="button-gen" />
				</td>
				<td>
					<input type="button" onclick="closePopup()" value="Cancel" class="button-gen" />
				</td>
			</tr>
		</table>
	</form>
</div>
</script>

<script type="text/ng-template" id="addCompany">
<br>
<div id="compOrg"
	style="background-color: #F5F6CE;">
	<form>
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
		<table cellspacing="5">
			<tr>
				<td>
					<input type="submit" value="Confirm" class="button-gen" />
				</td>
				<td>
					<input type="button" onclick="closePopup()" value="Cancel" class="button-gen" />
				</td>
			</tr>
		</table>
	</form>
</div>
</script>
</head>
</html>