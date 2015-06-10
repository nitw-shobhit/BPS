<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
	<style type="text/css">
		.main {
			background: url(<%= request.getContextPath()%>/resources/images/background.jpg) no-repeat center center fixed;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
		}
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
	<div class="main">
		<table>
			<tr>
				<td class="menuBg" style="border-left: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath()%>/resources/home.jsp" class="menuLink" target="contentFrame" ><img src="<%= request.getContextPath()%>/resources/images/menu/m_home.ico" title="HOME" height="24" width="24" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
				<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/bps-mng-web/mngOrg/getOrganizationData.do" class="menuLink" target="contentFrame" ><img src="<%= request.getContextPath()%>/resources/images/menu/m_org.ico" title="ORGANIZATION" height="36" width="36" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
				<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/bps-mng-web/mngProcess/getProcessData.do" class="menuLink" target="contentFrame" ><img src="<%= request.getContextPath()%>/resources/images/menu/m_process.ico" title="PROCESS" height="26" width="26" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
				<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath()%>/resources/logs.jsp" class="menuLink" target="contentFrame" ><img src="<%= request.getContextPath()%>/resources/images/menu/m_log.ico" title="LOG" height="28" width="28" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
				<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath()%>/resources/settings.jsp" class="menuLink" target="contentFrame" ><img src="<%= request.getContextPath()%>/resources/images/menu/m_setting.ico" title="SETTINGS" height="28" width="28" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
				<td class="menuBg" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath()%>/index.jsp" class="menuLink" target="_top" ><img src="<%= request.getContextPath()%>/resources/images/menu/m_logout.ico" title="LOGOUT" height="26" width="26" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
				<td class="menuBg" style="border-right: 1px solid;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath()%>/resources/help.jsp" class="menuLink" target="contentFrame" ><img src="<%= request.getContextPath()%>/resources/images/menu/m_help.ico" title="HELP" height="26" width="26" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
</body>
</html>