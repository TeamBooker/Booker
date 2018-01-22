<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html ng-app>
<head>
<title>Insert title here</title>
</head>
<body>
<c:choose>
      	  <c:when test="${fn:length(comment.content) > 0}">	
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
	<c:forEach var="commentList" items="${comment.content}" varStatus="stat">

    <tr>
        <th scope="row">${commentList.commentId}</th>
        <td>${commentList.commentContent}</td>
        <td>${commentList.commentRate }</td>
        <td>${commentList.commentRegdate}
        &nbsp;
        &nbsp;
        <c:if test="${(sessionScope.UserId)==(commentList.commentId) }">
        	<span class="glyphicon glyphicon-remove" aria-hidden="true" id="${commentList.commentNo}"  ng-click="dropComment(${commentList.commentNo},${bookId})" ></span>
        </c:if>
        </td>
        
    </tr>

   	</c:forEach>
   	</table>
   	</div>
		 </c:when>
                
                <c:otherwise>
                <div style="font-family: PureunJeonnam;">
                    <tr>
                        <td colspan="4"><strong>There is no written review.</strong></td>
                    </tr>
                </div>
                </c:otherwise>
   </c:choose>
		
</body>
</html>