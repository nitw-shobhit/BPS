<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<script type="text/ng-template" id="confirmBox">
<p>Are you sure you want to continue?</p>
<div class="ngdialog-buttons">
    <input type="submit" class="btn btn-primary" name="Yes" />
	<button type="button" class="btn btn-secondary" data-ng-click="closeThisDialog(0)">No</button>
</div>
</script>
</head>
</html>