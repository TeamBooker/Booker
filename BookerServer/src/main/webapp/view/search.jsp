<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html ng-app>
<head>
<meta charset="UTF-8">
<title>search</title>
</head>
<body>
<div class="container" >
<!-- 검색 -->
	<div class="row" style="width:500px;float:right;">
	  <div class="col-lg-6" style="float:right;">
	    <div class="input-group">
	      <input type="text" class="form-control" placeholder="Search for..." id="search" >
	      <span class="input-group-btn">
	        <button class="btn btn-default" type="button" onclick="Search()">Go!</button>
	      </span>
	    </div><!-- /input-group -->
	  </div><!-- /.col-lg-6 -->
	</div><!-- /.row -->


<!--상단 카테고리  -->
<div class="btn-group btn-group-justified" role="group" aria-label="..." style="padding-bottom: 50px;padding-top: 10px;">
  <div class="btn-group" role="group">
    <button id="0" type="button" class="btn btn-default" onclick="javascript:CategoryOn(this);">Fantasy</button>
  </div>
  <div class="btn-group" role="group">
    <button id="1" type="button" class="btn btn-default" onclick="javascript:CategoryOn(this);">Romance</button>
  </div>
  <div class="btn-group" role="group">
    <button id="2" type="button" class="btn btn-default" onclick="javascript:CategoryOn(this)">Study</button>
  </div>
  <div class="btn-group" role="group">
    <button id="3" type="button" class="btn btn-default" onclick="javascript:CategoryOn(this)">Other</button>
  </div>
</div>



</div>
	
<div id="list">
<c:choose>
	<c:when test="${fn:length(booksList) > 0}">
		<c:forEach var="booksList" items="${booksList}" varStatus="stat">
	                   
			  <div class="TB_BookBox" style=" width:240px; height:240px; float:left; margin-left: 20px; margin-right: 20px; margin-bottom: 30px;"> 
			    <div class="thumbnail" style="height:360px;">
			      <img src="" alt="..." onclick=""/>
			      <div class="caption">
			      
			        <div style="text-align: center;font-family: PureunJeonnam;"><h4>${booksList.BOOK_NAME}</h4></div>
			        <div style="text-align: right;font-family: PureunJeonnam;"><h5>${booksList.RENTAL }</h5></div>
			     
			      </div>
			    </div>
			  </div>
			
	   
	         
		</c:forEach>
	</c:when>
	                
	<c:otherwise>
	
	    <tr>
	       <center><td colspan="4">No results were found for your search.</td></center>
	    </tr>
	 
	</c:otherwise>
</c:choose>



</div>
</body>
</html>