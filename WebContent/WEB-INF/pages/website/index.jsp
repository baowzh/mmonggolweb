<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="ff">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
		<title>altanhurd</title>
		<meta name="keywords" content="关键字">
			<meta name="description" content="描述">
				<link rel="stylesheet" href="css/home.css" type="text/css">
					<link rel="stylesheet" href="css/reset.css" type="text/css">
						<link href="icons/favicon.ico" type="image/x-icon" rel="ico">
							<link href="icons/favicon.ico" type="image/x-icon"
								rel="shortcut icon">
								<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
								<script type="text/javascript" src="js/sitejs/index.js"></script>
								<script type="text/javascript" src="js/browser.js"></script>
								<link href="img/css/main.css" type="text/css" rel="stylesheet" />
								<link href="img/css/login.css" type="text/css" rel="stylesheet" />
								<script type="text/javascript" src="js/sitejs/regist.js"></script>
								<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
								<script type="text/javascript" src="js\tween.js"></script>
								<script src="js/messagebox/jquery.msgbox.js"></script>
								<script src="js/messagebox/jquery.dragndrop.min.js"></script>
								<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
								<style>
#picBox {
	width: 390px;
	height: 315px;
	margin: 0px auto;
	overflow: hidden;
	position: relative;
}

#picBox ul#show_pic {
	margin: 0;
	padding: 0;
	list-style: none;
	height: 205px;
	width: 3050px;
	position: absolute;
}

#picBox ul#show_pic li {
	float: left;
	margin: 0;
	padding: 0;
	height: 205px;
}

#picBox ul#show_pic li img {
	display: block;
	width: 390px;
	height: 315px;
}

#icon_num {
	position: absolute;
	bottom: 5px;
	right: 10px;
}

#icon_num li {
	float: left;
	background: url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat
		-15px 0;
	width: 15px;
	height: 15px;
	list-style: none;
	color: #39F;
	text-align: center;
	cursor: pointer;
	padding: 0;
	margin: 0;
	margin-right: 5px;
	font-size: 12px;
}

#icon_num li:hover, #icon_num li.active {
	background: url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat 0
		0;
	color: #fff;
}

#picBox_top {
	width: 610px;
	height: 315px;
	margin: 50px auto;
	position: relative;
	overflow: hidden;
}

#picBox_top ul#show_pic_top {
	margin: 0;
	padding: 0;
	list-style: none;
	height: 205px;
	width: 610px;
	position: absolute;
}

#picBox_top ul#show_pic_top li {
	float: left;
	margin: 0;
	padding: 0;
	height: 205px;
}

#picBox_top ul#show_pic_top li img {
	display: block;
}

#icon_num_top {
	position: absolute;
	bottom: 0px;
	right: 10px;
}

#icon_num_top li {
	float: left;
	background: url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat
		-15px 0;
	width: 15px;
	height: 15px;
	list-style: none;
	color: #39F;
	text-align: center;
	cursor: pointer;
	padding: 0;
	margin: 0;
	margin-right: 5px;
}

#icon_num_top li:hover, #icon_num_top li.active {
	background: url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat 0
		0;
	color: #fff;
}
</style>
</head>
<body screen_capture_injected="true">
	<div id="wp">
		<!--头-->
		<div id="header">
			<h1 id="top"></h1>
			<div class="nav">
				<div id="logo"></div>
				<div class="mglc iemr">
					<div div class="iebg">
						<ul class="menu">
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111110">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111112"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=32222233312227"> 
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111113">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111113">  </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111114">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111115"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111132"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111118"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111122">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=32222233312226">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111119">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=32222233331114"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111121">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=32222233312222"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=32222233312224"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=32222233332224">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111128">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111125"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111127"> </a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111129">
									</a></li>
							<li class="m"><a
								href="pagingquery.do?docchannel=11111111111135"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--黑线-->
		<div class="lineimg"></div>
		<!--body-->
		<div class="box-top">
			<div class="top-top">
				<div class="top-flash">
					<div id="picBox">
						<ul id="show_pic" style="left: 0;">
							<c:forEach items="${indexPageContent.imgNews}"
								var="documentValue" varStatus="status">
								<li><img
									src="<c:out
														value="${documentValue.url}" />"
									alt="" title="" /></li>
							</c:forEach>
							<!-- 
							<li><img src="altanhurd/indexajil/default.jpg" alt=""
								title="" /></li>
							<li><img src="altanhurd/indexajil/default.jpg" alt=""
								title="" /></li>
							<li><img src="altanhurd/indexajil/default.jpg" alt=""
								title="" /></li>
							<li><img src="altanhurd/indexajil/default.jpg" alt=""
								title="" /></li>
								 -->
						</ul>
						<ul id="icon_num">
							<c:forEach items="${indexPageContent.imgNews}"
								var="documentValue" varStatus="status">
								<li><c:out value="${status.index+1}" /></li>
							</c:forEach>
							<!-- 
							<li class="active">1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							 -->
						</ul>
					</div>
				</div>
				<div class="top-content">
					<div class="top-box4-1">
						<h3 class="top-cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="top-box4-1-1">
							<div class="top-box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.selectedarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="search-box">
					<div class="search-box4-1">
						<h3 class="search-cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="search-box4-1-1">
							<div class="search-box2-1">
								<div class="mglc">
									<ul class="news-title">
										<form action="searchform" id="searchform" method="post">
											<li class="m"><input name="searchtext" id="searchtext" type="text"
												size="36" maxLength="36" /></li>
											<li class="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
											<li class="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="radio" name="type" value="1" onclick="javascript:setsearchtype('searchblog.do');" />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"
												name="type" value="2" onclick="javascript:setsearchtype('searchdoc.do');" /> 
											</li>
											<li class="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
											<li class="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="button" value="" onclick="javascript:search()" class="sub_btn"  /></li>
										</form>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				var glide = new function() {
					function $id(id) {
						return document.getElementById(id);
					}
					;
					this.layerGlide = function(auto, oEventCont, oSlider,
							sSingleSize, second, fSpeed, point) {
						var oSubLi = $id(oEventCont).getElementsByTagName('li');
						var interval, timeout, oslideRange;
						var time = 1;
						var speed = fSpeed
						var sum = oSubLi.length;
						var a = 0;
						var delay = second * 1000;
						var setValLeft = function(s) {
							return function() {
								oslideRange = Math
										.abs(parseInt($id(oSlider).style[point]));
								$id(oSlider).style[point] = -Math
										.floor(oslideRange
												+ (parseInt(s * sSingleSize) - oslideRange)
												* speed)
										+ 'px';
								if (oslideRange == [ (sSingleSize * s) ]) {
									clearInterval(interval);
									a = s;
								}
							}
						};
						var setValRight = function(s) {
							return function() {
								oslideRange = Math
										.abs(parseInt($id(oSlider).style[point]));
								$id(oSlider).style[point] = -Math
										.ceil(oslideRange
												+ (parseInt(s * sSingleSize) - oslideRange)
												* speed)
										+ 'px';
								if (oslideRange == [ (sSingleSize * s) ]) {
									clearInterval(interval);
									a = s;
								}
							}
						}

						function autoGlide() {
							for (var c = 0; c < sum; c++) {
								oSubLi[c].className = '';
							}
							;
							clearTimeout(interval);
							if (a == (parseInt(sum) - 1)) {
								for (var c = 0; c < sum; c++) {
									oSubLi[c].className = '';
								}
								;
								a = 0;
								oSubLi[a].className = "active";
								interval = setInterval(setValLeft(a), time);
								timeout = setTimeout(autoGlide, delay);
							} else {
								a++;
								oSubLi[a].className = "active";
								interval = setInterval(setValRight(a), time);
								timeout = setTimeout(autoGlide, delay);
							}
						}

						if (auto) {
							timeout = setTimeout(autoGlide, delay);
						}
						;
						for (var i = 0; i < sum; i++) {
							oSubLi[i].onmouseover = (function(i) {
								return function() {
									for (var c = 0; c < sum; c++) {
										oSubLi[c].className = '';
									}
									;
									clearTimeout(timeout);
									clearInterval(interval);
									oSubLi[i].className = "active";
									if (Math
											.abs(parseInt($id(oSlider).style[point])) > [ (sSingleSize * i) ]) {
										interval = setInterval(setValLeft(i),
												time);
										this.onmouseout = function() {
											if (auto) {
												timeout = setTimeout(autoGlide,
														delay);
											}
											;
										};
									} else if (Math
											.abs(parseInt($id(oSlider).style[point])) < [ (sSingleSize * i) ]) {
										interval = setInterval(setValRight(i),
												time);
										this.onmouseout = function() {
											if (auto) {
												timeout = setTimeout(autoGlide,
														delay);
											}
											;
										};
									}
								}
							})(i)
						}
					}
				}
				glide.layerGlide(true, 'icon_num', 'show_pic', 780, 1, 0.1,
						'left');
			</script>
			<div class="top-bottom">
				<div class="top-login">
					<div class="search-box4-1">
						<h3 class="search-cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="search-box4-1-1" id="loginform">
							<div class="search-box2-1">
								<div class="mglc">
									<ul class="news-title">
										<form action="" method="post">
											<li class="m">   <input name="username"
												type="text" size="18" maxLength="36" /></li>
											<li class="m">  <input name="password"
												type="password" size="18" maxLength="36" /></li>
											<li class="m">
												<table>
													<tr>
														<td>  </td>
														<td><a href="javascript:replaceverifycode();"><img
																src="verifyCodeServlet" id="varifyimg" width="80"
																height="21" /></a></td>
														<td><input name="validcode" type="text" size="4"
															style="height: 18px; width: 44px;" maxLength="4" /></td>
													</tr>
												</table>
											</li>
											<li class="m">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <!-- 											<input -->
												<!-- 												type="submit" value="" class="sub_btn" /> -->
												<a href="javascript:login();"> </a>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <!-- 												<input -->
												<!-- 												type="submit" value="" class="sub_btn" /> -->
												<a href="registe.do"> </a>
											</li>
										</form>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="top-new">
					<div class="top-box4-1">
						<h3 class="top-cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="top-box4-1-1">
							<div class="top-box2-1">
								<div class="mglc">
									<ul class="news-title" style="-webkit-padding-start: 0px;">
										<c:forEach items="${indexPageContent.recentDocs}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
											<!--  
											<li class="m" style="padding-right: 0px;">
												<div class="newslist">
													<div class="docauthor">
														<a><c:out value="${documentValue.docauthor}" /></a>
													</div>
													<div class="doctitle">
														<a
															href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
															target="_blank" class="tit_text_overflow"><c:out
																value="${documentValue.doctitle}" /></a>
													</div>


												</div>
											</li>
											-->
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="top-old">
					<div class="top-box4-1">
						<h3 class="top-cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="top-box4-1-1">
							<div class="top-box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.hotdocs}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
											-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content-box">
			<div class="left">
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="{:U('list/index',array('id'=>13))}" class="m">
									 </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<ul class="editors">
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
							</ul>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="{:U('list/index',array('id'=>13))}" class="m">
									 </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<ul class="editors">
								<c:forEach items="${indexPageContent.newUsers}" var="userValue"
									varStatus="status">
									<li><a
										href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"
										target="_blank"><img
											src="getsmheadimge.do?userid=<c:out value="${userValue.userid}"/>"
											title=""></a> <!-- 										<p> --> <%-- 											<c:out value="${userValue.artname}" /> --%>
										<!-- 										</p> --></li>
								</c:forEach>
								<!--  
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
									-->
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--主内容模块中间部分-->
			<div class="center">
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">


										<c:forEach items="${indexPageContent.newsarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>

										<!-- 
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												 -->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.bookarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.bookarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.literature}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="right">
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.historyarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.historyarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.nature}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.health}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!-- 
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="line2"></div>
		<div class="box-video">
			<div class="video-box4-1">
				<h3 class="cat-title">
					<div class="mglc">
						<a href="#" class="m">  </a>
					</div>
				</h3>
				<div class="video-box4-1-1">
					<ul class="images">
						<c:forEach items="${indexPageContent.imgs}" var="imgValue"
							varStatus="status">
							<li><a
								href="getimginfo.do?imgid=<c:out value="${imgValue.imgid}"/>&userid=<c:out value="${imgValue.userid}"/>"
								target="_blank"><img
									src="getimg.do?imgid=<c:out value="${imgValue.imgid}"/>"
									title=""></a> <!-- 								<p>   </p> --></li>
						</c:forEach>

						<!--  
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
							-->
					</ul>
				</div>
			</div>
		</div>
		<div class="line2"></div>
		<div class="content-box-mid">
			<div class="left">
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<ul class="editors">
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
							</ul>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">  </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<ul class="editors">
								<c:forEach items="${indexPageContent.topUsers}" var="userValue"
									varStatus="status">
									<li><a
										href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"
										target="_blank"><img
											src="getsmheadimge.do?userid=<c:out value="${userValue.userid}"/>"
											title=""></a> <!-- 										<p> --> <%-- 											<c:out value="${userValue.artname}" /> --%>
										<!-- 										</p> --></li>
								</c:forEach>
								<!--  
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
									-->
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--主内容模块中间部分-->
			<div class="center">
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"></a>
							</div>
							<a href="{:U('list/index',array('id'=>18))}"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.sport}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.discussarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="right">
				<!--幻灯-->
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.technicarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
												-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.poemsarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="line2"></div>
		<div class="box-video">
			<div class="video-box4-1">
				<h3 class="cat-title">
					<div class="mglc">
						<a href="#" class="m"></a>
					</div>
				</h3>
				<div class="video-box4-1-1">
					<ul class="images">
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
						<li><a href="#" target="_blank"><img
								src="altanhurd/indexajil/vip.jpg" title=""></a>
							<p>   </p></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="line2"></div>
		<div class="content-box mgb10">
			<div class="left">
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">     </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<ul class="editors">
								<c:forEach items="${indexPageContent.recentLoginUsers}"
									var="userValue" varStatus="status">
									<li><a
										href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"
										target="_blank"><img
											src="getsmheadimge.do?userid=<c:out value="${userValue.userid}"/>"
											title=""></a> <!-- 										<p> --> <%-- 											<c:out value="${userValue.artname}" /> --%>
										<!-- 										</p> --></li>
								</c:forEach>
								<!--  
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
									-->
							</ul>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">     </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<ul class="editors">
								<c:forEach items="${indexPageContent.activeusers}"
									var="userValue" varStatus="status">
									<li><a
										href="gouserindex.do?userid=<c:out value="${userValue.userid}" />"
										target="_blank"><img
											src="getsmheadimge.do?userid=<c:out value="${userValue.userid}"/>"
											title=""></a> <!-- 										<p> --> <%-- 											<c:out value="${userValue.artname}" /> --%>
										<!-- 										</p> --></li>
								</c:forEach>
								<!--  
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
								<li><a href="#" target="_blank"><img
										src="altanhurd/indexajil/vip.jpg" title=""></a>
									<p>   </p></li>
									-->
							</ul>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m">    </a>
							</div>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--主内容模块中间部分-->
			<div class="center">
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href=""> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.Anecdotes}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!-- 
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href=""> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.lawarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href=""> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.monggoldiscuss}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.musicarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!-- 
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="right">
				<!--幻灯-->
				<div class="box4" id="box4">
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.poemsarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href=""> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.socialarts}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href=""> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.monggolian}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!--  
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
										-->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box4-1">
						<h3 class="cat-title">
							<div class="mglc">
								<a href="#" class="m"> </a>
							</div>
							<a href="#"> <span></span>
							</a>
						</h3>
						<div class="box4-1-1">
							<div class="box2-1">
								<div class="mglc">
									<ul class="news-title">
										<c:forEach items="${indexPageContent.humorous}"
											var="documentValue" varStatus="status">
											<li class="m"><a
												href="getuserdocdetail.do?docid=<c:out value="${documentValue.docid}"/>"
												target="_blank" class="tit_text_overflow"><c:out
														value="${documentValue.doctitle}" /></a></li>
										</c:forEach>
										<!-- 
										<li class="m"><a href="#" target="_blank"
											class="tit_text_overflow">   2014   
												  </a></li>
									-->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--黑线-->
		<div class="lineimg"></div>
		<!--页脚-->

		<div id="footer">
			<div class="footer-sec">
				<div class="mglc">
					<h3 class="m">
						<p class="m narrow-cat">
							<a href="" class="m">  </a>
						</p>
						&nbsp;
					</h3>
					<ul>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
						<li class="m"><a href="#" target="_blank">   </a>
						</li>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
						<li class="m"><a href="#" target="_blank">   
								</a></li>
					</ul>
				</div>
			</div>
			<div class="footer-sec">
				<div class="mglc">
					<h3 class="m">
						<p class="m narrow-cat">
							<a href="" class="m"> </a>
						</p>
						&nbsp;
					</h3>
					<ul>
						<li class="m"><a href="#" target="_blank">   </a></li>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
						<li class="m"><a href="#" target="_blank">  
								QQ</a></li>
						<li class="m"><a href="#" target="_blank">   </a></li>
					</ul>
				</div>
			</div>
			<div class="footer-sec">
				<div class="mglc">
					<h3 class="m">
						<p class="m narrow-cat">
							<a href="" class="m">  </a>
						</p>
						&nbsp;
					</h3>
					<ul>
						<li class="m"><a href="#" target="_blank"> 
								</a></li>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
						<li class="m"><a href="#" target="_blank">  </a></li>
					</ul>
				</div>
			</div>
			<div class="footer-sec">
				<div class="mglc">
					<h3 class="m">
						<p class="m narrow-cat">
							<a href="" class="m">  </a>
						</p>
						&nbsp;
					</h3>
					<ul>
						<li class="m"><a href="#" target="_blank">  </a></li>
						<li class="m"><a href="#" target="_blank">  </a>
						</li>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
					</ul>
				</div>
			</div>
			<div class="footer-sec bor-none">
				<div class="mglc">
					<h3 class="m">
						<p class="m narrow-cat">
							<a href="" class="m">  </a>
						</p>
						&nbsp;
					</h3>
					<ul>
						<li class="m"><a href="#" target="_blank">  </a></li>
						<li class="m"><a href="#" target="_blank">  </a></li>
						<li class="m"><a href="#" target="_blank"> </a></li>
						<li class="m"><a href="#" target="_blank">  
								</a></li>
					</ul>
				</div>
			</div>
			<!--页脚信息-->
			<div class="foot-info">
				<p class="copyright">©&nbsp;2014&nbsp;&nbsp;金轮文化传媒</p>
				<div class="contact">
					<p>
						蒙ICP备00000000号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>E-mail</b>：<a
							href="mailto:altanhurd@163.com">altanhurd@163.com</a><span>☎</span>：158-0000-0000
					</p>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.nav li a').each(function() {
				if ($($(this))[0].href == String(window.location))
					$(this).parent().addClass('active');
			});
		})
	</script>

	<!--sleder 只影响谷歌，即使去掉在IE6、7火狐中仍正常-->
	<!-- <script src="{$site_host}/indexajil/swfobject.js" type="text/javascript"></script> -->
	<div id="elevator_item" style="display: block;">
		<a id="elevator" onclick="return false;" title="回到顶部"></a> <a
			class="qr"></a>
		<div class="qr-popup" style="display: none;">
			<a class="code-link"> <img class="code"
				src="altanhurd/indexajil/images/qrwx.jpg" width="150px"
				height="150px"></a> <span>金轮网</span>
			<div class="arr"></div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".tit_text_overflow").each(function() {
				var maxwidth = 50;
				if ($(this).text().length > maxwidth) {
					$(this).text($(this).text().substring(0, maxwidth));
					$(this).html($(this).html() + '   ');
				}
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$(window).scroll(function() {
				var scrolltop = $(this).scrollTop();
				if (scrolltop >= 200) {
					$("#elevator_item").show();
				} else {
					$("#elevator_item").hide();
				}
			});
			$("#elevator").click(function() {
				$("html,body").animate({
					scrollTop : 0
				}, 500);
			});
			$(".qr").hover(function() {
				$(".qr-popup").show();
			}, function() {
				$(".qr-popup").hide();
			});
		});
	</script>
</body>
</html>