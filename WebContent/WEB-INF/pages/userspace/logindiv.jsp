<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="logindiv" style="display: none">
	<div class="content"
		style="padding-left: 30px; width: 230px; height: 270px;">
		<form action="addfriend.do" name="addfriendform" id="addfriendform"
			class="mglForm">
			<div class="label" style="text-align: center;">  </div>
			<div class="inputHolder" style="width: 32px; height: 270px;">
				<input type="text" name="username" id="username"
					style="-webkit-transform-origin: 10px 20px;" />
			</div>
			<div class="label" style="text-align: center;">  </div>
			<div class="inputHolder" style="width: 32px; height: 270px;">
				<input type="password" name="password" id="password"
					style="-webkit-transform-origin: 10px 20px;" />
			</div>
			<div class="label" style="text-align: center;">
				<img src="verifyCodeServlet" id="varifyimg" width="18" height="100">
			</div>
			<div class="inputHolder" style="width: 32px; height: 270px;">
				<input type="text" name="varifycode" id="varifycode"
					style="-webkit-transform-origin: 10px 20px;" />
			</div>
			<div class="mnlist" style="height: 270px;"></div>
			<div class="mnlist" style="height: 270px; text-align: center;">
				<a href="javascript:login();"> </a>
			</div>
		</form>
	</div>
</div>


