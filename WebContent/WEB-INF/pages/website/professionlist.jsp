<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" uri="/css-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<t:font_css type="jquery,easyui,tools"></t:font_css>
<link href="site/css/main.css" rel="stylesheet" type="text/css" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> </title>
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
		<div class="listblog">
			<c:forEach items="${users}" var="userValue" varStatus="status">
				<div class="xldgurg" style="height: 110px; width: 100px;">
					<div class="avtr" style="width: 80px; height: 110px; float: left;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"><img
							src="html/userhead/<c:out value="${userValue.headurl}" />"
							style="width: 65px; height: 90px;" /></a>
					</div>
					<div class="m1ln" style="float: left;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							&nbsp;<c:out value="${userValue.artname}" />
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@ include file="tail.jsp"%>
</body>
</html>