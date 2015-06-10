<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<%= request.getContextPath()%>/resources/js/jquery.js" type="text/javascript"></script>
<script src="<%= request.getContextPath()%>/resources/js/jquery-ui.custom.js" type="text/javascript"></script>
<script src="<%= request.getContextPath()%>/resources/js/jquery.fancytree.js" type="text/javascript"></script>
<link href="<%= request.getContextPath()%>/resources/css/ui.fancytree.css" rel="stylesheet" type="text/css" />
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
		height: 100%;
	}
	div#tree {
		position: absolute;
		height: 95%;
		width: 95%;
		padding: 5px;
		margin-right: 16px;
	}
	ul.fancytree-container {
		height: 100%;
		width: 100%;
		background-color: transparent;
	}
	span.fancytree-title {
		color: white;
		text-decoration: none;
	}
	span.fancytree-focused span.fancytree-title {
		outline-color: white;
	}
	span.fancytree-node:hover span.fancytree-title,
	span.fancytree-active span.fancytree-title,
	span.fancytree-active.fancytree-focused span.fancytree-title,
	.fancytree-treefocus span.fancytree-title:hover,
	.fancytree-treefocus span.fancytree-active span.fancytree-title {
		color: #39414A;
	}
	span.external span.fancytree-title:after {
		content: "";
		background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAMAAAC67D+PAAAAFVBMVEVmmcwzmcyZzP8AZswAZv////////9E6giVAAAAB3RSTlP///////8AGksDRgAAADhJREFUGFcly0ESAEAEA0Ei6/9P3sEcVB8kmrwFyni0bOeyyDpy9JTLEaOhQq7Ongf5FeMhHS/4AVnsAZubxDVmAAAAAElFTkSuQmCC") 100% 50% no-repeat;
		padding-right: 13px;
	}
	/* Remove system outline for focused container */
	.ui-fancytree.fancytree-container:focus {
		outline: none;
	}
	.ui-fancytree.fancytree-container {
		border: none;
	}
</style>

<script type="text/javascript">
	$(function(){
		// --- Initialize sample trees
		$("#tree").fancytree({
			autoActivate: false, // we use scheduleAction()
			autoCollapse: true,
//			autoFocus: true,
			autoScroll: true,
			clickFolderMode: 3, // expand with single click
			minExpandLevel: 2,
			tabbable: false, // we don't want the focus frame
			// scrollParent: null, // use $container
			focus: function(event, data) {
				var node = data.node;
				// Auto-activate focused node after 1 second
				if(node.data.href){
					node.scheduleAction("activate", 1000);
				}
			},
			blur: function(event, data) {
				data.node.scheduleAction("cancel");
			},
			activate: function(event, data){
				var node = data.node,
					orgEvent = data.originalEvent;

				if(node.data.href){
					window.open(node.data.href, (orgEvent.ctrlKey || orgEvent.metaKey) ? "_blank" : node.data.target);
				}
			},
			click: function(event, data){ // allow re-loads
				var node = data.node,
					orgEvent = data.originalEvent;

				if(node.isActive() && node.data.href){
					// data.tree.reactivate();
					window.open(node.data.href, (orgEvent.ctrlKey || orgEvent.metaKey) ? "_blank" : node.data.target);
				}
			}
		});
	});
</script>
</head>
<body>
	<div class="main">
		<div class="contentBox">
			<br>
			
			<div id="tree">
				<ul>
					<li class="folder">User Settings
					<ul>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/userProfileSettings.jsp">User Profile</a>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/userPrivilegeSettings.jsp">User Privileges</a>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/userGroupSettings.jsp">User Groups</a>
					</ul>
					<li class="folder">Organization Settings
					<ul>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/schoolSettings.jsp">School</a>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/universitySettings.jsp">University</a>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/companySettings.jsp">Company</a>
					</ul>
					<li class="folder">User Settings
					<ul>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/userProfileSettings.jsp">User Profile</a>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/userPrivilegeSettings.jsp">User Privileges</a>
						<li class="external"><a target="settingsTarget" href="<%= request.getContextPath()%>/resources/settings/userGroupSettings.jsp">User Groups</a>
					</ul>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>