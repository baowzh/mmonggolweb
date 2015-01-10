<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> </title>
<link href="site/css/main.css" rel="stylesheet" type="text/css" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/sitejs/index.js"></script>
<script type="text/javascript" src="js/sitejs/changevalidcode.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script type="text/javascript" src="js\tween.js"></script>
<script type="text/javascript" src="js/sitejs/imgnews.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
<link href="icons/favicon.ico" type="image/x-icon" rel="ico">
	<link href="icons/favicon.ico" type="image/x-icon" rel="shortcut icon">
</head>
<body>
	<div class="wrp m0a logo">
		<div class="naveFrame">
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111110">
					</a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111112"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=32222233312227"> 
					</a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111113">
					</a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111113">  </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111114"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111115"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111132"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111118"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111122">
					</a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=32222233312226">
					</a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111119"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=32222233331114"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111121"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=32222233312222"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=32222233312224"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=32222233332224">
					</a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111128">
					</a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111125"> </a>
			</div>
			<div class="mln navItem">
				<a href="pagingquery.do?docchannel=11111111111127"> </a>
			</div>
			<div class="mln navItem">
				<a href="imgs.do"> </a>
			</div>
			<div class="mln navItem">
				<a href="videos.do"></a>
			</div>
		</div>
	</div>
	<div class="wrp m0a ribbon"></div>
	<div class="layer m0a">
		<div class="card1" style="height: 340px; width: 380px;">
			<div style="width: 380px; height: 330px; padding: 5px;">
				<div class="sldrFrm" id="picplayer"
					style="width: 375px; height: 330px;"></div>
			</div>
		</div>
		<div class="card1" style="height: 340px; width: 440px;">
			<div class="listCardTtl ttlStl1" style="height: 340px;">
				<div class="top"></div>
				<div class="ttl" style="height: 146px;"> </div>
				<div class="more"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="height: 340px;">
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
		<div class="card2" style="height: 340px; width: 180px;">
			<div class="listCardTtl ttlStl1" style="height: 340px;">
				<div class="top"></div>
				<div class="ttl" style="height: 146px;"></div>
				<div class="more"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="height: 320px; padding-top: 30px;">
				<form id="searchform" class="mglForm" method="post">
					<div class="inputHolder"></div>
					<c:if test="${agentkind==1}">
						<div class="inputHolder"
							style="height: 300px; width: 40px; padding-left: 5px;">
							<input type="text" name="searchtext" id="searchtext"
								class="webkitsearchtext" />
						</div>
						<!-- 						<div class="inputHolder"></div> -->
						<div class="label" style="height: 300px; text-align: center;">
							<a id="searchbloga" href="javascript:search('searchblog.do');">
								 </a> &nbsp;&nbsp; <a id="searchdoca"
								href="javascript:search('searchdoc.do');">  </a>
						</div>
					</c:if>
					<c:if test="${agentkind==0}">
						<div class="inputHolder"
							style="height: 300px; width: 40px; padding-left: 5px;">
							<input type="text" name="searchtext" id="searchtext"
								class="iesearchtext" />
						</div>
						<div class="inputHolder" style="width: 10px;"></div>

						<div class="label" style="height: 300px; text-align: center;">
							<a id="searchbloga" href="javascript:search('searchblog.do');">
								 </a> &nbsp;&nbsp; <a id="searchdoca"
								href="javascript:search('searchdoc.do');">  </a>
						</div>
					</c:if>
				</form>
			</div>
		</div>
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card2" style="background-image: url(img/arv_ag.jpg)">
			<div class="  lcell" style="width: 150px; height: 320px;">
				<div class="lcell cardlogin" id="logindiv"
					style="height: 290px; padding-left: 20px; padding-top: 10px;">
					<div class="content">
						<form class="mglForm" action="checkandlogin.do" id="loginform"
							method="post">
							<div class="label" style="width: 27px;">  </div>
							<div class="label" style="width: 27px;">  </div>
							<div class="label" style="width: 27px;">
								  <a href="javascript:replaceverifycode();"></a>
								:
							</div>
							<div class="label" style="width: 27px;">
								<a href="javascript:replaceverifycode();"><img
									src="verifyCodeServlet" id="varifyimg" width="18" height="100" />
								</a>
							</div>
							<div class="inputHolder">
								<input name="username" id="username" value="">
							</div>
							<div class="inputHolder">
								<input name="password" id="password" type="password">
							</div>
							<div class="inputHolder">
								<input name="validcode" id="varifycode" value="">
							</div>
							<div class="mnlist" style="height: 150px; width: 30px;">
								<a id="registlink" href="registe.do">
									&nbsp;&nbsp;&nbsp;&nbsp;</a> <a href="javascript:login();">
									 </a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="card1" style="margin: 2px 0px">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl" style="height: 211px;"> </div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.recentDocs}"
					var="documentValue" varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card1" style="margin: 2px 0px">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl" style="height: 211px;"> </div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.hotdocs}" var="documentValue"
					varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl" style="height: 211px;"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody sheet" style="width: 290px; float: left;">
				<div class="nrglgq">
					<div class="tx">
						<a href="#"> <img
							src="getsmheadimge.do?userid=DFED340A56D311E482CDC5C98E32019F" />
						</a>
					</div>
					<div class="m1ln"
						style="float: left; word-break: break-all; width: 42px; line-height: 15px; font-size: 17px;">
						  <br />  
					</div>
				</div>
				<div class="nrglgq">
					<div class="tx">
						<a href="#"> <img src="img/vip.jpg" />
						</a>
					</div>
					<div class="m1ln"
						style="float: left; word-break: break-all; width: 40px; line-height: 15px; font-size: 17px;">
						  <br /> 
					</div>
				</div>
				<div class="nrglgq">
					<div class="tx">
						<a href="#"> <img
							src="getsmheadimge.do?userid=B520DB06872011E4AC8DA373F64F00AB" />
						</a>
					</div>
					<div class="m1ln"
						style="float: left; word-break: break-all; width: 40px; line-height: 15px; font-size: 17px;">
						  <br /> 
					</div>
				</div>
				<div class="nrglgq">
					<div class="tx">
						<a href="#"> <img
							src="getheadimge.do?userid=54863CDD8C1611E49E969B2F8109C083" />
						</a>
					</div>
					<div class="m1ln"
						style="float: left; word-break: break-all; width: 40px; line-height: 15px; font-size: 17px;">
						  <br /> 
					</div>
				</div>
				<div class="cleanr"></div>
				<div class="nrglgq"
					style="height: 90px; padding-top: 15px; font-size: 17px;">
					<a class="vdrtgalSuld">     
						</a> <a href="#"> </a><br /> <a href="#"></a> <br />
					<a href="#">  </a> <br /> <a href="#">  </a> <br />
					<a href="#"></a> <br /> <a href="#"> </a> <br />
					<a href="#">  </a><br /> <a href="#"></a>
				</div>
			</div>
		</div>
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111110"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.newsarts}" var="documentValue"
					varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111112"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.historyarts}"
					var="documentValue" varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl" style="height: 211px;"></div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<div class="nrglgq"
					style="width: 295; height: 326px; line-height: 22px; padding-left: 8px;">
					      <br />     
					    <br />     
					     <br />      
					<br />      <br /> 
					         <br />
					    <br />    
					 <br />          <br />
					      <br />      
					   
				</div>
			</div>
		</div>
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl">  </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=32222233312227"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.bookarts}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111113"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.beliefarts}"
					var="documentValue" varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="searchblog.do"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<c:forEach items="${indexPageContent.topUsers}" var="userValue"
				varStatus="status">
				<div class="xldgurg" style="height: 70px; width: 80px;">
					<div class="avtr" style="width: 65px; float: left;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"><img
							src="getsmheadimge.do?userid=<c:out value="${userValue.userid}" />"
							style="width: 47px;" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl">  </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111113"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.finance}" var="documentValue"
					varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111114"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.nature}" var="documentValue"
					varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl">  </div>
				<div class="more">
					<a href="#"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.newUsers}" var="userValue"
					varStatus="status">
					<div class="xldgurg" style="height: 70px; width: 80px;">
						<div class="avtr" style="width: 65px; float: left;">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"><img
								src="getsmheadimge.do?userid=<c:out value="${userValue.userid}" />"
								style="width: 47px;" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111115"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.literature}"
					var="documentValue" varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111132"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.health}" var="documentValue"
					varStatus="status">

					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
	<div class="layer m0a">
		<div class="card5">
			<div class="listCardTtl ttlStl1" style="height: 450px;">
				<div class="top"></div>
				<div class="ttl" style="height: 217px;"> </div>
				<div class="more" style="height: 110px;">
					<a href="imgs.do"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="height: 450px;">
				<c:forEach items="${indexPageContent.imgs}" var="imgValue"
					varStatus="status">
					<div class="thumb1">
						<a
							href="getimginfo.do?imgid=<c:out value="${imgValue.imgid}"/>&userid=<c:out value="${imgValue.userid}"/>"
							target="_blank"><img
							src="getimg.do?imgid=<c:out value="${imgValue.imgid}"/>" title=""
							style="width: 178px; height: 208px;"></a>
					</div>
				</c:forEach>
			</div>
		</div>


		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl">  </div>
				<div class="more">
					<a href="searchblog.do"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="background: #eee;">
				<c:forEach items="${indexPageContent.topUsers}" var="userValue"
					varStatus="status">
					<div class="xldgurg" style="height: 70px; width: 80px;">
						<div class="avtr" style="width: 65px; float: left;">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"><img
								src="getsmheadimge.do?userid=<c:out value="${userValue.userid}" />"
								style="width: 47px;" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"></div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111118"> </a>
				</div>
				<div class="ctail"></div>

			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.sport}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111122"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.technicarts}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="#"></a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody"
				style="background: #fff; padding-top: 2px; padding-left: 4px;">
				<c:forEach items="${indexPageContent.professionValues}"
					var="professionValue" varStatus="status">
					<div class="nwsl1" style="height: 106px; width: 36px;">
						<div class="nav2">
							<a
								href="professionlist.do?pageindex=1&professioncode=<c:out value="${professionValue.professioncode}" />"
								target="_blank" class="tit_text_overflow"> <c:out
									value="${professionValue.professionname}" />

							</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=32222233312226"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.discussarts}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111119"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.culture}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>

	<div class="layer m0a">
		<div class="card5" style="height: 320px;">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"></div>
				<div class="more">
					<a href="videos.do"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="videoBox">
				<c:forEach items="${indexPageContent.videos}" var="imgValue"
					varStatus="status">
					<div class="video" style="width: 303px; height: 320px;">
					     <c:if test="${imgValue.facepath!=null}">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${imgValue.docid}"/>"><img
								src="<c:out value="${imgValue.facepath}"/>"
								style="width: 280px; height: 318px;" /></a>
						</c:if>
						<c:if test="${imgValue.facepath==null}">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${imgValue.docid}"/>"><img
								src="img/vido.jpg" style="width: 280px; height: 318px;" /></a>
						</c:if>
						<!-- 
						<a
							href="getuserdocdetail.do?docid=<c:out value="${imgValue.docid}"/>">
							<img src="img/vido.jpg" style="width: 280px; height: 318px;" />
						</a>
						 -->
						<div class="m1ln"
							style="height: 318px; width: 18px; padding-left: 5px;">
							<c:out value="${imgValue.doctitle}" />
						</div>

					</div>

				</c:forEach>
			</div>
		</div>
		<div class="cls"></div>
	</div>

	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"></div>
				<div class="more">
					<a href="#"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="background: #eee;">
				<c:forEach items="${indexPageContent.culture}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" escapeXml="false" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="#"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.Anecdotes}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111121"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.newKnowledge}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl">     </div>
				<div class="more">
					<a href="searchblog.do"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="background: #eee;">
				<c:forEach items="${indexPageContent.recentLoginUsers}"
					var="userValue" varStatus="status">
					<div class="xldgurg" style="height: 70px; width: 80px;">
						<div class="avtr" style="width: 65px; float: left;">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"><img
								src="getsmheadimge.do?userid=<c:out value="${userValue.userid}" />"
								style="width: 47px;" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=32222233312222"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.lawarts}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=32222233312224"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.socialarts}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl">    </div>
				<div class="more">
					<a href="#"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="background: #eee;">
				<c:forEach items="${indexPageContent.activeusers}" var="userValue"
					varStatus="status">
					<div class="xldgurg" style="height: 70px; width: 80px;">
						<div class="avtr" style="width: 65px; float: left;">
							<a
								href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"><img
								src="getsmheadimge.do?userid=<c:out value="${userValue.userid}" />"
								style="width: 47px;" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=32222233332224"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.monggoldiscuss}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111128"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.monggolian}"
					var="documentValue" varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="cls"></div>
	</div>
	<div class="layer m0a">
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl">    </div>
				<div class="more">
					<a href="#"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody" style="background: #eee;">
				<c:forEach items="${indexPageContent.topUsers}" var="userValue"
					varStatus="status">
					<div class=" avatar1">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"
							target="_blank"><img
							src="getsmheadimge.do?userid=<c:out value="${userValue.userid}"/>"
							title=""></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111125"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.musicarts}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="card3">
			<div class="listCardTtl ttlStl1">
				<div class="top"></div>
				<div class="ttl"> </div>
				<div class="more">
					<a href="pagingquery.do?docchannel=11111111111127"> </a>
				</div>
				<div class="ctail"></div>
			</div>
			<div class="listCardBody">
				<c:forEach items="${indexPageContent.humorous}" var="documentValue"
					varStatus="status">
					<div class="nwsl1">
						<div class="title">
							<a
								href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
								target="_blank" class="tit_text_overflow"><c:out
									value="${documentValue.doctitle}" /></a>
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
		<div class="layer m0a">
			<div class="card3" style="width: 333px; height: 400px;">
				<div class="listCardTtl ttlStl1" style="height: 400px;">
					<div class="top"></div>
					<div class="ttl" style="height: 210px;"></div>
					<div class="more">
						<a href="#"> </a>
					</div>
					<div class="ctail"></div>
				</div>
				<div class="listCardBody" style="width: 290px; height: 400px;">
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;">  
							       </div>
					</div>
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;">  
							         </div>
					</div>
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;">  
							       </div>
					</div>
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;"> 
							       </div>
					</div>
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;"> 
							       </div>
					</div>
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;">  
							   </div>
					</div>
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;">  
							         </div>
					</div>
					<div class="nwsl1" style="height: 400px;">
						<div class="title" style="height: 400px;">  
							    </div>
					</div>

				</div>
			</div>
			<div class="card3" style="width: 667px; height: 400px;">
				<div class="listCardTtl ttlStl1" style="height: 400px;">
					<div class="top"></div>
					<div class="ttl" style="height: 210px;"></div>
					<div class="more">
						<a href="#"> </a>
					</div>
					<div class="ctail"></div>
				</div>
				<div class="nrglgq"
					style="width: 295; height: 310px; line-height: 23px; padding-left: 2px;">
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								   </a>
						</div>

					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								     </a>
						</div>

					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								   </a>
						</div>

					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								    </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								  </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								   </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								   </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								   </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								    </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								       </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								       </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								  </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								   </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								  </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								    </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow">
								   </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow"> 
								 </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow"> 
								 </a>
						</div>
					</div>
					<div class="nwsl1">
						<div class="title">
							<a href="#" target="_blank" class="tit_text_overflow"> 
								 </a>
						</div>
					</div>
					         13684719585
				</div>
			</div>
		</div>
		<div class="cls"></div>
	</div>
	<%@ include file="tail.jsp"%>
</body>
<script>
	var pics1 = <c:out value="${indexPageContent.pics}" escapeXml="false" />;
	//$("#searchtext").css
	if (/webkit/.test(navigator.userAgent.toLowerCase())) {
		$("#searchtext").attr("style", "width:275px;height:15px;");
	}
	if (/msie/.test(navigator.userAgent.toLowerCase())) {
		$("#searchtext").attr("style", "width:18px;height:275px;");
	}
</script>
</html>