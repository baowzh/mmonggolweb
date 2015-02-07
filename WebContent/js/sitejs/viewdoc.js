$(window).on("load", function(e) {
	setpagewidth();
})
var setpagewidth = function() {
	var height = $(window).height();
	var width = $('#condiv')[0].scrollWidth;
	var sheetwidth = 0;
	var count = 0;
	var postSheets=0;
	$('.postSheet').each(function(i, val) {
		postSheets = postSheets + $(val)[0].scrollWidth + 50;
	});
	$('#commentlist').css({width : postSheets});
	$('.msheet').each(function(i, val) {
		sheetwidth = sheetwidth + $(val)[0].scrollWidth + 10;
		count++;

	});
	var agentkind=0;
	agentkind=$('#agentkind').val();
	var width1 = width + sheetwidth + 200;
	if (count == 0) {
		width1 = width + sheetwidth + 1200
	} else {
		//if(agentkind==1){
			width1 = width + sheetwidth + 1200;
		//}
		
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
