<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>  </title>
<link href="site/css/race.css" type="text/css" rel="stylesheet" />
<link href="site/css/index.css" type="text/css" rel="stylesheet" />
<link href="site/css/main.css" type="text/css" rel="stylesheet" />
<link href="img/css/main.css" type="text/css" rel="stylesheet" />
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
			<%-- 			<%@ include file="head.jsp"%> --%>
		</div>
		<div class="cbt"></div>
	</div>
	<div class="wrp m0a ribbon"></div>
	<div class="layer m0a" style="padding-top: 0px;">
		<div class="card1" style="height: 340px; width: 500px;">
			<div class="listCardTtl ttlStl1" style="height: 340px;">
				<div class="top"></div>
				<div class="ttl" style="height: 146px;"></div>
				<div class="more"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="height: 334px; padding-left: 5px;">
				<c:forEach items="${indexPageContent.selecteddocs}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.title}" /></a>
						</div>
						<div class="author">
							<a
								href="gouserindex.do?userid=<c:out value="${documentValue.userid}" />">
								<c:out value="${documentValue.docauthor}" />
							</a>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
		<div class="card1" style="height: 340px; width: 500px;">
			<div class="listCardTtl ttlStl1" style="height: 340px;">
				<div class="top"></div>
				<div class="ttl" style="height: 146px;"> </div>
				<div class="more"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="height: 334px; padding-left: 5px;">
				<c:forEach items="${indexPageContent.selecteddocs}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.title}" /></a>
						</div>
						<div class="author">
							<a
								href="gouserindex.do?userid=<c:out value="${documentValue.userid}" />">
								<c:out value="${documentValue.docauthor}" />
							</a>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>
	<div class="lmainR ofh">
		<div
			style="float: left; margin: 1px 0px; background: #fff; overflow: scroll; height: 1500px;">
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>
			<div class="raceuser">
				<div class="avtr">
					<a
						href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
						<img src="html/userhead/nan.jpg" />
					</a>
				</div>
				<div class="desc">
					<div class="desitem" style="height: 320px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<span class="label1">  :<c:out
									value="${userValue.artname}" />
						</span>
						</a>
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 1 : </span>
						<c:out value="${userValue.nowprovince}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 2: </span>
						<c:out value="${totalVisitCount}" />
					</div>
					<div class="desitem" style="height: 320px;">
						<span class="label1"> 3: </span>
						<c:out value="${totalVisitCount}" />
					</div>

				</div>
			</div>

		</div>
		<div class="layer m0a" style="padding-top: 0px;">
			<div class="card1" style="height: 490px; width: 1000px;">
				<div class="listCardTtl ttlStl1" style="height: 490px;">
					<div class="top"></div>
					<div class="ttl" style="height: 446px;"> </div>
					<div class="more"></div>
					<div class="ctail"></div>
				</div>
				<div
					style="float: left; margin: 1px 0px; background: #fff; overflow: hidden;">
					<div class="raceuser">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
								<img src="html/userhead/nan.jpg" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1">  :<c:out
											value="${userValue.artname}" />
								</span>
								</a>
							</div>
							<div class="desitem" style="height: 320px;">
								<span class="label1">  : </span>
								<c:out value="${userValue.nowprovince}" />
							</div>


						</div>
					</div>
					<div class="raceuser">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
								<img src="html/userhead/nan.jpg" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1">  :<c:out
											value="${userValue.artname}" />
								</span>
								</a>
							</div>
							<div class="desitem" style="height: 320px;">
								<span class="label1">  : </span>
								<c:out value="${userValue.nowprovince}" />
							</div>


						</div>
					</div>
					<div class="raceuser">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
								<img src="html/userhead/nan.jpg" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1">  :<c:out
											value="${userValue.artname}" />
								</span>
								</a>
							</div>
							<div class="desitem" style="height: 320px;">
								<span class="label1">  : </span>
								<c:out value="${userValue.nowprovince}" />
							</div>


						</div>
					</div>
					<div class="raceuser" style="width: 120px;">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
								<img src="html/userhead/nan.jpg" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1">  :<c:out
											value="${userValue.artname}" />
								</span>
								</a>
							</div>
							<div class="desitem" style="height: 320px;">
								<span class="label1">  : </span>
								<c:out value="${userValue.nowprovince}" />
							</div>


						</div>
					</div>
					<div class="raceuser" style="width: 120px;">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
								<img src="html/userhead/nan.jpg" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1">  :<c:out
											value="${userValue.artname}" />
								</span>
								</a>
							</div>
							<div class="desitem" style="height: 320px;">
								<span class="label1">  : </span>
								<c:out value="${userValue.nowprovince}" />
							</div>


						</div>
					</div>
					<div class="raceuser" style="width: 120px;">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
								<img src="html/userhead/nan.jpg" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1">  :<c:out
											value="${userValue.artname}" />
								</span>
								</a>
							</div>
							<div class="desitem" style="height: 320px;">
								<span class="label1">  : </span>
								<c:out value="${userValue.nowprovince}" />
							</div>


						</div>
					</div>
					<div class="raceuser" style="width: 120px;">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
								<img src="html/userhead/nan.jpg" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1">  :<c:out
											value="${userValue.artname}" />
								</span>
								</a>
							</div>
							<div class="desitem" style="height: 320px;">
								<span class="label1">  : </span>
								<c:out value="${userValue.nowprovince}" />
							</div>


						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="layer m0a" style="padding-top: 0px;">
		<div class="card1" style="height: 340px; width: 500px;">
			<div class="listCardTtl ttlStl1" style="height: 340px;">
				<div class="top"></div>
				<div class="ttl" style="height: 146px;"></div>
				<div class="more"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="height: 334px; padding-left: 5px;">
				<c:forEach items="${indexPageContent.selecteddocs}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.title}" /></a>
						</div>
						<div class="author">
							<a
								href="gouserindex.do?userid=<c:out value="${documentValue.userid}" />">
								<c:out value="${documentValue.docauthor}" />
							</a>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
		<div class="card1" style="height: 340px; width: 500px;">
			<div class="listCardTtl ttlStl1" style="height: 340px;">
				<div class="top"></div>
				<div class="ttl" style="height: 146px;">  </div>
				<div class="more"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="height: 334px; padding-left: 5px;">
				<c:forEach items="${indexPageContent.selecteddocs}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.title}" /></a>
						</div>
						<div class="author">
							<a
								href="gouserindex.do?userid=<c:out value="${documentValue.userid}" />">
								<c:out value="${documentValue.docauthor}" />
							</a>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>

	</div>
	<%@ include file="../website/tail.jsp"%>
</body>
<script>
	var districtsdata = <c:out value="${districtsdata}" escapeXml="false" />;
</script>
</html>