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
			style="float: left; margin: 1px 0px; background: #fff; overflow: scroll; max-height: 1680px; min-height: 420px; min-width: 1000px;">
			<c:forEach items="${paingModel.modelList}" var="raceScoreLogValue"
				varStatus="status">
				<div class="raceuser"
					style="width: 82px; height: 400px;padding 2px;">
					<div class="avtr" style="width: 82px; height: 110px;">
						<a
							href="gouserindex.do?userid=<c:out value="${raceScoreLogValue.scoreuserid}" />">
							<img
							src="html/userhead/<c:out value="${raceScoreLogValue.headurl}" />"
							style="width: 82px; height: 110px;" />
						</a>
					</div>
					<div class="desc" style="width: 112px; height: 265px;">
						<div class="desitem" style="height: 265px;">
							<div class="author">
								  :
								<c:out value="${raceScoreLogValue.artname}" />
							</div>
						</div>
						<div class="desitem" style="height: 265px;">
							<div class="author">
								:
								<c:choose>
									<c:when test="${raceScoreLogValue.usertype==1}">
							           
							       </c:when>
									<c:when test="${raceScoreLogValue.usertype==2}">
							           
							       </c:when>
									<c:otherwise>
							           
							       </c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="desitem" style="height: 265px;">
							<div class="author">
								 :
								<c:out value="${raceScoreLogValue.score}" />
							</div>
						</div>
						<div class="desitem" style="height: 265px;">
							<div class="author">
								  :
								<fmt:formatDate value="${raceScoreLogValue.scoredate}"
									type="both" pattern="yyyy-MM-dd" />
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="paginationArea">
			<div class="pagination" id="docpagelist">
				<a class="first disabled" id="firest"
					href="javascript:openpage('1','264611659E3C11E4BC9D199A577C4ABB',1,0,true);switchclass('pagefist');"><span
					id="pagefirest" class="spanstyle">&lt;&lt;</span></a><a
					class="first disabled" id="previous"
					href="javascript:openpage('1','264611659E3C11E4BC9D199A577C4ABB',1,0,true);switchclass('previous');"><span
					id="pageprevious" class="spanstyle">&lt;</span></a><a
					class="first disabled" id="page1"
					href="javascript:openpage('1','264611659E3C11E4BC9D199A577C4ABB',1,0,true);switchclass('1');"><span
					id="pagepage1" class="spanstyle">1</span></a><a class="first disabled"
					id="page2"
					href="javascript:openpage('2','264611659E3C11E4BC9D199A577C4ABB',1,0,true);switchclass('2');"><span
					id="pagepage2" class="curspanstyle">2</span></a><a
					class="first disabled" id="page3"
					href="javascript:openpage('3','264611659E3C11E4BC9D199A577C4ABB',1,0,true);switchclass('3');"><span
					id="pagepage3" class="spanstyle">3</span></a><a class="first disabled"
					id="next"
					href="javascript:openpage('2','264611659E3C11E4BC9D199A577C4ABB',1,0,true);switchclass('next');"><span
					id="pagenext" class="spanstyle">&gt;</span></a><a
					class="first disabled" id="last"
					href="javascript:openpage('26','264611659E3C11E4BC9D199A577C4ABB',1,0,true);switchclass('last');"><span
					id="pagelast" class="spanstyle">&gt;&gt;</span></a>
			</div>
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