/**
 * 
 */
var q = function() {
	setTimeout(scrollTo, 0, 0, 0);
	//var availWidth = parseInt(window.screen.availWidth);
	//var availHeight = parseInt(window.screen.availHeight);
	var availHeight=$(window).height();
	var availWidth=$(window).width();
	$('#wrap').css('height', availHeight);
	$('#wrap').css('width', 384);
	$('#main').css('height', availHeight - 90);
	$('#main').css('width', 384);
	$('#montdlist').css('width', availHeight - 92);
};
/**
 * 
 */
var openpage = function(pageindex) {
	var docchannel = $('#docchannel').val();
	window.location.href = 'phonelist.do?docchannel=' + docchannel
			+ '&pageindex=' + pageindex;
}