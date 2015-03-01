var q = function() {
	setTimeout(scrollTo, 0, 0, 0);
	var availHeight = $(window).height();
	var availWidth = $(window).width();
	$('.header').css('background-size', '' + availWidth + 'px 90px')
	$('#main').css('height', availHeight - 105);
	$('#content').css('width',availWidth+10);
	$('#headimgdiv').css({
		width : availWidth - 90
	});
	var sheetwidth = 0;
	$('.msheet').each(function(i, val) {
		
		//alert('scrollWidth:'+$(val)[0].scrollWidth);
		// alert('clientWidth:'+$(val)[0].clientWidth);
		sheetwidth = sheetwidth + $(val)[0].scrollWidth + 10;
	});
	var width1 =   sheetwidth+availWidth+1300;
	$('#main').css({
	width : width1
	});
	if(width1>availWidth){
		//$('.header').css('background-size', '' + width1 + 'px 90px');
    	//$('.header').css('width', width1);
	}
	$('#main')[0].clientWidth=width1;
	$('iframe').prop('height', 390);
	$('iframe').prop('width', 410);

}