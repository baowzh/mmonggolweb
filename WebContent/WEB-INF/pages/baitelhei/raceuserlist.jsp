<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>   </title>
<link href="site/css/main.css" rel="stylesheet" type="text/css" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<link href="img/css/main.css" type="text/css" rel="stylesheet" />
<!-- <link href="img/css/huh.css" type="text/css" rel="stylesheet" /> -->
<link href="img/css/doccheck.css" type="text/css" rel="stylesheet" />
<link href="img/css/listpages.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jqGrid/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/sitejs/searchuser.js"></script>
<link href="img/css/selectpanel.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet"
	href="js/jqui/css/ui-lightness/jquery-ui-1.10.3.custom.min.css" />
<script src="js/jqui/js/jquery-ui-1.10.3.custom.min.js"></script>
</head>
<body>
		<div class="wrp m0a logo">
			<div class="naveFrame">
				<%@ include file="../website/head.jsp"%>
			</div>
			<div class="cbt"></div>
		</div>
		<div class="wrp m0a ribbon"></div>
	<div class="lmainR ofh">
		<form action="searchblog.do" method="post" id="queryForm">
			<div class="lmainR"
				style="writing-mode: tb-lr; -webkit-writing-mode: vertical-lr; height: 600px">
				
				<div class="  lcell" style="width: 870px;">
					<div class="lcell " style="width: 870px; height: 600px;">
						<div class=" " style="height: 600px;">							
							<div style="width: 820px; margin: 0px; height: 500px" class="ofh">
								<c:forEach items="${users}" var="userValue" varStatus="status">
									<div class="xldgurg" style="width: 124px; height: 470px;">
										<div class="avtr">
											<a
												href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
												<img
												src="html/userhead/<c:out value="${userValue.headurl}"/>"
												width="570" height="447" />
											</a> 
										</div>
										<div class="desc  " style="color: #000; height: 390px;">
											<div class="m1ln" style="height: 390px;">
												<a
													href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
													<span class="label1"><c:out
															value="${userValue.artname}" /> </span> : <c:out
														value="${userValue.regdateStr}" />
												</a>
											</div>
											<div class="m1ln" style="height: 390px;">
												<span class="label1">  : </span>
												<c:out value="${userValue.nowprovince}"
													default="  " />
											</div>
											<div class="m1ln" style="height: 390px;">
												<span class="label1">  :</span>
												<c:choose>
													<c:when test="${userValue.sex==1}">
							         
							       </c:when>
													<c:when test="${userValue.sex==0}">
							          
							       </c:when>
													<c:otherwise>
							          
							       </c:otherwise>
												</c:choose>
												<span class="label1">    :</span>
												<c:out value="${userValue.age}" default="  " />
												<span class="label1">   :</span>
												<c:out value="${userValue.regdatestr}" default="  " />
											</div>
											<div class="m1ln" style="height: 390px;">
												<span class="label1">   : </span>
												<c:out value="${totalVisitCount}" />
												<span class="label1">   :</span> <span
													class="label1">   :<span>
											</div>
											<div class="m1ln" style="height: 390px;">
												<span class="label1">    :</span>
												<c:out value="${userValue.logindatestr}" default="" />
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<br>

			</div>
		</form>
	</div>
	<%@ include file="../website/tail.jsp"%>
</body>
<script>
	var districtsdata = <c:out value="${districtsdata}" escapeXml="false" />;
</script>
</html>