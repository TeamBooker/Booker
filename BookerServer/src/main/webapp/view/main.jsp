<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="commonHead.jsp"/>
	<style type="text/css">
		body, html {
			height: 100%;
		}
		.top {
			height: 8%;
			width: 100%;
		}
		.middle {
			height: 80%;
			min-height: 80%;
		}
		.bottom {
			background-color: #D8D8D8;
			height: 12%;
		}
		.circle {
			float: right;
			width: 40px;
			height: 40px;
			background: #B5B2FF;
			border-radius: 50%
		}  
	</style>
	<title>TeamBook</title>
	<script type="text/javascript" src="js/MainController.js"></script>
</head>
<body ng-app="booker" ng-controller="MainController">
	<div class=container-fluid style="height:100%; padding-left: 0px;padding-right: 0px;">
		<div class="top" id="top" style="float: right;">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div class="middle" style="clear: right;" id="middle" >
			<jsp:include page="main_middle.jsp"/>
		</div>
		<div class="bottom">
			<table style="width: 100%; height: 100%; padding: 0;">
				<tr>
					<td style="width: 20%;"><img src="../img/TB_title.png" style="width: 50%;" onclick="javascript:window.location = '/main';"></td>
					<td style="width: 100%;">
						[16258] Suwon, Gyeonggi-do, Chowon-dong 16,<br/>
						Tell : 031-789-4561 / 1990-3300 Contact Us : 031-123-4567<br/>
						Copyright by Jeju Library Division All Right Reserved.<br/>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>