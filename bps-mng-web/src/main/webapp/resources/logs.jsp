<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html data-ng-app>
<head>
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/css/displaytag.css" type="text/css" />
<script src="<%= request.getContextPath()%>/resources/js/bps-js.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
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
			alert(id);
			document.getElementById('hid').value = id;
			alert("completed");
		}
	</script>
</head>
<body>
	<div class="main">
		<div class="contentBox">

		</div>
	</div>
</body>
</html>