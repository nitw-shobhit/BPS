<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<jsp:include page="organization/addOrganization.jsp"/>
<jsp:include page="organization/editOrganization.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/css/displaytag.css" type="text/css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.main {
	background: url(<%=request.getContextPath()%>/resources/images/background.jpg)
		no-repeat center center fixed;
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
	height: 190px;
	width: 96%;
}

.addOrg {
	height: 130px;
	width: 200px;
	box-shadow: 7px 7px 7px #888;
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
.orgSideMenu:hover {
	height: 130px;
	width: 30px;
	float: left;
	opacity: 1;
  	filter: alpha(opacity=100);
  	-webkit-transition: all .8s ease-out;
  	cursor: pointer;
}

.orgPopUp {
	display: none;
	font-family: Arial;
	font-size: 20px;
}

.sideMenuLink {
	float: right;
	margin-top: 5px;
	margin-right: 5px;
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

.organizationData {
	height: 470px;
	width: 96%;
}

.ui-widget-overlay.custom-overlay {
	background-color: black;
	background-image: none;
	opacity: 0.6;
	z-index: 1001;
}
</style>
<script type="text/javascript">
	function openPopupWindow(id) {
		$(id).dialog({
			modal : true,
			height : 250,
			width : 700,
			closeOnEscape : true,
			open : function() {
				$('.ui-widget-overlay').addClass('custom-overlay');
			},
			close : function() {
				$('.ui-widget-overlay').removeClass('custom-overlay');
			}
		}).prev(".ui-dialog-titlebar").css("background", "white");
	}
	
	function openClosePopupWindow(id1, id2) {
		$(id1).dialog("close");
		$(id2).dialog({
			modal : true,
			height : 450,
			width : 520,
			closeOnEscape : true,
			open : function() {
				$('.ui-widget-overlay').addClass('custom-overlay');
			},
			close : function() {
				$('.ui-widget-overlay').removeClass('custom-overlay');
			}
		}).prev(".ui-dialog-titlebar").css("background", "white");
	}
	
	function openEditPopupWindow(id, idVal) {
		$('#idVal').val(idVal);
		$(id).dialog({
			modal : true,
			height : 450,
			width : 520,
			closeOnEscape : true,
			open : function() {
				$('.ui-widget-overlay').addClass('custom-overlay');
			},
			close : function() {
				$('.ui-widget-overlay').removeClass('custom-overlay');
			}
		}).prev(".ui-dialog-titlebar").css("background", "white");
	}
</script>
</head>
<body>
	<div class="main">
		<div class="contentBox">
			<br>
			<div id="orgBox">
				<fieldset class="organization">
					<legend>
						<b><font size="3">MY ORGANIZATIONS</font></b>
					</legend>
					<div style="overflow: auto; width: 1080px;">
						<table cellpadding="12">
							<tr>
								<c:forEach items="${organizationList}" var="org">
									<c:choose>
										<c:when test="${org.orgType == 'S'}">
											<td>
												<div class="addOrg">
													<div class="orgIntro"
														style="background-color: #EFB3B3; text-align: center;">
														<a
															href="/bps-mng-web/mngOrg/getOrganizationProcesses.do?orgId=${org.id}"
															style="cursor: pointer; text-decoration: none;"> <br>
															<font size="4" color="#000">${org.orgName}</font><br><br>
															<b><font size="3" color="#000">${org.orgId}</font></b>
														</a>
													</div>
													<div class="orgSideMenu"
														style="background-color: #F29595; text-align: center;">
														<a
															href="/bps-mng-web/mngOrg/deleteOrganization.do?idOrganization=${org.id}"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/remove.ico"
															height="20" width="20" title="Delete"/></a><br><br>
														<a
															href="#"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/om_attach.ico"
															height="20" width="20" title="Attach Process"/></a><br><br>
														<a
															onclick="openEditPopupWindow('#editSchOrg', ${org.id})"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/om_edit.ico"
															height="20" width="20" title="Edit"/></a>
													</div>
												</div>
											</td>
										</c:when>
										<c:when test="${org.orgType == 'U'}">
											<td>
												<div class="addOrg">
													<div class="orgIntro"
														style="background-color: #BCF5A9; text-align: center;">
														<a
															href="/bps-mng-web/mngOrg/getOrganizationProcesses.do?orgId=${org.id}"
															style="cursor: pointer; text-decoration: none;"> <br>
															<font size="4" color="#000">${org.orgName}</font><br><br>
															<b><font size="3" color="#000">${org.orgId}</font></b>
														</a>
													</div>
													<div class="orgSideMenu"
														style="background-color: #9BE781; text-align: center;">
														<a
															href="/bps-mng-web/mngOrg/deleteOrganization.do?idOrganization=${org.id}"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/remove.ico"
															height="20" width="20" title="Delete"/></a><br><br>
														<a
															href="#"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/om_attach.ico"
															height="20" width="20" title="Attach Process"/></a><br><br>
														<a
															onclick="openEditPopupWindow('#editSchOrg', ${org.id})"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/om_edit.ico"
															height="20" width="20" title="Edit"/></a>
													</div>
												</div>
											</td>
										</c:when>
										<c:when test="${org.orgType == 'C'}">
											<td>
												<div class="addOrg">
													<div class="orgIntro"
														style="background-color: #F5F6CE; text-align: center;">
														<a
															href="/bps-mng-web/mngOrg/getOrganizationProcesses.do?orgId=${org.id}"
															style="cursor: pointer; text-decoration: none;"> <br>
															<font size="4" color="#000">${org.orgName}</font><br><br>
															<b><font size="3" color="#000">${org.orgId}</font></b>
														</a>
													</div>
													<div class="orgSideMenu"
														style="background-color: #E5E67E; text-align: center;">
														<a
															href="/bps-mng-web/mngOrg/deleteOrganization.do?idOrganization=${org.id}"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/remove.ico"
															height="20" width="20" title="Delete"/></a><br><br>
														<a
															href="#"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/om_attach.ico"
															height="20" width="20" title="Attach Process"/></a><br><br>
														<a
															onclick="openEditPopupWindow('#editSchOrg', ${org.id})"
															class="sideMenuLink"><img
															src="<%=request.getContextPath()%>/resources/images/om_edit.ico"
															height="20" width="20" title="Edit"/></a>
													</div>
												</div>
											</td>
										</c:when>
									</c:choose>
								</c:forEach>
								<td>
									<div class="addOrg"
										style="background-color: #E0E6F8; text-align: center;">
										<a onclick="openPopupWindow('#chooseOrg')"
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
			<div id="orgDetBox">
				<fieldset class="organizationData">
					<legend><b><font size="3">ORGANIZATIONS DETAILS</font></b></legend>
						<br>
						<display:table name="orgProcList" pagesize="5" export="false" sort="list" uid="procList">
			                 <display:column property="procId" title="ID" sortable="true" headerClass="sortable" style="width:6%;" />
			                 <display:column property="procName" title="NAME" sortable="true" headerClass="sortable" style="width:10%;" />
			                 <display:column property="procAuthor" title="AUTHOR" sortable="true" headerClass="sortable" style="width:7%;" />
			                 <display:column property="procNotn" title="NOTATION" sortable="true" headerClass="sortable" style="width:10%;" />
			                 <display:column property="procDesc" title="DESCRIPTION" sortable="true" headerClass="sortable" style="width:34%;" />
			                 <display:column property="procCurrVer" title="CURRENT VER" sortable="true" headerClass="sortable" style="width:15%;"/>
			            </display:table>
				</fieldset>
			</div>
		</div>
	</div>
	<div id="chooseOrg" class="orgPopUp" title="Choose Organization Type">
		<br>
		<table cellpadding="10">
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