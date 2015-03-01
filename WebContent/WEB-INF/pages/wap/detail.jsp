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
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script type="text/javascript" src="js/sitejs/wapdetail.js"></script>
</head>
<body onload="q();">
	<div class="header">
		<div id="headimgdiv" style="height: 90px; float: left;">
			<img src="site/img/phonehead.jpg" style="width: 104px; height: 90px;">
		</div>
		<div class="mln"
			style="height: 90px; font-size: 18px; width: 22px; float: right; color: #fff; padding-top: 0px;">
			<a href="tologin.do"></a>
		</div>
		<div class="emptyItem" style="height: 70px; float: right;"></div>
		<div class="mln"
			style="height: 90px; font-size: 18px; width: 22px; float: right; color: #fff; padding-top: 0px;">
			<a href="registe.do"> </a>
		</div>
		<div class="emptyItem" style="height: 70px; float: left;"></div>
		<div class="mln"
			style="height: 90px; width: 22px; font-size: 18px; float: right; color: #fff; padding-top: 0px;">
			<a href="phonechannel.do" style="font-size: 18px;"> </a>
		</div>
		<div class="emptyItem" style="height: 70px; float: left;"></div>
		<div class="mln"
			style="height: 90px; width: 22px; font-size: 18px; float: right; color: #fff; padding-top: 0px;">
			<a href="phonebloglist.do" style="font-size: 18px;"> </a>
		</div>
		<div class="emptyItem" style="height: 70px; float: right;"></div>
		<div class="mln"
			style="height: 90px; width: 22px; font-size: 18px; float: right; color: #fff; padding-top: 0px;">
			<a href="phoneindex.do" style="font-size: 18px;"> </a>
		</div>
	</div>
	<div id="content" style="overflow: scroll;">
		<div class="main" id="main">
			<div
				style="float: left; padding-top: 20px; height: 95%; width: 180px;">
				<div class="phonesheet flt" style="padding-left: 10px;">
					<div class="avatar" style="width: 144px; height: 180px;">
						<a
							href="phoneuserindex.do?userid=<c:out value="${user.userid}" />"><img
							src="html/userhead/<c:out value="${user.headurl}" />"
							style="width: 144px; height: 180px;" /> </a>
					</div>
					<div class="m1ln name"
						style="height: 100px; overflow: hidden; font-size: 20px; color: #f00;">
						<a style="text-decoration: none; color: #f00; font-size: 20px;"
							href="phoneuserindex.do?userid=<c:out value="${user.userid}" />"><c:out
								value="${user.artname}" /> </a>
					</div>
				</div>
				<div class="phonesheet flt"
					style="padding-top: 10px; padding-left: 10px; width: 140px; margin: 0 auto">
					<div>

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
					<div>
						 
						<c:out value="${user.age}" default="  " />
					</div>
					<div>
						  
						<c:out value="${user.nowprovincename}" default="  " />
					</div>

					<div>
						 
						<c:out value="${user.regdatestr}" default="  " />
					</div>

					<div>
						 
						<c:out value="${totalVisitCount}" />
					</div>
				</div>
			</div>
			<div class="phonesheet"
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
			<div class="phonesheet"
				style="padding: 15px; float: left; height: 95%;">
				<c:out value="${documentValue.htmlstr}" escapeXml="false" />
			</div>
			<div class="phonesheet"
				style="float: left; height: 340px; margin-top: 0px; padding-top: 100px;">
				<c:if test="${self==1}">
					<a
						href="toupddoc.do?docid=<c:out value="${documentValue.docid}" />">
						  </a>
					<a href="javascript:deldoc(1);"> &nbsp;  </a>
					<br />
					<c:if test="${raceModelValue!=null&&isjoin==0}">
						<a
							href="javascript:showjoinracediv('<c:out value="${raceModelValue.raceid}" />','<c:out value="${documentValue.docid}" />')"><c:out
								value="${raceModelValue.racename}" />  </a>
						<input type="hidden" id="raceid" name="raceid"
							value="<c:out value="${raceModelValue.raceid}" />">
					</c:if>
					<c:if test="${raceModelValue!=null&&isjoin==1}">
						<a
							href="javascript:delfromrace('<c:out value="${raceModelValue.raceid}" />','<c:out value="${documentValue.docid}" />')"><c:out
								value="${raceModelValue.racename}" />  </a>
						<input type="hidden" id="raceid" name="raceid"
							value="<c:out value="${raceModelValue.raceid}" />">
					</c:if>
				</c:if>
				<c:if test="${raceModelValue!=null&&isjoin==1}">
					<a href="#"><c:out value="${raceModelValue.racename}" /> 
						  </a>
					<br>
					<a href="#">  :<c:out
							value="${raceDocumentValue.nettotalscore}" default="0" />
					</a>
					<br>
					<a href="#">     :<c:out
							value="${raceDocumentValue.netscorecount}" default="0" />
					</a>
					<br>
					<a href="#">   <c:out
							value="${raceDocumentValue.netaveragescore}" default="0" />
					</a>
					<br>
					<a href="#">   :<c:out
							value="${raceDocumentValue.spetotalscore}" default="0" />
					</a>
					<br>
					<a href="#">     :<c:out
							value="${raceDocumentValue.spescorecount}" default="0" />
					</a>
					<br>
					<a href="#">    <c:out
							value="${raceDocumentValue.speaveragescore}" default="0" />
					</a>
					<br>
					<a href="#">    </a>
					<br>
					<c:if test="${self==0}">
						<div style="height: 40px; width: 20px; float: left;">
							<select id="racescore" name="racescore"
								style="height: 20px; font-size: 20px; -webkit-writing-mode: horizontal-tb">
								<option value="9.9">9.9</option>
								<option value="9.8">9.8</option>
								<option value="9.7">9.7</option>
								<option value="9.6">9.6</option>
								<option value="9.5">9.5</option>
								<option value="9.4">9.4</option>
								<option value="9.3">9.3</option>
								<option value="9.2">9.2</option>
								<option value="9.1">9.1</option>
								<option value="9.0">9.0</option>
							</select>
						</div>
						<div style="float: left;">
							<a
								href="javascript:scoreracedoc('<c:out value="${raceModelValue.raceid}" />','<c:out value="${documentValue.docid}" />');">
								  </a>
						</div>
					</c:if>
					<br>
				</c:if>
			</div>
		</div>
	</div>
	<input type="hidden" id="islogin" name="islogin"
		value="<c:out value="${login}" />">
	<input type="hidden" id="docid" name="docid"
		value="<c:out value="${documentValue.docid}" />">
	<div id="logindiv" style="float: left; display: none;">
		<%@ include file="../userspace/phonelogin.jsp"%>
	</div>
</body>
<script>
	var raceModelJson = <c:out value="${raceModelJson}" escapeXml="false" />;
</script>
</html>