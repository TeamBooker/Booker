<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app ng-controller="AjaxController">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<link href="../css/ihover.css" rel="stylesheet">
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>	
	
	
	
	
	<style type="text/css">
	body, html{
		height: 100%;
	}
	
	.top{
		height: 8%;
		width: 100%;
		
	}
	
	.middle{
		height: 80%;
		min-height: 80%;
	}
	
	.bottom{
		background-color: #D8D8D8;
		height: 12%;
	}
	
	.circle {
		float: right;                           
		width: 40px;                              
		height: 40px;                            
		background: #B5B2FF;                           
		border-radius: 50%;                     
	}  
	

	
	
</style>
<title>TeamBook</title>


<script type="text/javascript" src="js/MemberController.js"></script>

</head>
<body>
	<div class=container-fluid style="height:100%; padding-left: 0px;padding-right: 0px;">
		<div class="top" id="top" style="float: right;">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		
		<div class="middle" style="clear: right;" id="middle" >
			
			<div>
				<img class="center-block" src="../img/TB_title.png" style="width: 30%; padding-bottom: 5%; padding-top: 5%;">
			</div>

			<div class="row center-block" style="width:40%;">
				<div class="col-lg-6" style="width: 100%;">
					<div class="input-group">
						<input type="text" id="search_text" class="form-control" placeholder="Search for..." value="">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" ng-click="search()" ><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
						</span>
					</div>
				</div>
			</div>
			
			
			<div style="margin-top:5%;">
				<center><h4>If you want to join us <a onClick="$('#exampleModalCenter').modal();">SignUp</a></h4></center>
			</div>
			
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Sign UP</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<jsp:include page="signup.jsp"></jsp:include>
						</div>
					</div>
				</div>
			</div>

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