<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="newProcWindow" class="procPopUp" title="Add Process"
		style="background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat;">
		<br>
		<br>
		<form:form action="/bps-mng-web/mngProcess/addProcess.do"
			method="POST">
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
	<div id="settingsWindow" class="procPopUp" title="Manage Process"
		style="display: none;background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat;">
		<br>
		<br>
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