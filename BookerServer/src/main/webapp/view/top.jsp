<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link href="../css/ihover.css" rel="stylesheet">
</head>
<body>
	<c:if test="${empty sessionScope.UserId }">
		<div id="login" style="float: right;">
			<button type="button"  onclick="display_login()" class="btn btn-primary" style="margin: 10px;">Login</button>
		</div>
		<c:if test="${Login_error == 1 }">
			<script type="text/javascript">alert("You are not subscribed. Please join us!");</script>
		</c:if>
		<c:if test="${Password_error == 1 }">
			<script type="text/javascript">alert("The password was wrong.");</script>
		</c:if>
		<div id="loginForm" style="display: none; float: right;">
			<form class="form-inline" style="margin-top:10px;" ng-keypress="enterdLogin($event)">
				<div class="form-group">
					<label for="inputId" style="margin-right:10px;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></label>
					<input type="text" style="margin-right:10px;" class="form-control" ng-model="inputId" placeholder="Insert your ID">
					<label for="inputPassword" style="margin-right:10px;"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></label>
					<input type="password" class="form-control" ng-model="inputPassword" placeholder="Password" style="margin-right:10px;">
				</div>
				<button type="button" class="btn btn-primary" style="margin-right:10px;" ng-click="login()">Login</button>
			</form>
		</div>
	</c:if>
	<c:if test="${not empty sessionScope.UserId }">
		<div id="userForm" style="width: 100%;height:100%;margin-top: 10px;">
			<div style="padding-left: 10px;">
				<div class="ih-item circle effect5" style="width: 40px; height: 40px; float: left;">
					<a href="#/myProfile">
						<div style="width: 40px; height: 40px;">
							<div class="circle" style=" padding-top: 5px;" ng-click="myProfile()">
								<font color="White" style="font-size: 20px; margin-left: 13px;">${sessionScope.Name_tag}</font>
							</div>
						</div>
						<div class="info"><div class="info-back"><h3 style="color: gray;">My Profile</h3></div></div>
					</a>
				</div>
			</div>
			<div class="ih-item circle effect5" style="margin-left:10px; float: left; width: 40px; height: 40px;">
				<a href="#/reservation">
					<div style="width: 40px; height: 40px;"><img src="/img/Cart.ico" style=" width: 40px; float: right;"></div>
					<div class="info"><div class="info-back"><h3 style="color: gray;">reservation book</h3></div></div>
				</a>
			</div>
			<div class="ih-item circle effect5" style="margin-left:10px; float: left; width: 40px; height: 40px;">
				<a href="#/read">
					<div style="width: 40px; height: 40px;"><img src="/img/Check.ico" style=" width: 40px; float: right;"></div>
					<div class="info"><div class="info-back"><h3 style="color: gray;">reading book</h3></div></div>
				</a>
			</div>
			<div class="ih-item circle effect5" style="margin-left:10px; float: left; width: 40px; height: 40px;">
				<a href="#/rental">
					<div style="width: 40px; height: 40px;"><img src="/img/Contacts.ico" style=" width: 40px; float: right;"></div>
					<div class="info"><div class="info-back"><h3 style="color: gray;">rental book</h3></div></div>
				</a>
			</div>
			<div class="ih-item circle effect5" style="margin-left:10px; float: left; width: 40px; height: 40px; ">
				<a href="#/wish">
					<div style="width: 40px; height: 40px;"><img src="/img/Heart.ico" style=" width: 40px; float: right;"></div>
					<div class="info"><div class="info-back"><h3 style="color: gray;">My Study</h3></div></div>
				</a>
			</div>
			<div class="ih-item circle effect5" style="margin-right:10px; float: right; width: 40px; height: 40px; ">
				<a href="#">
					<div style="width: 40px; height: 40px;"><img src="/img/logout.ico" ng-click="logout()" style=" width: 40px;"></div>
					<div class="info" style="float: right;">
						<div class="info-back" style="float: right;">
							<font style="color:white; float: right; ">Log Out</font>
						</div>
					</div>
				</a>
			</div>
		</div>
	</c:if>
</body>
</html>