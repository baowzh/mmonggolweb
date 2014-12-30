/**
 * 
 */
var q = function() {
	setTimeout(scrollTo, 0, 0, 0);
	var availHeight = $(window).height();
	var availWidth = $(window).width();
	$('.header').css('background-size', '' + availWidth + 'px 90px')
	$('#wrap').css('height', availHeight-90);
	$('#wrap').css('width', availWidth);
	$('#main').css('height', 400);
	$('#main').css('width', availWidth);
};
/**
 * 
 */
var openpage = function(pageindex) {
	var docchannel = $('#docchannel').val();
	window.location.href = 'phonelist.do?docchannel=' + docchannel
			+ '&pageindex=' + pageindex;
}