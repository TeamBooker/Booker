<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html ng-app>
<head>
<meta charset="UTF-8">
<title>search</title>
</head>
<body>
<div id="list">

<table class="table table-hover">
<thead>
	<tr>
		<td>Book</td>
		<td>Reservation Date</td>
		<td>State</td>
		<td>library</td>
	</tr>
</thead>
<tbody>
<c:choose>
	<c:when test="${fn:length(booksList) > 0}">
		<c:forEach var="booksList" items="${booksList}" varStatus="stat">
	   		<tr>
	   			<td></td>
	   			<td></td>
	   			<td></td>
	   			<td></td>
	   		</tr>
	         
		</c:forEach>
	</c:when>
	                
	<c:otherwise>
	
	    <tr>
	       <td colspan="4"><center>No results were found for your search.</center></td>
	    </tr>
	 
	</c:otherwise>
</c:choose>
</tbody>
</table>



</div>
</body>
</html>