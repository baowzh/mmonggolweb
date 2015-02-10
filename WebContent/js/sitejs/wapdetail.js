var q = function() {
	setTimeout(scrollTo, 0, 0, 0);
	var availHeight=$(window).height();
	var availWidth=$(window).width();
	$('.header').css('background-size', '' + availWidth + 'px 90px')
	$('#wrap').css('height', availHeight);
	$('#main').css('height', availHeight - 20);
	$('#condiv').css('width', availHeight - 100);
	$('#headimgdiv').css({width:availWidth-90});
	$(".con img").each(
			function() {
				$(this).addClass("rotateimg");
				var height = this.height;
				var width = this.width;
				if (height == undefined || height == null) {
					height = this.clientHeight;
				}
				if (width == undefined || width == null) {
					width = this.clientWidth;
				}
				$(this).attr('height', height);
				$(this).attr('width', width);
				$(this).after(
						'<div style="height:' + (width - height)
								+ 'px;"></div>');
			});
}