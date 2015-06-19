<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.processVersion {
	height: 350px;
	width: 99%;
}
</style>
</head>
<body>
	<div id="procBox">
		<fieldset class="processVersion">
			<legend>
				<b><font size="3">PROCESS VERSION DETAILS</font></b>
			</legend>
			<div style="height: 330px; background-color: #FFF;">
				<br>
				<table style="border-collapse: collapse; margin:10px;">
					<tr>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">VERSION</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">NOTATION</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">MODIFIED BY</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">DATE MODIFIED</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">COMMENTS</th>
					</tr>
					<tr data-ng-repeat="prov in procVersions">
						<td style="width: 10%; border: 1px solid #1E61CC;">{{prov.provVer}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{prov.provNotn}}</td>
						<td style="width: 35%; border: 1px solid #1E61CC;">{{prov.provModfBy}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{prov.provModfDt}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{prov.provComment}}</td>
					</tr>
				</table>
			</div>
		</fieldset>
	</div>
</body>
</html>