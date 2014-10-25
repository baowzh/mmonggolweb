/* Author:

*/
var winHeight = 0;
var followObjs = [];
function hScroll() {
	addEvent(window, "mousewheel", m, false);
	addEvent(window, "DOMMouseScroll", m, false);
	function m(e) {
		if (!e) {
			var e = window.event;
		}
		var r = 0;
		if (e.wheelDelta) {
			r = e.wheelDelta;
		} else {
			r = -40 * e.detail;
		}
		
		window.scrollBy(-r / 2, 0);
	}

}

function addEvent(el, evt, func) {
	if (el.addEventListener) {
		el.addEventListener(evt, func, false)
	} else {
		el.attachEvent("on" + evt, function(e) {
			func.call(el, e)
		})
	}
}

hScroll();

var wrap_img_idx = 0;
jQuery(document).ready(function($){ 
	$("object").each(function(i){
		bolu_follow_wrap(this);
	});
	
	$(".bolu_follow").each(function(i){
		bolu_follow_wrap(this);
	});
	
	jQuery("img[source]").each(function(i){
		bolu_img_wrap(this);
	});
	//resize();
	Resize_timer = setInterval(function() {
		resize();
	}, 600);

    Img_timer = setInterval(function(){
        imgListen();
    },600);
	
	Follow_Timer = setInterval(function(){bolu_v_layout();},100);
});

//function resize() {
//	tmp = jQuery(window).innerHeight();
//
//	if (tmp != winHeight) {
//		winHeight = tmp;
//		jQuery("#main").css({
//			width : (winHeight) + "px"
//		});
//
//	}
//	jQuery(window).scrollTop(0);
//}
var resizeListener = [];
function addResizeListener(func) {
    resizeListener[resizeListener.length] = func;
}
function resize() {
    var tmp = jQuery(window).innerHeight();
    if (tmp != winHeight) {
        winHeight = tmp;
        if(BROWSER.iemode===8){
            jQuery("#main").css({
                height : (winHeight) + "px"
            });
        }else{
            jQuery("#main").css({
                width : (winHeight) + "px"
            });
        }
        //jQuery(window).scrollTop(0);
        for (var i = 0; i < resizeListener.length; i ++) {
            resizeListener[i](winHeight);
        }
    }
}
/*
 * 图片大小跟着窗口大小变化
 * 保存图片原始尺寸 比较原始尺寸和先div高度
 */
$mark = 0;
function imgListen(){
    var $images = $(".news-thumb img");
    $images.each(function(index,item) {
        $divwidth = $(".ct-wide").innerWidth();//可变宽度的外围div 的宽度(非IE8)
        $divheight = $(".ct-wide").innerHeight();//可变高度的外围div 的宽度(IE8)
        $tmpheight = $(item).innerHeight();//图片高度
        $tmpwidth =  $(item).innerWidth(); //图片宽度

        if($mark === 0 ){
            $(item).attr("origin_height",$tmpheight);//把原始高度赋给新键属性
        }
        $tmp_origin_height = $(item).attr("origin_height");

        if(BROWSER.iemode!==8){
            $(item).parent().css({height:($tmpwidth) + "px"});
            $(item).css({height:(($divwidth - 100) > $tmp_origin_height ? $tmp_origin_height : ($divwidth - 100)) + "px"});
        }else{
            $(item).css({height:(($divheight - 100) > $tmp_origin_height ? $tmp_origin_height : ($divheight - 100)) + "px"});
        }
    });
    $mark++;
}

function bolu_img_wrap(img) {
	var idx = wrap_img_idx ++;
	var $obj = $(img);
	
	$obj.wrap(function(){
		return "<span style='display:inline-block' id='bolu-img-wrap-" + idx + "'></span>";
	});
	$obj.addClass("vimg");
	$obj.on("load",function(event){
		var w = this.width;
		var h = this.height;
		var $wp = jQuery("#bolu-img-wrap-" + idx);
		$wp.width(h);
		$wp.height(w);
	});
	
	$obj.attr("src",$obj.attr("source"));
	$obj.removeAttr("source");
        
     /*   bolu-follow-outer-0*/
}

// 直接翻转图片
function bolu_img_wrap_direct(img) {
	var idx = wrap_img_idx ++;
	var $obj = $(img);
	
	$obj.wrap(function(){
		return "<span style='display:inline-block' id='bolu-img-wrap-" + idx + "'></span>";
	});
	$obj.addClass("vimg");
	var w = $obj.width();
	var h = $obj.height();
	var $wp = jQuery("#bolu-img-wrap-" + idx);
	$wp.width(h);
	$wp.height(w);
}

// 使图片显示在最外层，然后跟综目标位置
function bolu_img_follow_wrap(img) {
	var $vObj = jQuery(img);
	$vObj.wrap("<span style='display:inline-block' id='bolu-follow-wrap-" + followObjs.length + "'></span>");
	jQuery("<div id='bolu-follow-outer-" + followObjs.length + "' style='position:absolute;'></div>")
		.appendTo("body")
		.css({position:"absolute"})
		.append($vObj);
	followObjs[followObjs.length] = {obj:jQuery("#bolu-follow-wrap-"+followObjs.length),flobj:jQuery("#bolu-follow-outer-" + followObjs.length).hide()};
}


function bolu_follow_wrap(obj) {
	var $vObj = jQuery(obj);
	$vObj.wrap("<span style='display:inline-block' id='bolu-follow-wrap-" + followObjs.length + "'></span>");
	jQuery("<div id='bolu-follow-outer-" + followObjs.length + "' style='position:absolute;width:640px; height:480px;'></div>")
		.appendTo("body")
		.css({position:"absolute"})
		.append($vObj);

	followObjs[followObjs.length] = {obj:jQuery("#bolu-follow-wrap-"+followObjs.length),flobj:jQuery("#bolu-follow-outer-" + followObjs.length)};
}

function bolu_v_layout() {
	for(var i=0; i<followObjs.length;i++) {
		var f = followObjs[i];
		var $vObj = f.obj; //wrap flash
		var $flObj = f.flobj; // outer absolute flash
		
		var w = $flObj.width();
		var h = $flObj.height();
		
		if (f["w"] != w && f["h"] != h) {
			$vObj.width(h);
			$vObj.height(w);
			f["w"] = w;
			f["h"] = h;
		}
		
		
		var l = $vObj.offset().left ;
		var t = $vObj.offset().top;
		
		if (f["l"] != l || f["t"] != t) {
			$flObj.offset({left:l,top:t});
			f["l"] = l;
			f["t"] = t;
		}
		
		$flObj.show();
	}
}

