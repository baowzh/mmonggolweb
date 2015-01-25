<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<!--HTML5 doctype-->
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,,height=device-height,initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<meta name="format-detection" content="email=no" />
<title>文章内容</title>
<link href="site/css/wapdetail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/sitejs/wapdetail.js"></script>
</head>
<body onload="q();">
	<div class="wrap" id="wrap">
		<div class="header">
			<div style="width: 240px; height: 90px; float: left;">
				<img src="site/img/phonehead.jpg"
					style="width: 104px; height: 90px;">
			</div>
			<div class="moldiv" style="float: right;">
				<div class="navitem">
					<a href="phoneindex.do" style="font-size: 18px;"> </a>
				</div>
				<div class="emptyItem"></div>
				<div class="navitem">
					<a href="phonechannel.do" style="font-size: 18px;"> </a>
				</div>
				<div class="emptyItem"></div>
				<div class="navitem">
					<a style="font-size: 18px;"> </a>
				</div>
			</div>
		</div>
		<div class="main" id="main">
			<div class="condiv" id="condiv">
				<div class="con">
					<h1>
						<c:out value="${documentValue.doctitle}" />
					</h1>
				</div>
				<div class="con">
					<h2> &nbsp;<c:out value="${documentValue.docauthor}" /> **** &nbsp;&nbsp;&nbsp;
						  &nbsp;<c:out value="${documentValue.docRelTimeStr}" /></h2> 
				</div>
				<div class="content">
					<div class='con'>
						<c:out value="${documentValue.htmlstr}" escapeXml="false" />
					</div>
					<div class='conimg' style='height: 868px;'></div>
				</div>
				<div class="con footer">
					<h1></h1>
				</div>
			</div>
		</div>
	</div>
</body>
</html>