<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/css/displaytag.css" type="text/css" />
<script src="<%= request.getContextPath()%>/resources/js/bps-js.js"></script>
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
			margin-left: 5px;
			margin-top: 5px;
		}
		.ui-widget-overlay
		{
		  opacity: .00 !important;
		  filter: Alpha(Opacity=50) !important;
		  background-color: rgb(50, 50, 50) !important;
		}
		.procPopUp
		{
			display: none;
			font-family: Times;
			font-size: 14px;
		}
	</style>
	<script type="text/javascript">
		function openPopupWindow(id) {
			$(id).dialog({ modal: true, height: 400, width: 450, closeOnEscape: true}).prev(".ui-dialog-titlebar").css("background","white");
		}
		function openProcessVersions(id) {
			document.getElementById('selectedProc').value = id;
			document.getElementById('processVersion').style.display = 'block';
		}
	</script>
</head>
<body>
	<div class="main">
		<div class="contentBox">
			<u><b><font size="4">PROCESS</font></b></u>
			<br><br>
			<div style="height: 300px;">
				<display:table name="sessionScope.processList" pagesize="3" export="false" sort="list" uid="procList">
	                <display:column property="procId" title="ID" sortable="true" headerClass="sortable" style="width:6%;" />
	                <display:column property="procName" title="NAME" sortable="true" headerClass="sortable" style="width:10%;" />
	                <display:column property="procAuthor" title="AUTHOR" sortable="true" headerClass="sortable" style="width:7%;" />
	                <display:column property="procNotn" title="NOTATION" sortable="true" headerClass="sortable" style="width:10%;" />
	                <display:column property="procDesc" title="DESCRIPTION" sortable="true" headerClass="sortable" style="width:34%;" />
	                <display:column property="procCurrVer" title="CURRENT VER" sortable="true" headerClass="sortable" style="width:15%;"/>
	                <display:column title="ACTION" sortable="false" style="width:18%;">
	                	<a onclick="openPopupWindow('#settingsWindow')" style="cursor: pointer;"><img class="icon" src="<%= request.getContextPath()%>/resources/images/settings.ico" /></a>
	                	&nbsp;|&nbsp;<a onclick="openProcessVersions(${procList.id})" style="cursor: pointer;"><img class="icon" src="<%= request.getContextPath()%>/resources/images/eye.ico" /></a>
	                	&nbsp;|&nbsp;<a href="/bps-mng-web/mngProcess/deleteProcess.do?idProcess=${procList.id}" style="cursor: pointer;"><img class="icon" src="<%= request.getContextPath()%>/resources/images/delete.ico" /></a>
	                </display:column>
	            </display:table>
	            <a onclick="openPopupWindow('#newProcWindow')" style="cursor: pointer;"><img height="24" width="24" src="<%= request.getContextPath()%>/resources/images/add.png" /></a>
	    	</div>
		</div>
		<input type="hidden" id="selectedProc" />
		<div id="processVersion" class="contentBox" style="display: none;">
			<u><b><font size="4">PROCESS VERSIONS</font></b></u>
			<br><br>
			<div style="height: 400px;">
				<display:table  name='${processVerMap.get(selectedProc)}' pagesize="7" export="false" uid="procVerList">
	                <display:column property="provVer" title="VERSION" sortable="true" headerClass="sortable" style="width:6%;" />
	                <display:column property="provNotn" title="NOTATION" sortable="true" headerClass="sortable" style="width:10%;" />
	                <display:column property="provModfBy" title="MODIFIED BY" sortable="true" headerClass="sortable" style="width:7%;" />
	                <display:column property="provModfDt" title="MODIFIED DATE" sortable="true" headerClass="sortable" style="width:10%;" />
	                <display:column property="provComment" title="COMMENT" sortable="true" headerClass="sortable" style="width:34%;" />
	            </display:table>
	    	</div>
		</div>
	</div>
	<div id="newProcWindow" class="procPopUp" title="Add Process" style="background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat;">
		<br><br>
		<form:form action="/bps-mng-web/mngProcess/addProcess.do" method="POST">
			<div style="background-color: #FFF;">
				<table>
					<tr>
						<td>ID&nbsp;<font color="red">*</font></td>
						<td><input type="text" name="procId" /></td>
					</tr>
					<tr>
						<td>NAME&nbsp;<font color="red">*</font></td>
						<td><input type="text" name="procName" /></td>
					</tr>
					<tr>
						<td>AUTHOR&nbsp;<font color="red">*</font></td>
						<td><input type="text" name="procAuthor" /></td>
					</tr>
					<tr>
						<td>NOTATION&nbsp;<font color="red">*</font></td>
						<td><input type="text" name="procNotn" /></td>
					</tr>
					<tr>
						<td>VERSION&nbsp;<font color="red">*</font></td>
						<td><input type="text" name="procCurrVer" /></td>
					</tr>
					<tr>
						<td>DESCRIPTION&nbsp;<font color="red">*</font></td>
						<td><textarea rows="2" cols="21" name="procDesc"></textarea></td>
					</tr>
				</table>
			</div>
			<input type="submit" value="Add Process" />
		</form:form>
	</div>
	<div id="settingsWindow" class="procPopUp" title="Manage Process" style="display: none;background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat;">
		<br><br>
		<div style="background-color: #FFF;">
			<table>
				<tr>
					<td>ID</td>
					<td></td>
				</tr>
				<tr>
					<td>NAME</td>
					<td></td>
				</tr>
				<tr>
					<td>AUTHOR</td>
					<td></td>
				</tr>
				<tr>
					<td>NOTATION</td>
					<td></td>
				</tr>
				<tr>
					<td>CURRENT VERSION</td>
					<td></td>
				</tr>
				<tr>
					<td>DESCRIPTION</td>
					<td></td>
				</tr>
				<tr>
					<td>NEW VERSION&nbsp;<font color="red">*</font></td>
					<td><input type="file" name="newVersion" /></td>
				</tr>
			</table>
		</div>
		<input type="button" value="Add a new Version" />
	</div>
</body>
</html>