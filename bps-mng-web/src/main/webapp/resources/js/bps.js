function openPopupWindow(id) {
	$(id).dialog({
		modal : true,
		height : 250,
		width : 700,
		closeOnEscape : true,
		open : function() {
			$('.ui-widget-overlay').addClass('custom-overlay');
		},
		close : function() {
			$('.ui-widget-overlay').removeClass('custom-overlay');
		}
	}).prev(".ui-dialog-titlebar").css("background", "white");
}

function openClosePopupWindow(id1, id2) {
	$(id1).dialog("close");
	$(id2).dialog({
		modal : true,
		height : 450,
		width : 520,
		closeOnEscape : true,
		open : function() {
			$('.ui-widget-overlay').addClass('custom-overlay');
		},
		close : function() {
			$('.ui-widget-overlay').removeClass('custom-overlay');
		}
	}).prev(".ui-dialog-titlebar").css("background", "white");
}

function openEditPopupWindow(id, idVal) {
	$('#idVal').val(idVal);
	$(id).dialog({
		modal : true,
		height : 450,
		width : 520,
		closeOnEscape : true,
		open : function() {
			$('.ui-widget-overlay').addClass('custom-overlay');
		},
		close : function() {
			$('.ui-widget-overlay').removeClass('custom-overlay');
		}
	}).prev(".ui-dialog-titlebar").css("background", "white");
}