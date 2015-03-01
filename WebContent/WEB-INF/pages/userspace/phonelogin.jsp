<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>博主的主页</title>
<link href="img/css/login.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/sitejs/login.js"></script>
<script type="text/javascript" src="js/sitejs/regist.js"></script>
<script type="text/javascript" src="js/sitejs/changevalidcode.js"></script>
<div class="lmainR" style="width:100%;background: #1b6fbd;">
	<div class="loginSheet">
		<div class="border">
			<div class="loginWindow">
				<div class="content">
					<form class="mglForm" action="checkandlogin.do" id="loginform"
						method="post">
						<div class="label">  </div>
						<div class="label">  </div>
						<div class="label">
							  <a href="javascript:replaceverifycode();"></a>
							:
						</div>
						<div class="label">
							<img src="verifyCodeServlet" id="varifyimg" width="18"
								height="100" />
						</div>
						<div class="inputHolder">
							<input name="username" id="username" value="" />
						</div>
						<div class="inputHolder">
							<input name="password" id="password" type="password" />
						</div>
						<div class="inputHolder">
							<input name="varifycode" id="varifycode" value="" />
						</div>
						<div class="mnlist">
							<!-- 						<input  type="button" onclick="javascript:dosubmit();" value=" "/> -->
							<a href="javascript:phonelogin();"></a> <a
								id="registlink" href="registe.do">&nbsp;&nbsp;
								&nbsp;&nbsp;</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	<c:choose>
	<c:when test="${mess==1}">
	MessageWindow.showMess("           ");
	</c:when>
	<c:when test="${mess==2}">
	MessageWindow.showMess("    ");
	</c:when>
	<c:otherwise>
	</c:otherwise>
	</c:choose>
</script>