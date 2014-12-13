<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Blog Home</title>
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
	<form id="Form" action="pagingimglist.do" method="post">
		<!-- 		<div class="lmainR ofh" style="text-align: center; height: 64px;"> -->
		<!-- 			<img src="img/logo.png" width="980" /> -->
		<!-- 		</div> -->
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
				<c:forEach items="${imgList}" var="imgValue" varStatus="status">
					<div class="displayfolder"
						style="width: 162px; height: 170px; margin: 2px; 2 px; 2 px; 2 px; overflow: visible; padding-bottom: 2px;">
						<a
							href="getimginfo.do?imgid=<c:out value="${imgValue.docid}" />&userid=<c:out value="${imgValue.userid}" />"><img
							class="displayimg" style="width: 154px; height: 163px;"
							src="getimg.do?imgid=<c:out value="${imgValue.docid}" />"></a>
					</div>

				</c:forEach>
			</div>
			<div class=" pagenav">
				<c:forEach items="${pagingindexs}" var="pagingindex"
					varStatus="status">
					<a
						href="imgs.do?pageindex=<c:out value="${pagingindex.pageindex}" />">
						<c:if test="${pagingindex.doc==1}">
							<c:if test="${pagingindex.front==1}">									 
									              ..									 
									            </c:if>
						</c:if> <c:if test="${pagingindex.current==1}">
							<span id="picbtn1" class="curspanstyle"> &nbsp;<c:out
									value="${pagingindex.pageindex}" default="" />&nbsp;
							</span>
						</c:if> <c:if test="${pagingindex.current==0}">
							<span id="picbtn1" class="spanstyle"> &nbsp;<c:out
									value="${pagingindex.pageindex}" default="" />&nbsp;
							</span>
						</c:if> <c:if test="${pagingindex.doc==1}">
							<c:if test="${pagingindex.front==0}">									 
								             	 ..									 
									            </c:if>
						</c:if>
					</a>

				</c:forEach>
			</div>
		</div>
		<!-- 		<div class="lmainR ofh" style="text-align: center;"> -->
		<%-- 			<%@ include file="../website/tail.jsp"%>			 --%>
		<!-- 			<div class="cbt"></div> -->
		<!-- 		</div> -->
		<div class="wrp m0a ribbon"></div
	</form>
</body>
</html>
