<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%-- <script src="<%= request.getContextPath()%>/resources/js/bps-js.js"></script> --%>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
<!-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script> -->
<!-- <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.contentBox {
	margin-left: 7px;
	margin-top: 5px;
	float: left;
	text-align: left;
}

.ui-widget-overlay {
	opacity: .00 !important;
	filter: Alpha(Opacity = 50) !important;
	background-color: rgb(50, 50, 50) !important;
}

.procPopUp {
	display: none;
	font-family: Times;
	font-size: 14px;
}
</style>
<script type="text/javascript">
	function openPopupWindow(id) {
		$(id).dialog({ modal: true, height: 400, width: 450, closeOnEscape: true}).prev(".ui-dialog-titlebar").css("background","white");
	}
</script>
</head>
<body>
	<div class="contentBox">
		<div data-ui-view="procs" style="width: 1170px;">
		</div>
	</div>
</body>
</html>