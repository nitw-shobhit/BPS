<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.inputBox {
	border: none;
	border-bottom: solid 2px #c9c9c9;
	transition: border 0.3s;
	width: 200px;
}
</style>
</head>
<body>
<table style="margin-left: 10px;">
	<tr>
		<td style="font-weight: bold">Unique ID<font color="red">*</font></td>
		<td>&nbsp;&nbsp;<textarea rows="1" class="inputBox"
				style="resize: none;" data-ng-model ="ngDialogData.orgId" disabled="disabled"></textarea></td>
	</tr>
	<tr>
		<td style="font-weight: bold">Name</td>
		<td>&nbsp;&nbsp;<textarea rows="1" class="inputBox"
				style="resize: none;" data-ng-model ="ngDialogData.orgName"></textarea></td>
	</tr>
	<tr>
		<td style="font-weight: bold">Address</td>
		<td>&nbsp;&nbsp;<textarea rows="2" class="inputBox"
				style="resize: none;" data-ng-model ="ngDialogData.orgAddr"></textarea></td>
	</tr>
	<tr>
		<td style="font-weight: bold">Description</td>
		<td>&nbsp;&nbsp;<textarea rows="3" class="inputBox"
				style="resize: none;" data-ng-model ="ngDialogData.orgDesc"></textarea></td>
	</tr>
</table>
</body>
</html>