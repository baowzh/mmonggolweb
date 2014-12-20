/**
 * 
 */
var q = function() {
	setTimeout(scrollTo, 0, 0, 0);
	var availWidth = parseInt(window.screen.availWidth);
	var availHeight = parseInt(window.screen.availHeight);
	$('#wrap').css('height', availHeight);
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