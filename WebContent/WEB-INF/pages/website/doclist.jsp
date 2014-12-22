<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="site/css/main.css" rel="stylesheet" type="text/css" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jqGrid/js/jquery-1.9.1.js"></script>
</head>
<body>
	<form action="pagingquery.do" id="queryForm" method="post">
		<div class="wrp m0a logo">
			<div class="naveFrame">
				<%@ include file="head.jsp"%>
			</div>
			<div class="cbt"></div>
		</div>
		<div class="wrp m0a ribbon"></div>
		<div class="layer m0a">
			<div class="card1"
				style="height: 520px; width: 1000px; margin: 0px 0px;">
				<div class="listCardTtl ttlStl1" style="height: 520px;">
					<div class="top"></div>
					<div class="ttl" style="height: 416px;">
						<c:out value="${channel.chnlname}" />
					</div>
					<div class="ctail"></div>
				</div>
				<div class="listCardBody" style="height: 520px;">
					<c:forEach items="${paingModel.modelList}" var="documentValue"
						varStatus="status">
						<div class="nwsl1" style="height: 520px;">
							<div class="title" style="height: 420px;">
								<a
									href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
									target="_blank" class="tit_text_overflow"><c:out
										value="${documentValue.doctitle}" /></a>
							</div>
							<div class="author" style="height: 80px;">
								<a
									href="gouserindex.do?userid=<c:out value="${documentValue.userid}" />">
									<c:out value="${documentValue.docauthor}" />
								</a>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
			<div class="cbt"></div>

			<div class=" pagenav">

				<span id="picbtn1"
					style="cursor: pointer; border: 1px solid rgb(204, 204, 204); display: inline-block; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); line-height: 20px; width: 20px;">&nbsp;<a>&lt;</a>&nbsp;
				</span>
				<c:forEach items="${pagingindexs}" var="pagingindex"
					varStatus="status">
					<a
						href="javascript:gotoPage(<c:out value="${pagingindex.pageindex}"
										default="" />)"><c:if
							test="${pagingindex.doc==1}">
							<c:if test="${pagingindex.front==1}">									 
									 ..									 
									</c:if>
						</c:if> <c:if test="${pagingindex.current==1}">
							<span id="picbtn1"
								style="cursor: pointer; border: 1px solid rgb(204, 204, 204); display: inline-block; color: rgb(0, 0, 0); background-color: rgb(f, f, f); line-height: 20px; width: 20px;">&nbsp;<c:out
									value="${pagingindex.pageindex}" default="" />&nbsp;
							</span>
						</c:if> <c:if test="${pagingindex.current==0}">
							<span id="picbtn1"
								style="cursor: pointer; border: 1px solid rgb(204, 204, 204); display: inline-block; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); line-height: 20px; width: 20px;">&nbsp;<c:out
									value="${pagingindex.pageindex}" default="" />&nbsp;
							</span>
						</c:if> <c:if test="${pagingindex.doc==1}">
							<c:if test="${pagingindex.front==0}">									 
									 ..									 
									</c:if>

						</c:if> </a>
				</c:forEach>

				<span id="picbtn1"
					style="cursor: pointer; border: 1px solid rgb(204, 204, 204); display: inline-block; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); line-height: 20px; width: 20px;">&nbsp;<a>&gt;</a>&nbsp;
				</span> (
				<c:out value="${paingModel.rowcount}" default="0" />
				)
			</div>

			<input type="hidden" name="docchannel" id="docchannel"
				value="<c:out value="${paingModel.docchannel}"/>"> <input
				type="hidden" name="pageindex" id="pageindex"
				value="<c:out value="${paingModel.pageindex}"/>">
					<div class="cbt"></div>
		</div>
		<!-- 		<div class="wrp m0a ribbon"></div> -->
		<%@ include file="tail.jsp"%>
	</form>
</body>
</html>
<script type="text/javascript">
	var gotoPage = function(pageindex) {
		$("#pageindex").val(pageindex);
		$("#queryForm").submit();
	}
</script>

