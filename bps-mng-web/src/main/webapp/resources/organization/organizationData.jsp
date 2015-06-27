<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business Process System</title>
<style type="text/css">
.organizationData {
	height: 470px;
	width: 100%;
}
.tabBox {
	font-size: 15px;
	color: rgb(62, 62, 62);
	margin: 10px;
}
.tabHead {
	float: left;
	border-radius: 5px;
	border: solid 1px rgb(198, 198, 198);
	padding: 7px 11px;
	background-color: rgb(248,248,248);
	margin-left: 10px;
}
.tabList {
	float: left;
	background-color: rgb(200,200,200);
	padding: 5px 19px;
	margin: 5px 2px 5px 0px;
	color: black;
	list-style: none;
}
tabList:hover, tabList:hover {
	background-color: #1E61CC;
	color:white;
}
tabList {
	text-decoration: none;
	color: white;
	text-shadow: 1px 0px 3px rgb(157, 157, 157);
}
tabList:nth-child(1) { border-radius: 4px 0px 0px 4px; margin-left: 1px;}
tabList:nth-child(3) { border-radius: 0px 4px 4px 0px;}
.active {
	background-color: #1E61CC;
}
.tabLink {
	font-weight: bold;
	cursor: pointer;
	color: white;
}

</style>
</head>
<body>
	<fieldset class="organizationData">
		<legend><b><font size="3">ORGANIZATIONS DETAILS</font></b></legend>
		<section style="background-color: #FFF; height: 400px;">
			<br>
			<ul class="tabHead" data-ng-init="tab = 1">
				<li class="tabList" data-ng-class="{active:tab===1}"> 
					<a data-ng-click="tab = 1" class="tabLink" >ORGANIZATION</a>	
				</li>
				<li class="tabList" data-ng-class="{active:tab===2}"> 
					<a data-ng-click="tab = 2" class="tabLink" >PROCESS</a> 
				</li>
				<li class="tabList" data-ng-class="{active:tab===3}"> 
					<a data-ng-click="tab = 3" class="tabLink" >STATISTICS</a> 
				</li>
			</ul>
			<br><br><br>
			<div class="tabBox" data-ng-show="tab === 1">
				<table style="padding: 10px; border-collapse: collapse; border-spacing: 5px;">
					<tr>
						<td style="background-color: #1E61CC; color: #FFF; border: 1px solid #1E61CC;"><b>ID : </b></td>
						<td style="border: 1px solid #1E61CC;">{{selectedOrg.orgId}}</td>
					</tr>
					<tr>
						<td style="background-color: #1E61CC; color: #FFF; border: 1px solid #1E61CC;"><b>NAME : </b></td>
						<td style="border: 1px solid #1E61CC;">{{selectedOrg.orgName}}</td>
					</tr>
					<tr>
						<td style="background-color: #1E61CC; color: #FFF; border: 1px solid #1E61CC;"><b>TYPE : </b></td>
						<td style="border: 1px solid #1E61CC;">{{selectedOrg.orgType}}</td>
					</tr>
					<tr>
						<td style="background-color: #1E61CC; color: #FFF; border: 1px solid #1E61CC;"><b>DESC : </b></td>
						<td style="border: 1px solid #1E61CC;">{{selectedOrg.orgDesc}}</td>
					</tr>
					<tr>
						<td style="background-color: #1E61CC; color: #FFF; border: 1px solid #1E61CC;"><b>ADDRESS : </b></td>
						<td style="border: 1px solid #1E61CC;">{{selectedOrg.orgAddr}}</td>
					</tr>
					<tr>
						<td style="background-color: #1E61CC; color: #FFF; border: 1px solid #1E61CC;"><b>CREATED DATE : </b></td>
						<td style="border: 1px solid #1E61CC;">{{selectedOrg.orgCrDt}}</td>
					</tr>
				</table>	
			</div>
			<div class="tabBox" data-ng-show="tab === 2">
				<table style="border-collapse: collapse;">
					<tr>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">ID</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">NAME</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">DESCRIPTION</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">NOTATION</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">VERSION</th>
						<th style="border: 1px solid #1E61CC; color: white; background-color: #1E61CC;">AUTHOR</th>
					</tr>
					<tr data-ng-repeat="proc in orgProcs">
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procId}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procName}}</td>
						<td style="width: 50%; border: 1px solid #1E61CC;">{{proc.procDesc}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procNotn}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procCurrVer}}</td>
						<td style="width: 10%; border: 1px solid #1E61CC;">{{proc.procAuthor}}</td>
					</tr>
				</table>
				
				
			</div>
			<div class="tabBox" data-ng-show="tab === 3"> Statistics
			</div>
		</section>		
	</fieldset>
</body>
</html>