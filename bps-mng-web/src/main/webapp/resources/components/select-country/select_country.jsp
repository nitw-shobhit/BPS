<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="<%= request.getContextPath()%>/resources/components/select-country/js/jquery/jquery-1.9.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources/components/select-country/css/msdropdown/dd.css" />
<script src="<%= request.getContextPath()%>/resources/components/select-country/js/msdropdown/jquery.dd.js"></script>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources/components/select-country/css/msdropdown/flags.css" />
<script>
$(document).ready(function(e) {		
	$("#countries").msDropdown({roundedBorder:false});
});
</script>
</head>
<body>
	<select data-ng-change="setLocale()" data-ng-model="locale" name="countries" id="countries" style="width: 105px; margin-right:10px; margin-top:2px; text-align: left;">
		<option value='en' data-ng-selected="locale == 'en'" data-image="<%= request.getContextPath()%>/resources/components/select-country/images/msdropdown/icons/blank.gif" data-imagecss="flag gb" data-title="United Kingdom">English</option>
		<option value='es' data-ng-selected="locale == 'es'" data-image="<%= request.getContextPath()%>/resources/components/select-country/images/msdropdown/icons/blank.gif" data-imagecss="flag es" data-title="Spain">Spanish</option>
		<option value='fr' data-ng-selected="locale == 'fr'" data-image="<%= request.getContextPath()%>/resources/components/select-country/images/msdropdown/icons/blank.gif" data-imagecss="flag fr" data-title="France">French</option>
		<option value='it' data-ng-selected="locale == 'it'" data-image="<%= request.getContextPath()%>/resources/components/select-country/images/msdropdown/icons/blank.gif" data-imagecss="flag it" data-title="Italy">Italian</option>
    </select>
</body>
</html>
