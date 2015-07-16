<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	cursor: pointer;
}
.getStartedLink:hover {
	text-decoration: underline;
	font-size: 25px;
	background-color: #000;
	color: #FFF;
	cursor: pointer;
}
.button-gen {
	background-color: #FFF;
	height
}
.button-gen:hover {
	background-color: #000;
	color: #FFF;
}
.inputBox {
	border: none;
	border-bottom: solid 2px #c9c9c9;
	transition: border 0.3s;
	width: 200px;
}
.schColorScheme {
	background-color: #EFB3B3;
}
.uniColorScheme {
	background-color: #BCF5A9;
}
.comColorScheme {
	background-color: #F5F6CE;
}
</style>
<script type="text/ng-template" id="selectOrgPopup">
	<br>
	<table style="padding: 10;">
		<tr>
			<td>
				<div class="addOrg"
					style="background-color: #EFB3B3; text-align: center;">
					<a ng-dialog="orgDescPopup" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-data='{
											"styleClass":"schColorScheme",
											"message"   :"The SCHOOL organization provides a school specific template business process flows, privilege settings, user details.",
											"nextData"  :"{\"orgType\":\"S\",\"styleClass\":\"schColorScheme\", \"message\":\"School\"}"
										}' 						
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous style="cursor: pointer;">
						<img src="<%=request.getContextPath()%>/resources/images/school.ico" height="80" width="80" /><br>
						<font size="4">School</font>
					</a>
				</div>
			</td>
			<td>
				<div class="addOrg"
					style="background-color: #BCF5A9; text-align: center;">
					<a ng-dialog="orgDescPopup" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-data='{
											"styleClass":"uniColorScheme",
											"message"   :"The UNIVERSITY organization provides a university specific template business process flows, privilege settings, user details.",
											"nextData"  :"{\"orgType\":\"U\",\"styleClass\":\"uniColorScheme\", \"message\":\"University\"}"
										}' 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous style="cursor: pointer;">
						<img src="<%=request.getContextPath()%>/resources/images/university.ico" height="80" width="80" /><br>
						<font size="4">University</font>
					</a>
				</div>
			</td>
			<td>
				<div class="addOrg"
					style="background-color: #F5F6CE; text-align: center;">
					<a ng-dialog="orgDescPopup" ng-dialog-class="ngdialog-theme-default addOrganization" 
						ng-dialog-data='{
											"styleClass":"comColorScheme",
											"message"   :"The COMPANY organization provides a company specific template business process flows, privilege settings, user details.",
											"nextData"  :"{\"orgType\":\"C\",\"styleClass\":\"comColorScheme\", \"message\":\"Company\"}"
										}' 
						ng-dialog-controller="organizationDataController" ng-dialog-close-previous style="cursor: pointer;">
						<img src="<%=request.getContextPath()%>/resources/images/company.ico" height="80" width="80" /><br>
						<font size="4">Company</font>
					</a>
				</div>
			</td>
		</tr>
	</table>
</script>

<script type="text/ng-template" id="orgDescPopup">
	<br>
	<div style="text-align: center;" class="{{ngDialogData.styleClass}}">
		<br> <font size="5">{{ngDialogData.message}}
		</font> <br> <br> <br> <br> <br> <br> <br>
		<a ng-dialog="addOrgPopup" 
			ng-dialog-class="ngdialog-theme-default addOrganization"
			ng-dialog-data={{ngDialogData.nextData}}
			ng-dialog-controller="organizationDataController" ng-dialog-close-previous class="getStartedLink">Get Started</a>
	</div>
</script>

<script type="text/ng-template" id="addOrgPopup">
<br>
<div style="height: 320px;" class="{{ngDialogData.styleClass}}">
		<div style="margin-left: 10px; font-size: 14px; font-weight: bold;">Please tell us a little about your {{ngDialogData.message}}..</div>
		<br>
		<%@include file="organizationForm.jsp" %>
		<br>
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td>
					<button class="btn btn-primary" ng-really-message="Are you sure you want to continue?" data-ng-really-click="addOrganization()">Save</button>
				</td>
				<td>
					<button data-ng-click="closeThisDialog('button')" class="btn btn-secondary" style="margin-left: 20px;" >Cancel</button>
				</td>
			</tr>
		</table>
</div>
</script>

<script type="text/ng-template" id="editOrgPopup">
<br>
<div class="{{ngDialogData.styleClass}}" style="height: 320px;">
		<div style="margin-left: 10px; font-size: 14px; font-weight: bold;">Let us edit some information about your {{ngDialogData.message}}..</div>
		<br>
		<%@include file="organizationEditForm.jsp" %>
		<br>
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td>
					<button class="btn btn-primary" ng-really-message="Are you sure you want to continue?" data-ng-really-click="editOrganization()">Save</button>
				</td>
				<td>
					<button data-ng-click="closeThisDialog('button')" class="btn btn-secondary" style="margin-left: 20px;" >Cancel</button>
				</td>
			</tr>
		</table>
</div>
</script>

<script type="text/ng-template" id="attachProcPopup">
<br>
<div class="{{ngDialogData.styleClass}}" style="height: 530px;">
		<div style="margin-left: 10px; font-size: 14px; font-weight: bold;">Time to add some processes to your {{ngDialogData.message}}..</div>
		<br>
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td>
					<fieldset>
						<legend>
							<b><font size="3" style="margin-left:auto; margin-right:auto;">CURRENT</font></b>
						</legend>
						<div style="width: 267px; height: 300px; border: 2px solid; overflow-y: scroll; overflow-x:hidden;" ui-on-Drop="onDrop($event, $data, ngDialogData.data1)">
								<div ui-draggable="true" drag="proc" on-drop-success="dropSuccessHandler($event, $index, ngDialogData.data1)"
										 data-ng-repeat="proc in ngDialogData.data1 track by $index">
										<div class="btn btn-primary" style="width:246px;">
											<div style="float: left; width: 155px; overflow: auto;">
												<font size="2">
													{{proc}}
												</font>
											</div>
											<div style="float: left; width: 55px; margin-left:10px;">
												<img src="" style="width: 55px; height: 55px;"/>											
											</div>
										</div>
								</div>
						</div>
					</fieldset>
				</td>
				<td style="width: 100px;">
				</td>
				<td>
					<fieldset>
						<legend>
							<b><font size="3" style="margin-left:auto; margin-right:auto;">AVAILABLE</font></b>
						</legend>
						<div style="width: 267px; height: 300px; border: 2px solid; overflow-y: scroll; overflow-x:hidden;" ui-on-Drop="onDrop($event, $data, ngDialogData.data2)">
								<div ui-draggable="true" drag="proc" on-drop-success="dropSuccessHandler($event, $index, ngDialogData.data2)"
										 data-ng-repeat="proc in ngDialogData.data2 track by $index">
										<div class="btn btn-primary" style="width:246px;">
											<div style="float: left; width: 155px; overflow: auto;">
												<font size="2">
													{{proc}}
												</font>
											</div>
											<div style="float: left; width: 55px; margin-left:10px;">
												<img src="" style="width: 55px; height: 55px;"/>											
											</div>
										</div>
								</div>
						</div>				
					</fieldset>
				</td>
			</tr>
		</table>		
		<br><br>
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td>
					<button class="btn btn-primary" ng-really-message="Are you sure you want to continue?" data-ng-really-click="attachProcessesToOrganization()">Save</button>
				</td>
				<td>
					<button data-ng-click="closeThisDialog('button')" class="btn btn-secondary" style="margin-left: 20px;" >Cancel</button>
				</td>
			</tr>
		</table>
</div>
</script>
</head>
</html>