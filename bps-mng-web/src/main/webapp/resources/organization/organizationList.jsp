<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="organizationHelper.jsp" />
<jsp:include page="../reusable/confirmBox.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<script src="<%= request.getContextPath()%>/resources/js/bps.js"></script>
<style type="text/css">
.contentBox {
	margin-left: 7px;
	margin-top: 5px;
	float: left;
	text-align: left;
}

.organization {
	height: 250px;
	width: 100%%;
}

.orgIntro {
	height: 130px;
	width: 170px;
	float: left;
}
.orgSideMenu {
	height: 130px;
	width: 30px;
	float: left;
	opacity: 0.3;
  	filter: alpha(opacity=30);
  	cursor: pointer;
}
.addOrg {
	height: 130px;
	width: 200px;
	box-shadow: 7px 7px 7px #888;
	float: left;
	margin-right: 10px;
}
.orgSideMenu:hover {
	height: 130px;
	width: 30px;
	float: left;
	opacity: 1;
  	filter: alpha(opacity=100);
  	-webkit-transition: all .8s ease-out;
  	cursor: pointer;
}
.sideMenuLink {
	float: right;
	margin-top: 5px;
	margin-right: 5px;
}
</style>
</head>
<body>
	<div id="orgBox">
		<fieldset class="organization">
			<legend>
				<b><font size="3">MY ORGANIZATIONS</font></b>
			</legend>
			<div style="overflow: auto; width: 1080px; height: 190px;">
				<div data-ng-repeat="org in organizationList">
					<div data-ng-if ="org.orgType == 'S'" style="float: left;">
						<table>
							<tr>
								<td>
									<div class="addOrg">
										<div class="orgIntro"
											style="background-color: #EFB3B3; text-align: center;">
											<a
												data-ng-click="getOrgData(org)"
												style="cursor: pointer; text-decoration: none;"> <br>
												<font size="4" color="#000">{{org.orgName}}</font><br><br>
												<b><font size="3" color="#000">{{org.orgId}}</font></b>
											</a>
										</div>
										<div class="orgSideMenu"
											style="background-color: #F29595; text-align: center;">
											<a
												data-ng-click="removeOrganization(org.id)"
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/remove.ico"
												height="20" width="20" title="Delete"/></a><br><br>
											<a
												data-ng-click="openAttachProcess(org)"
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/om_attach.ico"
												height="20" width="20" title="Attach Process"/></a><br><br>
											<a
												data-ng-click="openEditOrganization(org)"
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/om_edit.ico"
												height="20" width="20" title="Edit"/></a>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
					<div data-ng-if ="org.orgType == 'U'" style="float: left;">
						<table>
							<tr>
								<td>
									<div class="addOrg">
										<div class="orgIntro"
											style="background-color: #BCF5A9; text-align: center;">
											<a
												data-ng-click="getOrgData(org)"
												style="cursor: pointer; text-decoration: none;"> <br>
												<font size="4" color="#000">{{org.orgName}}</font><br><br>
												<b><font size="3" color="#000">{{org.orgId}}</font></b>
											</a>
										</div>
										<div class="orgSideMenu"
											style="background-color: #9BE781; text-align: center;">
											<a
												data-ng-click="removeOrganization(org.id)"
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/remove.ico"
												height="20" width="20" title="Delete"/></a><br><br>
											<a
												data-ng-click="openAttachProcess(org)"											
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/om_attach.ico"
												height="20" width="20" title="Attach Process"/></a><br><br>
											<a
												data-ng-click="openEditOrganization(org)"
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/om_edit.ico"
												height="20" width="20" title="Edit"/></a>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
					<div data-ng-if ="org.orgType == 'C'" style="float: left;">
						<table>
							<tr>
								<td>
									<div class="addOrg">
										<div class="orgIntro"
											style="background-color: #F5F6CE; text-align: center;">
											<a
												data-ng-click="getOrgData(org)"
												style="cursor: pointer; text-decoration: none;"> <br>
												<font size="4" color="#000">{{org.orgName}}</font><br><br>
												<b><font size="3" color="#000">{{org.orgId}}</font></b>
											</a>
										</div>
										<div class="orgSideMenu"
											style="background-color: #E5E67E; text-align: center;">
											<a
												data-ng-click="removeOrganization(org.id)"
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/remove.ico"
												height="20" width="20" title="Delete"/></a><br><br>
											<a
												data-ng-click="openAttachProcess(org)"										
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/om_attach.ico"
												height="20" width="20" title="Attach Process"/></a><br><br>
											<a
												data-ng-click="openEditOrganization(org)"
												class="sideMenuLink"><img
												src="<%=request.getContextPath()%>/resources/images/om_edit.ico"
												height="20" width="20" title="Edit"/></a>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<table>
					<tr>
						<td>
							<div class="addOrg"
								style="background-color: #E0E6F8; text-align: center;">
								<a data-ng-click="selectOrganization()"
									style="cursor: pointer;"> <br> <font size="4">Add
										New Organization..</font>
								</a>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</fieldset>
	</div>
	<br>
	<div data-ui-view="orgData" style="width: 1170px;">
	</div>
</body>
</html>