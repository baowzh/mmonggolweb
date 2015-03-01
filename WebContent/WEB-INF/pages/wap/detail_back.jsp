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
<title>altanhurd</title>
<link href="site/css/wapdetail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/sitejs/wapdetail.js"></script>
</head>
<body onload="q();">
	<div class="wrap" id="wrap">
		<div class="header">
			<div id="headimgdiv" style="height: 90px; float: left;">
				<img src="site/img/phonehead.jpg"
					style="width: 104px; height: 90px;">
			</div>
			<div class="moldiv" style="float: right;">
				<div class="navitem">
					<a href="phoneindex.do" style="font-size: 18px;"> </a>
				</div>
				<div class="emptyItem"></div>
				<div class="navitem">
					<a href="phonechannel.do" style="font-size: 18px;"> </a>
				</div>
				<div class="emptyItem"></div>
				<div class="navitem">
					<a href="phonebloglist.do" style="font-size: 18px;"> </a>
				</div>
			</div>
		</div>
		<div class="main" id="main">
			<div class="condiv" id="condiv">
				<div class="con" style="height: 130px;">
					<div class="con" style="float: right; height: 130px; width: 160px;">
						<a href="phoneuserindex.do?userid=<c:out value="${user.userid}" />"><img
							src="html/userhead/<c:out value="${user.headurl}" />"
							style="width: 120px; height: 160px;"> </a>
					</div>
					<div class="con"
						style="float: right; height: 130px; width: 210px; padding-rigth: 10px;font-size:16px;">
						<div style="font-size:20px;color:#f00;">
							&nbsp;&nbsp; <a style="text-decoration: none;color:#f00;"
								href="phoneuserindex.do?userid=<c:out value="${user.userid}" />"><c:out
									value="${user.artname}" /> </a>
						</div>
						<div style="font-size:18px;height:20px;">
							&nbsp;&nbsp; 
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
						<div style="font-size:18px;height:20px;">
							&nbsp;&nbsp; 
							<c:out value="${user.age}" default="  " />
						</div>
						<div style="font-size:18px;height:20px;">
							&nbsp;&nbsp;  
							<c:out value="${user.nowprovincename}" default="  " />
						</div>
					</div>
				</div>
				<div class="con">
					<h1>
						<c:out value="${documentValue.doctitle}" />
					</h1>
					<h2>
						 &nbsp;
						<c:out value="${documentValue.docchannelname}" />
						**   &nbsp;
						<c:out value="${documentValue.docRelTimeStr}" />
						**  &nbsp; <span id="readcount"><c:out
								value="${documentValue.readcount}" default="0" /></span> 

					</h2>
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