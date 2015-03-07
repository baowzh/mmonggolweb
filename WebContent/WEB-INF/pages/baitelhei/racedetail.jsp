<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>   </title>
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<link href="site/css/main.css" type="text/css" rel="stylesheet" />
<link href="site/css/race.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="site/css/scroll.css" />
<link rel="stylesheet"
	href="js/jqui/css/ui-lightness/jquery-ui-1.10.3.custom.min.css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script src="js/jqui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="js/scroll/utilities.js"></script>
<script type="text/javascript" src="js\tween.js"></script>
<script type="text/javascript" src="js/scroll/sodon-min.js"></script>
<script type="text/javascript" src="js/scroll/JQScrollView.js"></script>
<script type="text/javascript" src="js/scroll/scrollview-min.js"></script>
<script type="text/javascript" src="js/scroll/jquery.totemticker.min.js"></script>
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
		<div
			style="float: left; margin: 1px 0px; background: #fff; overflow: scroll; max-height: 1500px; min-height: 530px; min-width: 1000px;">
			<c:forEach items="${raceUsers}" var="raceUser" varStatus="status">
				<div class="raceuser">
					<div class="avtr">
						<a
							href="gouserindex.do?userid=<c:out value="${raceUser.uservalue.userid}" />">
							<img
							src="html/userhead/<c:out value="${raceUser.uservalue.headurl}" />" />
						</a>
					</div>
					<div class="desc">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								 :
								<c:out value="${raceUser.uservalue.artname}" />
							</div>
						</div>
						<div class="desitem" style="height: 320px;">
							<div class="author">
								   :
								<c:choose>
									<c:when test="${raceUser.uservalue.jointype==1}">
							           
							       </c:when>
									<c:when test="${raceUser.uservalue.jointype==2}">
							            
							       </c:when>
									<c:otherwise>
							           
							       </c:otherwise>
								</c:choose>
							</div>
						</div>
						<c:forEach items="${raceUser.raceDocumentValues}"
							var="raceDocumentValue" varStatus="status">
							<div class="nwsl1">
								<div class="title" style="height: 240px; color: #f00;">
									<a
										href="getuserdocdetail.do?docid=<c:out value="${raceDocumentValue.docid}"/>"
										target="_blank" class="tit_text_overflow" style="color: #f00;">
										<c:out value="${raceDocumentValue.doctitle}" />  
									</a>
								</div>
								<div class="author">
									<a
										href="getuserdocdetail.do?docid=<c:out value="${raceDocumentValue.docid}"/>"
										style="color: #f00;">   </a>
								</div>
							</div>
						</c:forEach>
						<div class="desitem" style="height: 320px;">
							<div class="author" style="color: #f00;">
								 :
								<fmt:formatNumber value="${raceUser.maxscore}" type="currency"
									pattern="#0.00" />
								<%-- 								<c:out value="${raceUser.maxscore}" /> --%>
							</div>
						</div>
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a href="#">    </a>
							</div>
						</div>
						<c:if test="${userValue!=null&&userValue.managerflag==1}">
							<div class="desitem" style="height: 320px;">
								<div class="author">
									<a
										href="javascript:switchtonextround('<c:out value="${raceUser.uservalue.userid}"/>','<c:out value="${raceUser.uservalue.userid}"/>',<c:out value="${raceUser.uservalue.jointype}"/>);">
										    </a>
								</div>
							</div>
						</c:if>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	<%@ include file="../website/tail.jsp"%>
</body>
<script>
	SODON.example.scrollViewHome = new SODON.widget.ScrollView("videoBox", {
		nextButton : "home-scroll-next",
		prevButton : "home-scroll-prev",
		direction : "horizontal",
		screenSize : 3,
		itemWidth : 302,
		itemHeight : 328,
		itemSpace : 30,
		waitTime : 3000, // Huleeh hugatsaa /by milli sec/
		speed : 1, // Hudulguunii hurd /by sec/
		auto : true,
		repeat : "repeat-back"
	});
	var raceModelJson = <c:out value="${raceModelJson}" escapeXml="false" />;
</script>
</html>