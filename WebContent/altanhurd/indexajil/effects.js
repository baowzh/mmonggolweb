$(document).ready(function(){
	$('.menu li a').each(function(){
		if($($(this))[0].href==String(window.location))
			$(this).parent().addClass('active');
	})
    });
        
   /* $(document).ready(function () {

        $("#tabs li").bind("click", function () {

            var index = $(this).index();

            var divs = $("#tabs-body > div");

            $(this).parent().children("li").attr("class", "m tab-nav");//将所有选项置为未选中

            $(this).attr("class", "m tab-nav-action"); //设置当前选中项为选中样式

            divs.hide();//隐藏所有选中项内容

            divs.eq(index).show(); //显示选中项对应内容
        });
  

    });*/




