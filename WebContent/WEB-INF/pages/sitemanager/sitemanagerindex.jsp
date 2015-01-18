<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<link href="img/css/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<link rel="stylesheet"
	href="js/jqui/css/ui-lightness/jquery-ui-1.10.3.custom.min.css" />
<script src="js/jqui/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
</head>
<body>
	<div class="news1">
		<a name="svrgal"></a>
		<div class="ttl1 m1ln" style="height: 680px; color: #fff;">
			<a href="#" style="color: #fff;">   </a>
		</div>
		<div class=mnlist>
			<li><a href="articlelist.do">  </a></li>
		</div>
		<div class=mnlist>
			<li><a href="pagingimglist.do">  </a></li>
		</div>
		<div class="mnlist">
			<li><a href="userlist.do">   </a></li>
		</div>
		<div class="mnlist">
			<li><a href="commentlist.do"> </a></li>
		</div>
		<div class="mnlist">
			<li><a href="getopinions.do"> </a></li>
		</div>
		<div class="mnlist">
			<li><a href="javascript:password()">  </a></li>
		</div>
		<div class="mnlist">
			<li><a href="advert.do">   </a></li>
		</div>
		<div class="mnlist">
			<li><a href="advert.do">   </a></li>
		</div>
		<div class="mnlist">
			<li><a href="votemanager.do"> </a></li>
		</div>
		<div class="mnlist">
			<li><a href="booklist.do"> </a></li>
		</div>
		<div class="mnlist">
			<li><a href="createsitepage.do"> </a></li>
		</div>
	</div>
	<!-- 444 -->
	<div class="content" id="astopwriting"
		style="padding-left: 8px; display: none;">
		<form class="mglForm" action="#" id="loginform" method="post">
			<div class="label"> </div>
			<div class="inputHolder" style="height: 9em;">
				<input name="oldpass" id="oldpass" type="password">
			</div>
			<div class="label">   </div>
			<div class="inputHolder" style="height: 9em;">
				<input type="password" name="password" id="password" value="" />
			</div>
			<div class="label">
				  <a href="javascript:replaceverifycode();"></a> :
			</div>
			<div class="label">
				<a href="javascript:replaceverifycode();"> <img
					src="verifyCodeServlet" id="varifyimg" width="18" height="100">
				</img>
				</a>
			</div>
			<div class="inputHolder" style="height: 9em;">
				<input name="validcode" id="varifycode">
			</div>
			<div class="inputHolder" style="height: 9em;">
				<div class="m1ln h100" style="text-align: center;">
					<a href="javascript:modifypass();">  </a>
				</div>
			</div>
			<input type="hidden" name="maillogin" id="maillogin"
				value="<c:out value="${maillogin}" />">
		</form>
	</div>
	<!-- 444 -->
	<!-- 
	<div style="display: none">
		<div class="lcell" style="width: 140px; height: 430px;"
			id="astopwriting">
			<table border="0" style="margin: 1em auto;">
				<tr>
					<td height="100">
						<div class="m1ln h100" style="height: 140px;"> 
							</div>
					</td>
					<td>
						<div class="m1ln h100" style="height: 140px;">  
							:</div>
					</td>
					<td>
						<div class="m1ln h100" style="height: 140px;"> 
							:</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>
						<div class="mfl">
							<input type="text" name="username" id="username"
								value="<c:out value="${userValue.username}"/>"
								readonly="readonly" />
						</div>
					</td>
					<td>
						<div class="mfl">
							<input type="password" name="oldpass" id="oldpass" value="" />
						</div>
					</td>
					<td>
						<div class="mfl">
							<input type="password" name="password" id="password" value="" />
						</div>
					</td>
					<td>
						<div class="m1ln h100">
							<a href="javascript:modifypass();"></a>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	 -->
</body>
</html>
<script language="javascript">
	function password() {
		$("#astopwriting").dialog({
			height : 290,
			width : 270,
			resizable : false,
			modal : true
		});
	}
	function modifypass() {
		// 校验工作及修改都放后台了
		var oldpass = $("#oldpass").val();
		if (oldpass == null || oldpass == '') {
			MessageWindow.showMess("     ");
			return;
		}
		var password = $("#password").val();
		if (password == null || password == '') {
			MessageWindow.showMess("      ");
			return;
		}

		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			dataType : "json",
			url : "modifyuserpass.do",// 请求的action路径
			data : {
				// 				username : $("#username").val(),
				pass : $("#password").val(),
				oldpass : $("#oldpass").val(),
				varifycode : $("#varifycode").val()
			},
			error : function() {// 请求失败处理函数
				alert('请求失败');
			},
			success : function(data) { // 请求成功后处理函数。
				if (data.mess == '1') {
					MessageWindow.showMess("  ");
					setTimeout(window.location.href = "tologin.do", 2000);
				} else if (data.mess == '2') {

				} else if (data.mess == '3') {

				}
			}
		});
	};
	/**
	 * 更新验证码
	 */
	var replaceverifycode = function() {
		var imgSrc = $("#varifyimg");
		var src = imgSrc.attr("src");
		imgSrc.attr("src", chgUrl(src));

	};
	// 时间戳
	// 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
	function chgUrl(url) {
		var timestamp = (new Date()).valueOf();
		url = url.substring(0, 17);
		if ((url.indexOf("&") >= 0)) {
			url = url + "¡Átamp=" + timestamp;
		} else {
			url = url + "?timestamp=" + timestamp;
		}
		return url;
	};
</script>