<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<style type="text/css">
		.middle{
			height: auto;
		}
		.grid-960{
			max-width: 960px;
		}
		.star_rating {font-size:0; letter-spacing:-4px;}
		.star_rating a {
			font-size:22px;
			letter-spacing:0;
			display:inline-block;
			margin-left:5px;
			color:#ccc;
			text-decoration:none;
		}
		.star_rating a:first-child {margin-left:0;}
		.star_rating a.on {color:#777;}
		.thumbnail-book{
			padding: 20px;
		}
		#bookInfo {
			margin-top: 50px;
		}
		table.type07 {
			border-collapse: collapse;
			text-align: left;
			line-height: 1.5;
			border: 1px solid #ccc;
			margin: 0px 0px;
		}
		table.type07 thead {
			border-right: 1px solid #ccc;
			border-left: 1px solid #ccc;
			background: #4FC9DE;
		}
		table.type07 thead th {
			padding: 10px;
			font-weight: bold;
			vertical-align: top;
			color: #fff;
		}
		table.type07 tbody th {
			width: 150px;
			padding: 10px;
			font-weight: bold;
			vertical-align: top;
			border-bottom: 1px solid #ccc;
			background: #F1FFFF;
		}
		table.type07 td {
			width: 350px;
			padding: 10px;
			vertical-align: top;
			border-bottom: 1px solid #ccc;
		}
		.clearbtn {
			border: 0px;
			background: transparent;
		}
		.fonted {
			font-family: PureunJeonnam;
		}
</style>
<script type="text/javascript">
	var rate=0;
	/*별점*/
	$(document).ready(function() {
		$( ".star_rating a" ).click(function() {
			$(this).parent().children("a").removeClass("on");
			$(this).addClass("on").prevAll("a").addClass("on");
			rate = $(this).attr("id");
			document.getElementById("rate").value=rate;
			return false;
		});
	});
</script>
</head>
<body>
	<div class="container-fluid grid-960 center-block">
		<div class="row" data-ng-init="bookDetail()">
			<div class="col-md-8 text-center well well-sm thumbnail-book">
				<img src="/img/no_image.png" class="img-responsive img-thumbnail" >
			</div>
			<div class="col-md-4">
				<div id="bookInfo">
					<div class="panel panel-default">
						<div class="panel-heading">책 정보</div>
						<table class="table table-bodered">
							<tr><td><h4><strong>Title</strong></h4></td><td><h4>{{book.bookTitle}}</h4></td></tr>
							<tr><td><h5><strong>Writer</strong></h5></td><td><h5>{{book.bookWriter}}</h5></td></tr>
							<tr><td><h5><strong>Publisher</strong></h5></td><td><h5>{{book.bookPublisher}}</h5></td></tr>
							<tr><td><h5><strong>bookDate</strong></h5></td><td><h5>{{book.bookDate}}</h5></td></tr>
						</table>
						<br/>
						<div class="panel-footer">
							<input type="button" ng-hide="rental" ng-click="rent(book.bookId)" class="btn btn-success btn-lg fonted" value="RENT" />
							<input type="button" ng-show="rental.memberId" class="btn btn-success disabled btn-lg fonted" value="RENTED" />
							<input type="button" ng-show="rental && !rental.memberId && !reservation" ng-click="makeReservation(book.bookId)" class="btn btn-success btn-lg fonted" value="RESERVATION" />
							<input type="button" ng-show="rental && reservation" class="btn btn-success disabled btn-lg fonted" value="RESERVATIONED" />
							<button type="button" ng-show="wishNo==null" class="clearbtn fonted"><img id="wish" src="/img/buttonOff.png" width="40" height="40" ng-click="wishIn(book.bookId,'${sessionScope.UserId}')"/></button>
							<button type="button" ng-show="wishNo!=null" class="clearbtn fonted"><img id="wish" src="/img/buttonOn.png" width="40" height="40" ng-click="wishOut(book.bookId,'${sessionScope.UserId}')"/></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div ng-if="${empty sessionScope.UserId}">
				<div style="text-align: center;background-color: #F6F6F6; width: 100%;">
					후기를 작성하기 위해선 로그인이 필요합니다.
				</div>
			</div>
			<div ng-if="${not empty sessionScope.UserId }">
				<form id="comment" class="comment from-inline panel panel-default" style="background:#F6F6F6;">
					<div class="panel-body">
						<table width="100%">
							<tr>
								<td>
									<textarea rows="4" cols="90" id="commentContents" name="commentContents" value="" class="col-md-12 form-control"></textarea>
								</td>
								<td width="100px" style="height:100%;">
									<input type="button" class="btn btn-primary btn-lg fonted" id="button1" ng-click="comment()" value="Write" style="height:100%; margin: 15px;" />
								</td>
							</tr>
						</table>
					</div>
					<div class="panel-footer form-group">
						<strong>Please rate the book.</strong>
						<span class="star_rating" id="star_rating">
							<a href="#" id="1">★</a>
							<a href="#" id="2">★</a>
							<a href="#" id="3">★</a>
							<a href="#" id="4">★</a>
							<a href="#" id="5">★</a>
						</span>
						<input type="hidden" id="rate" value="0"/>
					</div>
				</form >
			</div>
			<div id="commentList" style="margin-left:auto; margin-right:auto;">
				<div ng-if="commentList.content.length == 0"><h4><center>No reviews have been written.</center></h4></div>
				<div ng-if="commentList.content">
					<div style="font-family: PureunJeonnam;">
						<table class="type07" style="font-family: PureunJeonnam; width : 100%;">  
							<thead> 
								<tr>
									<th scope="cols">작성자</th>
									<th scope="cols">내용</th>
									<th scope="cols">평점</th>
									<th scope="cols">작성일</th>
								</tr>
							</thead>
							<tr ng-repeat="comment in commentList.content">
								<th scope="row">{{comment.commentId}}</th>
								<td>{{comment.commentContent}}</td>
								<td>{{comment.commentRate }}</td>
								<td>{{comment.commentRegdate}}
									<div style="float: right; margin-right:10%; " ng-if="'${sessionScope.UserId}'==comment.commentId">
										<span class="glyphicon glyphicon-remove" aria-hidden="true"  ng-click="dropComment(comment.commentNo,book.bookId)" ></span>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
