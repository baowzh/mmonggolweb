<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" uri="/css-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Blog Home</title>
<t:font_css type="jquery,easyui,tools"></t:font_css>
<link href="site/css/main.css" rel="stylesheet" type="text/css" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<link href="img/css/main.css" type="text/css" rel="stylesheet" />
<link href="img/css/listpages.css" type="text/css" rel="stylesheet" />
<link href="img/css/blog.css" type="text/css" rel="stylesheet" />
<link href="img/css/custom.css" type="text/css" rel="stylesheet" />
<link href="js/messagebox/dialog.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jqGrid/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script type="text/javascript" src="js/sitejs/doccheck.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
</head>
<body>
	<div class="wrp m0a logo">
		<div class="naveFrame">
			<%@ include file="../website/head.jsp"%>
		</div>
		<div class="cbt"></div>
	</div>
	<div class="wrp m0a ribbon"></div>
	<div class="layer m0a">
		<!-- 		<div class="lmainR ofh"> -->
		<div class="flt glryBox"
			style="width: 1000px; margin-top: 0px; padding: 0px;">

			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a href="http://soft.hao123.com/soft/appid/883.html"> <img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/ch.png">
				</a>
			</div>
			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a
					href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie-MCM">
					<img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/ie11.png">
				</a>
			</div>
			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a href="http://soft.hao123.com/soft/appid/885.html"> <img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/ie10.png">
				</a>
			</div>
			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a href="http://soft.hao123.com/soft/appid/890.html"> <img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/ie9.png">
				</a>
			</div>
			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a href="http://soft.hao123.com/soft/appid/890.html"> <img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/w7_ie8.png">
				</a>
			</div>
			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a href="http://soft.hao123.com/soft/appid/887.html"> <img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/op.png">
				</a>
			</div>
			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a href="http://soft.hao123.com/soft/appid/17582.html"> <img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/sf.png">
				</a>
			</div>
			<div class="folder" style="width: 240px; height: 210px; border: 0px;">
				<a href="http://se.360.cn/"> <img
					style="width: 105px; height: 128px; background: #fff; margin: 10px 60px 0 20px;"
					src="img/browser/360.png">
				</a>
			</div>


		</div>
	</div>
	<%@ include file="tail.jsp"%>
</body>
<script>
	var openPhotoAlbum = function(albumid, userid) {
		if (albumid == null || albumid == '') {
			return;
		}
		if (userid == null || userid == '') {
			return;
		}
		window.location.href = "getimglist.do?userid=" + userid
				+ "&imggroupid=" + albumid;
	};
</script>
</html>
