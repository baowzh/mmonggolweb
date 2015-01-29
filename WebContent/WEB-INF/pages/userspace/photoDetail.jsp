<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> </title>
<link href="site/css/main.css" rel="stylesheet" type="text/css" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<link href="img/css/main.css" type="text/css" rel="stylesheet" />
<link href="img/css/listpages.css" type="text/css" rel="stylesheet" />
<link href="img/css/blog.css" type="text/css" rel="stylesheet" />
<link href="img/css/custom.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/sitejs/userhomeindex.js"></script>
<script type="text/javascript" src="js/sitejs/userdocdetail.js"></script>
<script type="text/javascript" src="js/sitejs/userlogin.js"></script>
<script type="text/javascript" src="js/sitejs/changevalidcode.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script type="text/javascript"
	src="js/sitejs/emotion/jquery.emoticons.js"></script>
<link href="js/sitejs/emotion/emoticon.css" type="text/css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="js/jqui/css/ui-lightness/jquery-ui-1.10.3.custom.min.css" />
<script src="js/jqui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
<script src="js/sitejs/galleria-1.4.2.min.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/sitejs/viewdoc.js"></script>
<style>
.content {
	color: #777;
	font: 12px/1.4 "helvetica neue", arial, sans-serif;
	width: 510px;
	margin: 0px auto;
}
</style>
</head>
<body style="background-color: #fff;">
	<div id="viewhead" class="viewhead"
		style="height: 30px; background-color: #f2967b"></div>
	<div id="condiv" style="overflow: scroll;display:table-cell;">
		<div class="mln"
			style="float: left; width: 240px; background-color: #f2967b; height: 100%;">
			<a> &nbsp;</a> <a>  &nbsp; </a> <a> 
				 &nbsp;</a> <a> </a>
		</div>
		<!--  -->
		<div class="flt"
			style="position: relative; top: 0px; padding: 0px; height: 100%;"
			id="nameCard">
			<div class=" flt nameCard nameCardC">
				<div class="flt">
					<div class="m1ln name">
						<c:out value="${user.artname}" />
					</div>
					<div class="avatar">
						<img src="html/userhead/<c:out value="${user.headurl}" />"
							width="334" height="446" />
					</div>
				</div>
				<div class="cbt"></div>
				<div class=" "
					style="padding-top: 10px; width: 180px; margin: 0 auto">
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
					<div class="m1ln">
						 
						<c:out value="${currentDateVisitCount}" />
					</div>
					<div class="m1ln">
						    
						<c:out value="${user.logindatestr}" default="" />
					</div>
					<div class="frt" style="width: 0px; height: 0px;">
						<div class="pin"></div>
					</div>
				</div>
			</div>
		</div>
		<!--  -->
		<div class="mln" style="float: left; padding-top: 60px; height: 100%;">
			<h1 id="doctitle" style="line-height: 120%; margin: 20px;">
				<c:out value="${documentValue.doctitle}" />
			</h1>
		</div>
		<div class="msheet shareBookmark"
			style="float: left; position: fixed top:230px; height: 100%;">
			 
			<c:out value="${documentValue.docchannelname}" />
			<br> <a href="javascript:sharedocument()"> </a> <span
				id="sharecount"><c:out value="${documentValue.sharecount}"
					default="0" /></span>   <a href="javascript:markdocument()">
				 </a> <span id="markcount"><c:out
					value="${documentValue.markcount}" default="0" /></span>  <br />
			  <span id="readcount"><c:out
					value="${documentValue.readcount}" default="0" /></span> <br />
			  
			<c:out value="${documentValue.docRelTimeStr}" />
			<br /> <a href="#comment"> </a><span id="commentCount">
				<c:out value="${documentValue.commentCount}" default="0" />
			</span> 
		</div>
		<div class="content"
			style="-webkit-writing-mode: horizontal-tb; writing-mode: lr-tb;">
			<div id="galleria" style="width: 500px; height: 410px;">

				<c:forEach items="${imgs}" var="imgValue" varStatus="status">
					<a href="html/img/<c:out value="${imgValue.imgid}"/>.jpg"> <img
						src="html/img/<c:out value="${imgValue.imgid}"/>.jpg" />
					</a>
				</c:forEach>
				<input type="hidden" name="imgsharecount" id="imgsharecount"
					value="11" />
			</div>
		</div>
		<c:forEach items="${imgs}" var="imgValue" varStatus="status">

			<input type="hidden" name="imgtitle" id="imgtitle"
				value="<c:out value="${imgValue.imgdesc}"/>">
			<input type="hidden" name="imgsharecount"
				id="imgsharecount<c:out value="${status.index}"/>"
				value="<c:out value="${imgValue.sharecount}"/>">
			<input type="hidden" name="imgmarkcount"
				id="imgmarkcount<c:out value="${status.index}"/>"
				value="<c:out value="${imgValue.markcount}"/>">
			<input type="hidden" name="imgreadcount"
				id="imgreadcount<c:out value="${status.index}"/>"
				value="<c:out value="${imgValue.readcount}"/>">
			<input type="hidden" name="imgcommentCount"
				id="imgcommentCount<c:out value="${status.index}"/>"
				value="<c:out value="${imgValue.commcount}"/>">
			<input type="hidden" name="cimgid"
				id="cimgid<c:out value="${status.index}"/>"
				value="<c:out value="${imgValue.imgid}"/>">
			<input type="hidden" name="crtime"
				id="crtime<c:out value="${status.index}"/>"
				value="<c:out value="${imgValue.crtimestr}"/>">
		</c:forEach>
		<div class="msheet shareBookmark"
			style="float: left; position: fixed top:230px; height: 100%;">

			<br> <a href="javascript:sharedocument()"> </a> <span
				id="sharecount"><c:out value="${documentValue.sharecount}"
					default="0" /></span>   <a href="javascript:markdocument()">
				 </a> <span id="markcount"><c:out
					value="${documentValue.markcount}" default="0" /></span>  <br />
			  <span id="readcount"><c:out
					value="${documentValue.readcount}" default="0" /></span> <br />
			  
			<c:out value="${documentValue.docRelTimeStr}" />
			<br /> <a href="#comment"> </a><span id="commentCount">
				<c:out value="${documentValue.commentCount}" default="0" />
			</span> 
		</div>
		<div class=" flt"
			style="width: 225px; margin: 0px 8px 8px 8px; padding: 5px; background: white; border: solid 1px #014886;">
			<div class="friendL">
				<div class="i">
					<div class="m0a" style="width: 40px;">
						<div class=" msheet" style="padding-top: 10px;">
							<a href="#"> <br />  :
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- visitors -->
			<c:forEach items="${visitors}" var="visitorValue" varStatus="status">
				<div class=" friendL">
					<div class="i">
						<img src="html/userhead/<c:out value="${visitorValue.headurl}" />"
							width="334" height="446" />
						<div class="frt" style="width: 20px;">
							<div class="m1ln">
								<a
									href="gouserindex.do?userid=<c:out value="${visitorValue.visitorid}" />">
									<c:out value="${visitorValue.visitorname}" />
								</a>
							</div>
						</div>
						<div class="time">
							<font size="1px;"><c:out
									value="${visitorValue.visitdatestr}" /></font>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<div class="mnlist"
			style="background-color: #014886;; width: 30px; color: #fff; padding-top: 200px; padding-left: 10px; height: 80%;">
			 </div>
		<div class="msheet"
			style="float: left; overflow: auto;; padding-top: 10px; height: 100%;">
			<c:forEach items="${comments}" var="messageValue" varStatus="status">
				<div class="postSheet" style="float: left; height: 560px;">
					<div class="posterInf" style="float: left; height: 560px;">
						<div class="avtThumb flt">
							<img
								src="html/userhead/<c:out value="${messageValue.messagesenderurl}" />"
								width="30" height="40" />
						</div>
						<div class="inf flt">
							<div class="row">
								<a
									href="gouserindex.do?userid=<c:out value="${messageValue.messagesenderid}" />"><c:out
										value="${messageValue.messagesendername}" /> </a><br /> <br />
								<c:out value="${messageValue.sendtimestr}" />
							</div>
							<div class="row"></div>
						</div>
					</div>
					<p>
						<c:if test="${messageValue.hidden==0}">
							<c:out value="${messageValue.contenthtml}" escapeXml="false" />
						</c:if>
						<c:if test="${messageValue.hidden==1}">
												        
												</c:if>

					</p>
					<c:if test="${messageValue.showdel==1}">
						<p>
							<a
								href="javascript:delcomment('<c:out value="${messageValue.messageid}" />');"></a><a
								href="javascript:writemess('<c:out value="${messageValue.messagesenderid}" />','
									<c:out value="${messageValue.messagesendername}" />');">&nbsp;&nbsp;&nbsp;&nbsp;
								</a>
						</p>
					</c:if>
				</div>
			</c:forEach>
		</div>
		<nobr>
			<form action="addCommentOnResource.do" name="commentform"
				id="commentform">
				<div class="comment"
					style="display: inline; width: 260px; float: left; padding: 20px;"
					id="commentcontainer">
					<a name="comment"></a>


					<textarea id="editor1" name="commentdiv" class="ckeditor"
						style="width: 80px; height: 100px;"></textarea>
					<input type="hidden" name="agentkind" id="agentkind"
						value="<c:out value="${agentkind}" />"> <input
						type="hidden" name="userid" id="userid"> <input
						type="hidden" name="doctype" id="doctype" value="1"> <input
						type="hidden" name="docid" id="docid"
						value="<c:out value="${documentValue.docid}" />">

				</div>
				<div style="display: block; float: left; padding-top: 20px;">
					<div class="commoper">
						<div class="mnlist"
							style="width: 50px; height: 210px; padding-left: 10px;">
							<a href="javascript:addcomment(1,0);" style="height: 80px;">
								&nbsp;  </a>&nbsp; <a href="javascript:addcomment(1,1);">
							</a>
						</div>
						<a href="JavaScript:void(0)" id="message_face"><img
							src="img/pl_bq.png" /></a> <a href="javascript:replaceverifycode();"><img
							src="verifyCodeServlet" id="varifyimg" width="18" height="90" /></a>&nbsp;&nbsp;

						<c:if test="${agentkind==1}">
							<!-- 谷歌浏览器 -->
							<input type="text" name="validcode" id="validcode"
								style="-webkit-writing-mode: vertical-lr; writing-mode: tb-lr; height: 15px; width: 60px; -webkit-transform: rotate(90deg); -webkit-transform-origin: 10px 10px;" />

						</c:if>
						<c:if test="${agentkind==0}">
							<!-- 谷歌浏览器 -->
							<input type="text" name="validcode" id="validcode"
								style="-webkit-writing-mode: vertical-lr; writing-mode: tb-lr; height: 60px; width: 18px;" />
						</c:if>
						&nbsp;&nbsp;

					</div>
				</div>
			</form>
		</nobr>
		<div class="flt txtBlogList" style="width: 720px; margin-top: 10px;">
			<!-- 进度条 -->
			<div class="loadingbox" style="display: none;"></div>
			<!--  进度条-->
			<div class="artclList" id="artclList">
				<c:forEach items="${docList}" var="documentValue" varStatus="status">
					<div class="m1ln">
						<a><img src="img/dot.gif"></a>
						<!-- <a
											href="javascript:readdoc('<c:out value="${documentValue.docid}" />');"><c:out
												value="${documentValue.doctitle}" escapeXml="false" /> </a>-->

						<a
							href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}" />&pageindex=1"><c:out
								value="${documentValue.doctitle}" escapeXml="false" /> </a>

					</div>
				</c:forEach>
			</div>
			<div class="paginationArea">
				<div class="pagination" id="docpagelist">
					<c:out value="${pagingstr}" escapeXml="false" />
				</div>
			</div>
		</div>
	</div>
	<div id="viewhead" class="viewhead"
		style="height: 30px; background-color: #f2967b"></div>
	<%@ include file="bloghiddendiv.jsp"%>
	<%@ include file="logindiv.jsp"%>
</body>
</html>