/**
 * 
 */
var q = function() {
	setTimeout(scrollTo, 0, 0, 0);
	var availHeight = $(window).height();
	var availWidth = $(window).width();
	$('.wrap').css('width', availWidth);
	$('.listCardBody').css('width', availWidth-36);
	$('#slider').css({height:availHeight*0.3});
	$('#slider').slider({loop:true});
	//$('.footer').css({'width':availWidth});

};
/**
 * 
 */
var openpage = function(pageindex) {
	var docchannel = $('#docchannel').val();
	window.location.href = 'phonelist.do?docchannel=' + docchannel
			+ '&pageindex=' + pageindex;
}