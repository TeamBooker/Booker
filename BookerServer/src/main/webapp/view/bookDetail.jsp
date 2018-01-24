<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
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
	<style type="text/css">
		.middle{
			height: auto;
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


		table.type05 {
			border-collapse: separate;
			border-spacing: 1px;
			text-align: left;
			line-height: 1.5;
			border-top: 1px solid #ccc;
			margin: 20px 10px;
		}
		table.type05 th {
			width: 150px;
			padding: 10px;
			font-weight: bold;
			vertical-align: top;
			border-bottom: 1px solid #ccc;
			background: #efefef;
		}
		table.type05 td {
			width: 350px;
			padding: 10px;
			vertical-align: top;
			border-bottom: 1px solid #ccc;
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
		.fontedBtn {
			font-family: PureunJeonnam;
			margin:5px;
		}
	</style>
</head>
<body>
	<div data-ng-init="bookDetail()"></div>
	<div id="wrap" style="height:500px; width:100%; margin-left:auto;margin-right:auto;">
	<div class="img" style=" float:left; width: 50%; height: 100%;">
		<img src="/img/no_image.png" style="width: 80%; height: 90%; margin-left: 10%;margin-right: 10%;" >
	</div>
	<div class="inform" style=" float:right;50%;height:300px; background:#FFFFFF; margin-right: 100px;padding-top:15px;margin-top:15px; font-family: PureunJeonnam; ">
		<table class="type05" width="450px" >
			<tr><td><strong>Title</strong></td><td>{{book.0.bookTitle}}</td></tr>
			<tr><td><strong>Writer</strong></td><td>{{book.0.bookWriter}}</td></tr>
			<tr><td><strong>Publisher</strong></td><td>{{book.0.bookPublisher}}</td></tr>
			<tr><td><strong>bookDate</strong></td><td>{{book.0.bookDate}}</td></tr>
		</table>
		<br/>
		<input type="button" ng-click="rent(book.0.bookId)" class="btn btn-success btn-lg fontedBtn" value="RENT" />
		<input type="button" ng-click="wish(book.0.bookId)" class="btn btn-warning btn-lg fontedBtn" value="WISH" />
	</div>
</div>
<div class="container-fluid">
	<div ng-if="${empty sessionScope.UserId }">
		<div style="text-align: center;background-color: #F6F6F6; width: 100%;">
			후기를 작성하기 위해선 로그인이 필요합니다.
		</div>
	</div>
	<div ng-if="${not empty sessionScope.UserId }">

		<div id="comment" class="comment" style="background:#F6F6F6;width:100%;padding-left:20%; padding-right:20%; PureunJeonnam; padding-right:auto;padding-top: 20px;">
			<div style="padding-left: 40%; padding-right: 40%;">
				<strong>Please rate the book.</strong>
				<p class="star_rating" id="star_rating">
					<a href="#" id="1">★</a>
					<a href="#" id="2">★</a>
					<a href="#" id="3">★</a>
					<a href="#" id="4">★</a>
					<a href="#" id="5">★</a>
				</p>
			</div>
			<textarea rows="4" cols="90" id="commentContents" name="commentContents" value=""  ></textarea>
			<input type="hidden" id="rate" value="0"/>
			<input type="button" class="btn btn-default" id="button1" ng-click="comment()" value="Write" style="height:60pt;width:60pt;margin-bottom: 70px;font-family: PureunJeonnam;"  />
		</div>
	</div>
	<div id="commentList" style="margin-left:auto; margin-right:auto;">
		<div ng-if="book.1.content==0"><h4><center>No reviews have been written.</center></h4></div>
		<div ng-if="book.1.content!=0">
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

					<tr ng-repeat="comment in commentList.1.content">
						<th scope="row">{{comment.commentId}}</th>
						<td>{{comment.commentContent}}</td>
						<td>{{comment.commentRate }}</td>
						<td>{{comment.commentRegdate}}
							<div style="float: right; margin-right:10%; " ng-if="'${sessionScope.UserId}'==comment.commentId">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"  ng-click="dropComment(comment.commentNo,book.0.bookId)" ></span>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>