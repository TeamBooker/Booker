<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<title>Insert title here</title>
<script type="text/javascript">
$( document ).ready(function() {

	$( ".star_rating a" ).click(function() {
	    $(this).parent().children("a").removeClass("on");
	    $(this).addClass("on").prevAll("a").addClass("on");
	    
	    rate = $(this).attr("id");

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
</style>
</head>
<body>


<div id="wrap" style="height:500px; width:100%; margin-left:auto;
   			margin-right:auto;">

<div class="img" style=" float:left; width: 50%; height: 100%;">
<img src="/img/no_image.png" style="width: 80%; height: 90%; margin-left: 10%;margin-right: 10%;" >
</div>

	<div class="inform" style=" float:right;50%;height:300px; background:#FFFFFF; margin-right: 100px;padding-top:15px;margin-top:15px; font-family: PureunJeonnam; ">

	<table class="type05" width="450px" >
	<tr><td><strong>Title</strong></td><td>${book.bookTitle}</td></tr>
	<tr><td><strong>Writer</strong></td><td>${book.bookWriter}</td></tr>
	<tr><td><strong>Publisher</strong></td><td>${book.bookPublisher}</td></tr>
	<tr><td><strong>bookDate</strong></td><td>${book.bookDate}</td></tr>
	</table>
	
	<br/>


	<input type="button" class="btn btn-success btn-lg" style="font-family: PureunJeonnam;" value="RENT" />&nbsp;&nbsp;&nbsp;
	
	<input type="button" class="btn btn-warning btn-lg" style="font-family: PureunJeonnam;" value="WISH" />

	</div>
</div>
<center>
<div ng-if="${empty sessionScope.UserId }">
	<div style="text-align: center;background-color: #F6F6F6; width: 100%;">
		후기를 작성하기 위해선 로그인이 필요합니다.
	</div>
</div>
<div ng-if="${not empty sessionScope.UserId }">

	<div id="comment" class="comment" style="background:#F6F6F6;width:100%;margin-left:auto;font-family: PureunJeonnam; margin-right:auto;padding-top: 20px;">
	   			<strong>Please rate the book.</strong>
		<p class="star_rating" id="star_rating">
		    <a href="#" id="1">★</a>
		    <a href="#" id="2">★</a>
		    <a href="#" id="3">★</a>
		    <a href="#" id="4">★</a>
		    <a href="#" id="5">★</a>
		</p>

		<textarea rows="4" cols="100" id="commentContents" name="commentContents" value=""  ></textarea>
		<input type="button" class="btn btn-default" id="button1" ng-click="comment(${bookId})" value="Write" style="height:60pt;width:60pt;margin-bottom: 70px;font-family: PureunJeonnam;"  />
	
	</div>
</div>
<div id="commentList" style="margin-left:auto; margin-right:auto;"><jsp:include page="comment.jsp"></jsp:include></div>
</center>

</body>
</html>