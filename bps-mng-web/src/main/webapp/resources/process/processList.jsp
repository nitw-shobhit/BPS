<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
</head>
<body>
	<div id="procBox">
		<fieldset class="process">
			<legend>
				<b><font size="3">MY PROCESSES</font></b>
			</legend>
			<div style="height: 300px;">
				<display:table name="sessionScope.processList" pagesize="3"
					export="false" sort="list" uid="procList">
					<display:column property="procId" title="ID" sortable="true"
						headerClass="sortable" style="width:6%;" />
					<display:column property="procName" title="NAME" sortable="true"
						headerClass="sortable" style="width:10%;" />
					<display:column property="procAuthor" title="AUTHOR" sortable="true"
						headerClass="sortable" style="width:7%;" />
					<display:column property="procNotn" title="NOTATION" sortable="true"
						headerClass="sortable" style="width:10%;" />
					<display:column property="procDesc" title="DESCRIPTION"
						sortable="true" headerClass="sortable" style="width:34%;" />
					<display:column property="procCurrVer" title="CURRENT VER"
						sortable="true" headerClass="sortable" style="width:15%;" />
					<display:column title="ACTION" sortable="false" style="width:18%;">
						<a onclick="openPopupWindow('#settingsWindow')"
							style="cursor: pointer;"><img class="icon"
							src="<%= request.getContextPath()%>/resources/images/settings.ico" /></a>
	                	&nbsp;|&nbsp;<a
							onclick="openProcessVersions(${procList.id})"
							style="cursor: pointer;"><img class="icon"
							src="<%= request.getContextPath()%>/resources/images/eye.ico" /></a>
	                	&nbsp;|&nbsp;<a
							href="/bps-mng-web/mngProcess/deleteProcess.do?idProcess=${procList.id}"
							style="cursor: pointer;"><img class="icon"
							src="<%= request.getContextPath()%>/resources/images/delete.ico" /></a>
					</display:column>
				</display:table>
				<a onclick="openPopupWindow('#newProcWindow')"
					style="cursor: pointer;"><img height="24" width="24"
					src="<%= request.getContextPath()%>/resources/images/add.png" /></a>
		</div>
		</fieldset>
	</div>
	<div data-ui-view="procData" style="width: 1170px;">
	</div>
</body>
</html>