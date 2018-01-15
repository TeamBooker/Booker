<!DOCTYPE html>
<html ng-app ng-controller="AdminController">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<link href="../css/ihover.css" rel="stylesheet">
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script> 
	<style type="text/css">
	</style>
	<title>Booker admin</title>
	<script type="text/javascript">
		function AdminController($scope, $http)
		{
		}
	</script>
</head>
<body>
	<div class=container-fluid style="height:100%; padding-left: 0px;padding-right: 0px;">
		<div class="top" id="top" style="float: right;">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div class="middle" style="clear: right;" id="middle">
			
		</div>
		<div class="bottom">
			<table style="width: 100%; height: 100%; padding: 0;">
				<tr>
					<td style="width: 20%;"><img src="../img/TB_title.png" style="width: 50%;"></td>
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