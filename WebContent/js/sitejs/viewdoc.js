$(window).on("load", function(e) {
	setpagewidth();
})
var setpagewidth = function() {
	var height = $(window).height();
	var width = $('#condiv')[0].scrollWidth;
	var sheetwidth = 0;
	var count = 0;
	$('.msheet').each(function(i, val) {
		sheetwidth = sheetwidth + $(val)[0].scrollWidth + 10;
		count++;

	});
	var width1 = width + sheetwidth + 200;
	if (count == 0) {
		width1 = width + sheetwidth + 1000
	} else {
		width1 = width + sheetwidth + 1000;
	}

	// $(document).width(width1);
	//$('.readerl').css({height : height - 60});
	$('#condiv').css({
		height : height - 60,
		width : width1
	});
	width = $('#condiv')[0].scrollWidth;
	$('.viewhead').css({
		width : width
	});

}
