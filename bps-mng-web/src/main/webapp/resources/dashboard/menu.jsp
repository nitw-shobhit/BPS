<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
	<style type="text/css">
		.menuLink {
			text-decoration: none;
			color: black;
			cursor: pointer;
		}
		.menuBg {
			border-left: 1px solid;
		}
		.menuBg:hover {
			border-left: 1px solid;
			background: #FFF;
		}
		.menuSelect {
			background: #FFF;
		}
	</style>
	<script type="text/javascript">
		$(function() {
		$('td').click(
			function() {
				$(this).parents('table').find('td').each(
				function(index, element) {
					$(element).removeClass('menuSelect');
				});
				$(this).addClass('menuSelect');
			});
		});
	</script>
</head>
<body>
	<div style="border-bottom: 2px solid white; border-top: 2px solid white; height: 40px; ">
		<div style="float: left;">
			<table>
				<tr>
					<td class="menuBg" style="border-left: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-ng-click="home()" class="menuLink"><img src="<%= request.getContextPath()%>/resources/images/menu/m_home.ico" title="HOME" height="24" width="24" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
					<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-ng-click="orgs()" class="menuLink"><img src="<%= request.getContextPath()%>/resources/images/menu/m_org.ico" title="ORGANIZATION" height="36" width="36" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
					<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-ng-click="procs()" class="menuLink"><img src="<%= request.getContextPath()%>/resources/images/menu/m_process.ico" title="PROCESS" height="26" width="26" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
					<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-ng-click="logs()" class="menuLink"><img src="<%= request.getContextPath()%>/resources/images/menu/m_log.ico" title="LOG" height="28" width="28" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
					<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-ng-click="stngs()" class="menuLink"><img src="<%= request.getContextPath()%>/resources/images/menu/m_setting.ico" title="SETTINGS" height="28" width="28" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
					<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-ng-click="lgot()" class="menuLink"><img src="<%= request.getContextPath()%>/resources/images/menu/m_logout.ico" title="LOGOUT" height="26" width="26" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
					<td class="menuBg" style="border-right: 1px solid;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-ng-click="help()" class="menuLink"><img src="<%= request.getContextPath()%>/resources/images/menu/m_help.ico" title="HELP" height="26" width="26" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
			</table>
		</div>
		<div style="float: right;">
			<%@include file="../components/select-country/select_country.jsp" %>
		</div>
	</div>
</body>
</html>