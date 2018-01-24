<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>search</title>
	<style type="text/css">
	.middle{
		height: auto;
	}
</style>
</head>
<body>
	<div data-ng-init="search_list()">
		
	</div>
	<div class="container" style=" padding-top: 100px;">
		<!-- 검색 -->
		<div class="row" style=" padding-left: 20%; padding-right: 20%;">
			<div class="col-lg-6" style="width: 100%;">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for..." id="search_text" ng-model="word">
					<span class="input-group-btn">
						<a href="#/search/{{word}}">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							</button>
						</a>
					</span>
				</div><!-- /input-group -->
			</div><!-- /.col-lg-6 -->
		</div><!-- /.row -->
	</div>
	<div id="list" class="container" style="padding-top: 40px;">
		<div ng-repeat="bookList in bookList.content">
			<div class="BookBox" style=" width:240px; height:300px; float:left; margin-left: 20px; margin-right: 20px; margin-bottom: 30px;"> 
				<div class="thumbnail" style="height:300px;" id="{{bookList.bookId}}">
					<div class="ih-item square effect6 from_top_and_bottom" style="width:100%;">
						<a href="#/bookDetail/{{bookList.bookId}}">
							<div class="img" style="width: 100%;"> <img src="/img/no_image.png" alt="..." style="width: 100%;"/></div>
							<div class="info">
								<h3 style=" text-overflow: ellipsis; overflow: hidden;white-space: nowrap;">{{bookList.bookWriter}}</h3>
								<p>{{bookList.bookPublisher}}</p>
								<p>{{bookList.bookDate}}</p>
							</div>
						</a>
					</div>
					<div class="caption">
						<div style="text-align: center;font-family: PureunJeonnam;"><h5><strong>{{bookList.bookTitle}}</strong></h5></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>