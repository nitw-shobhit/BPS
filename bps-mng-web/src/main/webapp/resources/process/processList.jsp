<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.process {
	height: 330px;
	width: 99%;
}
</style>
</head>
<body>
	<div id="procBox">
		<fieldset class="process">
			<legend>
				<b><font size="3">MY PROCESSES</font></b>
			</legend>
			<div style="height: 300px; background-color: #FFF;">
				<br>
				<table style="border-collapse: collapse; margin:10px;">
					<tr>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">ID</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">NAME</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">DESCRIPTION</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">NOTATION</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">CURRENT VER</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">AUTHOR</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">ACTION</th>
					</tr>
					<tr data-ng-repeat="proc in processList">
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procId}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procName}}</td>
						<td style="width: 35%; border: 1px solid #1E61CC;">{{proc.procDesc}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procNotn}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procCurrVer}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procAuthor}}</td>
						<td style="width: 15%; border: 1px solid #1E61CC;">&nbsp;&nbsp;
							<a onclick="openPopupWindow('#settingsWindow')"
								style="cursor: pointer;"><img width = "24" height = "24"
								src="<%= request.getContextPath()%>/resources/images/settings.ico" /></a>
		                	&nbsp;|&nbsp;
		                	<a
								data-ng-click="getProcVersions(proc.id)"
								style="cursor: pointer;"><img width = "24" height = "24"
								src="<%= request.getContextPath()%>/resources/images/eye.ico" />
							</a>
	                		&nbsp;|&nbsp;<a
								href="/bps-mng-web/mngProcess/deleteProcess.do?idProcess={{proc.id}}"
								style="cursor: pointer;"><img width = "24" height = "24"
								src="<%= request.getContextPath()%>/resources/images/delete.ico" /></a>
						</td>
					</tr>
				</table>
				<a onclick="openPopupWindow('#newProcWindow')"
							style="cursor: pointer; margin-left: 10px; margin-top: 10px;"><img height="24" width="24"
							src="<%= request.getContextPath()%>/resources/images/add.png" /></a>
			</div>
		</fieldset>
	</div>
	<br>
	<div data-ui-view="procData" style="width: 1170px;">
	</div>
</body>
</html>