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
<link rel="stylesheet"
	href="js/jqui/css/ui-lightness/jquery-ui-1.10.3.custom.min.css" />
<script src="js/jqui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<script type="text/javascript" src="js/sitejs/booklist.js"></script>
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
	<div class="layer m0a" style="min-height: 400px;">
		<div class="flt glryBox"
			style="width: 1000px; margin-top: 0px; padding: 0px;">
			<c:forEach items="${books}" var="bookStoreValue" varStatus="status">
				<div class="folder" style="width: 295px; height: 250px;">
					<c:if test="${imgValue.bookimg!=null}">
						<a href="<c:out value="${bookStoreValue.booklink}"/>"><img
							src="html/img/<c:out value="${bookStoreValue.bookimg}"/>"
							style="width: 217px; height: 250px;" /></a>
					</c:if>
					<c:if test="${imgValue.bookimg==null}">
						<a
							href="getuserdocdetail.do?docid=<c:out value="${imgValue.docid}"/>">
							<img src="html/img/<c:out value="${bookStoreValue.bookimg}"/>"
							style="width: 217px; height: 250px;" />
						</a>
					</c:if>
					<div class="m1ln"
						style="height: 250px; width: 50px; padding-left: 10px;">
						 :
						<c:out value="${bookStoreValue.bookname}" />
						<br> :
						<c:out value="${bookStoreValue.bookauthor}" />
						<br> : <c:out value="${bookStoreValue.bookprice}" />  <input type="checkbox"
							id="<c:out value="${bookStoreValue.bookid}" />"
							name="bookcheckbox">

					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="m0a"
		style="text-align: center; width: 1000px; height: 50px; display: block;">
		<input type="button" value="新增" onclick="javascript:openadddialog();" /><input
			type="button" value="删除" onclick="javascript:deletebook();" /><input
			type="button" onclick="javascript:sendtoindex();" value="放首页" />
	</div
	<div class="wrp m0a ribbon"></div>
	
	<div id="addphotoalbum"
		style="width: 360px; height: 340px; display: none;">
		<div class="content" style="width: 360px; height: 320px;background: white;padding: 5px;border-radius: 5px;">
			<form action="addbook.do" 
				id="addbookform" class="mglForm" method="post"
				enctype="multipart/form-data" >
				<div class="label" style="text-align: center;">  
					:</div>
				<div class="inputHolder" style="width: 32px; height: 270px;">
					<input type="text" name="bookname" id="bookname"
						style="-webkit-transform-origin: 10px 20px;" /> 
				</div>
				<div class="label" style="text-align: center;"> :</div>
				<div class="inputHolder" style="width: 32px; height: 270px;">
					<input type="text" name="bookauthor" id="bookauthor"
						style="-webkit-transform-origin: 10px 20px;" />
				</div>
				<div class="label" style="text-align: center;">  
					:</div>
				<div class="inputHolder" style="width: 32px; height: 270px;">
					<input type="file" name="bookimgcon" id="bookimgcon"
						style="-webkit-transform-origin: 10px 20px;" />
				</div>
				<div class="label" style="text-align: center;">  
					 :</div>
				<div class="inputHolder" style="width: 32px; height: 270px;">
					<input type="text" name="bookprice" id="bookprice"
						style="-webkit-transform-origin: 10px 20px;" />
				</div>
				<div class="label" style="text-align: center;">  
					  :</div>
				<div class="inputHolder" style="width: 32px; height: 270px;">
					<input type="text" name="booklink" id="booklink"
						style="-webkit-transform-origin: 10px 20px;" />
				</div>
				<div class="mnlist" style="height: 270px;"></div>
				<div class="mnlist"
					style="width: 24px; height: 200px; text-align: center;">
					<a href="javascript:addbook();"></a>
				</div>
	
	</form>
	</div>
	</div>
</body>
</html>
