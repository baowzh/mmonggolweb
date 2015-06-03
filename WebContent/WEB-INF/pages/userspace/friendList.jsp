<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="t" uri="/css-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><c:out value="${documentValue.doctitle}" /></title>
<t:font_css type="jquery,easyui,tools"></t:font_css>
<link href="css/blog.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- <script type="text/javascript" src="js/sitejs/viewdoc.js"></script> -->
<link href="site/css/waplist.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/sitejs/userdocdetail.js"></script>
<script type="text/javascript" src="js/sitejs/race.js"></script>
<script type="text/javascript" src="js/sitejs/userhomeindex.js"></script>
<script type="text/javascript" src="js/sitejs/userlogin.js"></script>
<script type="text/javascript" src="js/sitejs/changevalidcode.js"></script>
<script type="text/javascript"
	src="js/sitejs/emotion/jquery.emoticons.js"></script>
<link href="js/sitejs/emotion/emoticon.css" type="text/css"
	rel="stylesheet" />
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<!-- <script type="text/javascript" src="js/util/js/mousewheel.js"></script> -->

<link rel="stylesheet"
	href="js/jqui/css/ui-lightness/jquery-ui-1.10.3.custom.min.css" />
<script src="js/jqui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	window.onload = function() {
		function setheight() {
			var sidebar = document.getElementById('myDIV');
			sidebar.style.width = document.documentElement.clientHeight - 0
					+ 'px';
		}
		setheight();
		onresize = setheight;
	};
</script>
</head>

<body onmousewheel="wheel(event)"
	style="background-color: #fff; scroll: none; height: 780px;">
	<div class="rotatesection" style="width: 630px;" id="myDIV">
		<div class="blogcon">
			<div class="titlebar">
				<div class="mglsection" style="width: 50px; padding-right: 15px;"></div>
				<div class="mglsection" style="width: 100px; padding-right: 15px;">
					</div>
				<div class="mglsection" style="width: 120px; padding-right: 15px;"> 
					 </div>
				<div class="mglsection" style="width: 80px; padding-right: 15px;"></div>
				<div class="mglsection" style="width: 130px; padding-right: 15px;"> 
					 </div>
			</div>
			<!--  -->
			<div class="flt" style="width: 100%; height: 160px;">
				<div class="persooninfo">
					<div class="headimg rotate">
						<img src="img/dalai.jpg">
					</div>
					<div class="m1ln" style="padding-right: 20px;"></div>
				</div>
				<div class="flt"
					style="padding-top: 5px; padding-right: 10px; height: 130px; margin: 0 auto; float: right;">
					<div class="m1ln">  </div>
					<div class="m1ln">   </div>
					<div class="m1ln">   </div>
					<div class="m1ln">  2015-01-17</div>
					<div class="m1ln">  11066</div>
					<div class="m1ln">  1</div>
					<div class="m1ln">     2015-04-27</div>
				</div>
			</div>
			<div class="titlebar" style="text-align: right;">
				<div class="mglsection" style="width: 180px; padding-right: 15px;">
					  929 </div>
			</div>
			<div class="flt"
				style="width: 100%; min-height: 230px; height: auto !important;">
				<div class="persooninfo"
					style="width: 105px; height: 90px; float: right; background: #eee; margin: 5px;">
					<div class="headimg rotate" style="height: 60px; width: 90px;">
						<img src="img/dalai.jpg"
							style="height: 90px; width: 60px; -webkit-transform-origin: left top; -webkit-transform: translate(100%, 0%) rotate(90deg);">
					</div>
					<div class="m1ln" style="margin: 5px;"></div>
				</div>

			</div>
			<div style="clear: both"></div>
			<div class="titlebar" style="text-align: right;">
				<div class="mglsection" style="width: 180px; padding-right: 15px;">
					  </div>
			</div>
			<div class="flt"
				style="width: 100%; margin: 5px; height: auto !important;">
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln"
						style="text-align: center; width: 138px; margin: 5px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln" style="text-align: center; width: 138px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln" style="text-align: center; width: 138px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln" style="text-align: center; width: 138px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln" style="text-align: center; width: 138px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln" style="text-align: center; width: 138px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln" style="text-align: center; width: 138px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>
				<div class="photoalbum rotate">
					<a
						href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
						<img src="img/news3.jpg">

					</a>
					<div class="m1ln" style="text-align: center; width: 138px;">
						<a title="    "
							href="javascript:openPhotoList('60C79955EC8011E4ADC7D3E228C11886')">
							   </a>
					</div>
				</div>

			</div>
			<div style="clear: both"></div>
			<div class="titlebar" style="text-align: right;">
				<div class="mglsection" style="width: 180px; padding-right: 15px;">
					</div>
			</div>
			<div class="flt" style="width: 100%; height: 25px;"></div>
			<div class="flt" style="width: 100%;">
				<div class="cont_box">
					<div class="title mglcontent">   
						</div>
					<div class="shareBookmark mgldiv">
						<div class="mgldiv" style="margin: 0px 20px 20px 20px;">
							     <br> <a
								href="javascript:sharedocument()"> </a> <span
								id="sharecount">0</span>   <a href="javascript:markdocument()">
								 </a> <span id="markcount">0</span>  <br>
							  <span id="readcount">277</span> <br>
							   2015-04-23 <br> <a href="#comment">
							</a><span id="commentCount"> 0 </span> 
						</div>
					</div>
					<div class="blogarea mglcontent rotate">  
						   20142015      
						4    11    19  30    
						           
						          
						           
						        
						          
						          
						           
						         
						       </div>
					<div class="shareBookmark mgldiv"
						style="margin: 10px 360px 0px 0px;">
						<div class="mgldiv">
							<a href="#comment">      </a>
						</div>
					</div>
				</div>
				
			</div>
			<div class="titlebar" style="text-align: right;">
				<div class="mglsection" style="width: 180px; padding-right: 15px;">  </div>
			</div>
			<div class="flt" style="width: 100%; height: 230px;">
				<div class="persooninfo"
					style="width: 105px; height: 90px; float: right; background: #eee; margin: 5px;">
					<div class="headimg rotate" style="height: 60px; width: 90px;">
						<img src="img/dalai.jpg"
							style="height: 90px; width: 60px; -webkit-transform-origin: left top; -webkit-transform: translate(100%, 0%) rotate(90deg);">
					</div>
					<div class="m1ln" style="margin: 5px;"></div>
				</div>

			</div>
			<div class="titlebar"
				style="text-align: right; height: 60px; padding-top: 20px;">
				<div class="mglsection" style="width: 100%; padding-right: 15px;">
					      
					     </div>
			</div>
		</div>
	</div>
	<%-- 	<%@ include file="bloghiddendiv.jsp"%> --%>
	<%-- 	<%@ include file="logindiv.jsp"%> --%>
</body>
<script>
	// 	var raceModelJson = <c:out value="${raceModelJson}" escapeXml="false" />;
</script>
</html>