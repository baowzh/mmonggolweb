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
<title>金轮文化网</title>
<link href="site/css/wapdetail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/sitejs/wapdetail.js"></script>
</head>
<body onload="q();">
	<!-- 	<div class="wrap" id="wrap"> -->
	<div class="header">
		<div id="headimgdiv" style="height: 90px; float: left;">
			<img src="site/img/phonehead.jpg" style="width: 104px; height: 90px;">
		</div>
		<div class="mln"
			style="height: 90px; width: 22px; font-size: 18px; float: left; color: #fff; padding-top: 0px;">
			<a href="phoneindex.do" style="font-size: 18px;"> </a>
		</div>
		<div class="emptyItem" style="height: 70px; float: left;"></div>
		<div class="mln"
			style="height: 90px; width: 22px; font-size: 18px; float: left; color: #fff; padding-top: 0px;">
			<a href="phonechannel.do" style="font-size: 18px;"> </a>
		</div>
		<div class="emptyItem" style="height: 70px; float: left;"></div>
		<div class="mln"
			style="height: 90px; width: 22px; font-size: 18px; float: left; color: #fff; padding-top: 0px;">
			<a href="phonebloglist.do" style="font-size: 18px;"> </a>
		</div>
	</div>
	<div id="content" style="overflow:scroll;">
	<div class="main" id="main">
		<div style="float: left; padding-top: 20px; height: 95%;width:180px;">
			<div class="msheet flt" style="padding-left: 10px;">
				<div class="avatar" style="width:144px;height:180px;">
					<a href="phoneuserindex.do?userid=<c:out value="${user.userid}" />"><img
						src="html/userhead/<c:out value="${user.headurl}" />" style="width:144px;height:180px;" /> </a>
				</div>
				<div class="m1ln name"
					style="height: 100px; overflow: hidden; font-size: 20px; color: #f00;">
					<a style="text-decoration: none; color: #f00;font-size: 20px;"
						href="phoneuserindex.do?userid=<c:out value="${user.userid}" />"><c:out
							value="${user.artname}" /> </a>
				</div>
			</div>
			<div class="msheet flt"
				style="padding-top: 10px; padding-left: 10px; width: 140px; margin: 0 auto">
				<div class="m1ln">
					 
					<c:choose>
						<c:when test="${user.sex==1}">
							         
							       </c:when>
						<c:when test="${user.sex==0}">
							          
							       </c:when>
						<c:otherwise>
							          
							       </c:otherwise>
					</c:choose>
				</div>
				<div class="m1ln">
					 
					<c:out value="${user.age}" default="  " />
				</div>
				<div class="m1ln">
					  
					<c:out value="${user.nowprovincename}" default="  " />
				</div>

				<div class="m1ln">
					 
					<c:out value="${user.regdatestr}" default="  " />
				</div>

				<div class="m1ln">
					 
					<c:out value="${totalVisitCount}" />
				</div>
			</div>
		</div>
		<div class="msheet"
			style="float: left; padding-top: 30px; height: 95%;">
			<div id="doctitle" class="msheet titlediv"
				style="line-height: 100%; margin: 20px;">
				<c:out value="${documentValue.doctitle}" />
			</div>
			<h2>
				 &nbsp;
				<c:out value="${documentValue.docchannelname}" />
				**   &nbsp;
				<c:out value="${documentValue.docRelTimeStr}" />
				**  &nbsp; <span id="readcount"><c:out
						value="${documentValue.readcount}" default="0" /></span> 

			</h2>
		</div>
		<div class="msheet" style="padding: 15px; float: left; height: 95%;">
			<c:out value="${documentValue.htmlstr}" escapeXml="false" />
		</div>
		
	</div>
	</div>
</body>
</html>