<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app ng-controller="AdminController">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.2/css/AdminLTE.min.css" type="text/css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<link href="../css/ihover.css" rel="stylesheet">
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.2/js/adminlte.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>

	<style type="text/css">
		.middle{
			width:960px;
			margin: auto;
		}
	</style>
	<title>Booker admin page</title>
	<script type="text/javascript" src="js/AdminController.js"></script>
</head>
<body>
	<div class=container-fluid style="height:100%; padding-left: 0px;padding-right: 0px;">
		<div class="top" id="top" style="float: right;">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div class="middle" style="clear: right;" id="middle">
			<div>
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#catalog" aria-controls="catalog" role="tab" data-toggle="tab">도서관리</a></li>
					<li role="presentation"><a href="#member" aria-controls="member" role="tab" data-toggle="tab">회원관리</a></li>
				</ul>
			</div>
			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="catalog">
					<table class="table">
						<thead>
							<tr>
								<th>bookId</th>
								<th>bookTitle</th>
								<th>bookWriter</th>
								<th>bookPublisher</th>
								<th>bookDate</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="document in catalog.content">
								<td>{{document.bookId}}</td>
								<td>{{document.bookTitle}}</td>
								<td>{{document.bookWriter}}</td>
								<td>{{document.bookPublisher}}</td>
								<td>{{document.bookDate}}</td>
							</tr>
						</tbody>
					</table>
					<nav class="text-center" aria-label="Page navigation">
						<ul class="pagination">
							<li ng-click="previousCatalog();">
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li ng-repeat-start="idx in _.range(0, catalog.totalPages)" ng-click="pageCatalog(idx)"><a href="#">{{idx+1}}</a></li>
							<li ng-repeat-end class="divider"></li>
							<li ng-click="nextCatalog();">
								<a href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
				<div role="tabpanel" class="tab-pane" id="member">
					<table class="table">
						<thead>
							<tr>
								<th>id</th>
								<th>username</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="member in members.content">
								<td>{{member.id}}</td>
								<td>{{member.username}}</td>
							</tr>
						</tbody>
					</table>
					<nav class="text-center" aria-label="Page navigation">
						<ul class="pagination">
							<li ng-click="previousMembers();">
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li ng-repeat-start="idx in _.range(0, members.totalPages)" ng-click="pageMembers(idx)"><a href="#">{{idx+1}}</a></li>
							<li ng-repeat-end class="divider"></li>
							<li ng-click="nextMembers();">
								<a href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<hr />
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