<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
</head>
<body>
	<div id="processVersion" class="contentBox" style="display: none;">
		<b><font size="4">PROCESS VERSIONS</font></b> <br>
		<br>
		<div style="height: 400px;">
			<display:table name='${processVerMap.get(selectedProc)}' pagesize="7"
				export="false" uid="procVerList">
				<display:column property="provVer" title="VERSION" sortable="true"
					headerClass="sortable" style="width:6%;" />
				<display:column property="provNotn" title="NOTATION" sortable="true"
					headerClass="sortable" style="width:10%;" />
				<display:column property="provModfBy" title="MODIFIED BY"
					sortable="true" headerClass="sortable" style="width:7%;" />
				<display:column property="provModfDt" title="MODIFIED DATE"
					sortable="true" headerClass="sortable" style="width:10%;" />
				<display:column property="provComment" title="COMMENT"
					sortable="true" headerClass="sortable" style="width:34%;" />
			</display:table>
		</div>
	</div>	
</body>
</html>