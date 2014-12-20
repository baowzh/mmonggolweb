var q=function() {
		setTimeout(scrollTo, 0, 0, 0);
		var availWidth = parseInt(window.screen.availWidth);
		var availHeight = parseInt(window.screen.availHeight);
		$('#wrap').css('height',availHeight);
		$('#main').css('height',availHeight-20);
		$('#condiv').css('width',availHeight-50);
		var imgs=$('.con img');
		for(i in imgs){
			//$(imgs[i]).addClass('conimg');
		}
	}