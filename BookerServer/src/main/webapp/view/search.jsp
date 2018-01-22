<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html ng-app>
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
<div class="container" style=" padding-top: 100px;" >
<!-- 검색 -->
	<div class="row" style=" padding-left: 20%; padding-right: 20%;">
	  <div class="col-lg-6" style="width: 100%;">
	    <div class="input-group">
	      <input type="text" class="form-control" placeholder="Search for..." id="search_text" >
	      <span class="input-group-btn">
	        <button class="btn btn-default" type="button" ng-click="search()">Go!</button>
	      </span>
	    </div><!-- /input-group -->
	  </div><!-- /.col-lg-6 -->
	</div><!-- /.row -->

</div>

<div id="list" class="container" style="padding-top: 40px;">
<c:choose>
	<c:when test="${fn:length(bookLists.content) > 0}">
		<c:forEach var="bookList" items="${bookLists.content}" varStatus="stat">
		
	
			  <div class="${bookList.bookId}_BookBox" ng-click="bookDetail(${bookList.bookId})"  style=" width:240px; height:300px; float:left; margin-left: 20px; margin-right: 20px; margin-bottom: 30px;"> 
			    <div class="thumbnail" style="height:300px;" id="${bookList.bookId}">
			      
			      
			        
	 
					    <!-- normal -->
					    <div class="ih-item square effect6 from_top_and_bottom" style="width:100%;"><a href="">
					        <div class="img" style="width: 100%;"> <img src="/img/no_image.png" alt="..." onclick="" style="width: 100%;"/></div>
						        <div class="info">
						          <h3 style=" text-overflow: ellipsis; overflow: hidden;white-space: nowrap;">${bookList.bookWriter}</h3>
						          <p>${bookList.bookPublisher}</p>
						          <p>${bookList.bookDate}</p>
						        </div>
					        </a>
					        </div>
					    <!-- end normal -->
					 
				 
			      <div class="caption">
			        <div style="text-align: center;font-family: PureunJeonnam;"><h5><strong>${bookList.bookTitle}</strong></h5></div>
			
			      </div>
			    </div>
			  </div>
		
		
			         
		</c:forEach>
	</c:when>
	                
	<c:otherwise>
	    
	      <center>No results were found for your search.</center>
	    
	</c:otherwise>
</c:choose>



<nav>
  <ul class="pager">
  	<c:if test="${!pageFirst}">
    <li class="previous"><a href="#" ng-click="previousPage()"><span aria-hidden="true">&larr;</span> Older</a></li>
    </c:if>
    <c:if test="${!pageLast}">
    <li class="next"><a href="#" ng-click="nextPage()">Newer <span aria-hidden="true">&rarr;</span></a></li>
    </c:if>
  </ul>
</nav>
		
</div>
</body>
</html>