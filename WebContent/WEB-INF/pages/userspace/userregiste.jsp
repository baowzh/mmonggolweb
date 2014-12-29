<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="img/css/main.css" type="text/css" rel="stylesheet" />
<link href="img/css/login.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/sitejs/regist.js"></script>
<script type="text/javascript" src="js/sitejs/changevalidcode.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> </title>
</head>
<body>
	<div class="lmainR ofh" style="text-align: center; height: 64px;">
		<img src="img/logo.png" width="980" />
	</div>
	<div class="lmainR  ">
		<div class="loginSheet">
			<div class="iconContainer"></div>
			<div class="border">
				<div class="loginWindow">
					<div class="content" style="width: 170px;">
						<form class="mglForm" action="doregiste.do" id="userinfoform"
							method="post">
							<div class="label">  </div>
							<div class="label">:</div>
							<div class="label">  </div>
							<div class="label">
								  <a href="javascript:replaceverifycode();"></a>
								:
							</div>
							<div class="label">
								<a href="javascript:replaceverifycode();"><img
									src="verifyCodeServlet" id="varifyimg" width="18" height="100" />
								</a>
							</div>
							<div class="inputHolder">
								<input name="username" id="username" value="" />
							</div>
							<div class="inputHolder">
								<input name="artname" id="artname" value="" />
							</div>
							<div class="inputHolder">
								<input name="password" id="password" type="password" />
							</div>
							<div class="inputHolder">
								<input name="varifycode" id="varifycode" value="" />
							</div>
							<div class="mnlist"
								style="height: 210px; text-indent: 0px; font-size: 16px;">
								<input name="agree" id="agree" type="checkbox"> 
								    
							</div>
							<div class="mnlist">
								<a href="javascript:doregist();"></a> &nbsp;&nbsp;<a
									href="index.do"></a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>