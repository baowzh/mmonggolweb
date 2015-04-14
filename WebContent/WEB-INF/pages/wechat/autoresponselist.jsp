<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" uri="/css-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理自动回复</title>
<t:font_css type="jquery,easyui,tools"></t:font_css>
<link href="site/css/main.css" rel="stylesheet" type="text/css" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<link href="img/css/main.css" type="text/css" rel="stylesheet" />
<link href="img/css/blog.css" type="text/css" rel="stylesheet" />
<link href="img/css/custom.css" type="text/css" rel="stylesheet" />
<link href="site/css/autoresponse.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" media="screen"
	href="plugins/jquery.jqGrid-4.4.3/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="plugins/jquery.jqGrid-4.4.3/css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css"
	href="plugins/jquery.jqGrid-4.4.3/css/jquery-ui.css" media="screen" />
<script type="text/ecmascript"
	src="plugins/jquery.jqGrid-4.4.3/js/jquery-1.7.2.min.js"></script>
<script type="text/ecmascript"
	src="plugins/jquery.jqGrid-4.4.3/js/jquery.jqGrid.min.js"></script>
<script type="text/ecmascript"
	src="plugins/jquery.jqGrid-4.4.3/js/i18n/grid.locale-cn.js"></script>
<script src="plugins/jquery.jqGrid-4.4.3/js/jquery-ui.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="js/sitejs/searchdoc.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script src="js/sitejs/autoresponse.js"></script>
<style>
.ui-jqgrid tr.jqgrow td {
	font-weight: normal;
	overflow: hidden;
	white-space: pre;
	height: 22px;
	padding: 0 2px 0 2px;
	border-bottom-width: 1px;
	border-bottom-color: inherit;
	border-bottom-style: solid;
	font-family: "MenksoftQagan";
	font-size: 16px;
}
</style>
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
		<div class="lmainR">
			<table id="jqGrid"></table>
			<div id="jqGridPager"></div>
			<input type="hidden" name="resid" id="resid"
				value="<c:out value="${resid}" />"></input>
		</div>
		<div class="listCardBody"
			style="height: 300px; min-width: 940px; float: left;">
			<table id="docjqGrid"></table>
			<div id="docjqGridPager"></div>
		</div>
		<div class="nwsl1"
			style="height: 300px; background: none; "></div>
		<div class="nwsl1"
			style="height: 300px; background: none; ">
			<div class="title" style="height: 80px; width: 25px;">
				<a href="javascript:addwechatdoc();"></a>
			</div>
			<div class="title" style="height: 90px; width: 25px;">
				<a href="javascript:delwechatdoc();"></a>
			</div>
		</div>
	</div>
	<%@ include file="../website/tail.jsp"%>
	<div style="display: none" id="adddocdiv"
		style="width:270px;height:300px;">
		<div class="content"
			style="width: 280px; height: 310px; background: white; padding: 5px; border-radius: 5px;">
			<form action=addWechatDoc.do id="adddocform" method="post"
				class="mglForm" enctype="multipart/form-data" />
			<div class="label" style="text-align: center;">
				:</div>
			<div class="label" style="height: 300px; overflow: hidden;">
				<a href="javascript:openseldiv();" id="seldoctitle"> 
					</a> <input type="hidden" name="docid" id="docid"></input>
			</div>
			<div class="label" style="text-align: center;"> :</div>
			<div class="inputHolder" style="width: 32px; height: 270px;">
				<input type="text" name="doctitle" id="doctitle"></input>
			</div>
			<div class="label" style="text-align: center;"> :</div>
			<div class="inputHolder" style="width: 32px; height: 270px;">
				<input type="text" name="docabc" id="docabc"></input>
			</div>
			<div class="label" style="text-align: center; height: 210px;">
				  :</div>
			<div class="inputHolder" style="width: 32px; height: 270px;">
				<input type="file" name="img" id="img"></input>
			</div>
			<input type="hidden" name="responseid" id="responseid"></input>
			<div class="label" style="text-align: center;">
				<a href="javascript:uploadwechatdoc();"></a>
			</div>
			</form>
		</div>
	</div>
	<div class="lmainR ofh">
		<div class="lmainR" id="seldoctab" style="display: none;">
			<table id="seljqGrid"></table>
			<div id="seljqGridPager"></div>
			<div
				style="width: 100%; text-align: center; padding-top: 5px; font-size: 14px;">
				<a href="javascript:setdocidandtitle();"
					style="border: 1px solid #77d5f7; background: #0078ae 50% 50% repeat-x; font-weight: normal; color: #ffffff;">确定</a><a
					style="border: 1px solid #77d5f7; background: #0078ae 50% 50% repeat-x; font-weight: normal; color: #ffffff; margin-left: 1em">关闭</a>
			</div>
		</div>
	</div>
</body>
</html>
