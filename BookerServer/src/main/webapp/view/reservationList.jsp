<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html ng-app>
<head>
	<meta charset="UTF-8">
	<title>search</title>
	<style type="text/css">
	.container{
		width:960px;
		padding-top:100px;
	}
</style>
</head>
<body>
	<div class="container">
		<table class="table table-hover" ng-init="reservation.load()">
			<thead>
				<tr>
					<th>Book</th>
					<th>Reservation Date</th>
					<th>Library</th>
				</tr>
			</thead>
			<tbody ng-repeat="reservation in reservation.list">
				<tr>
					<td>{{reservation.book.bookTitle}}</td>
					<td>{{reservation.regDate | date:'yyyy-MM-dd HH:mm:ss'}}</td>
					<td>-</td>
				</tr>
			</tbody>
			<tbody ng-hide="reservation.list.length">
				<tr>
					<td colspan="3"><center>No results were found for your search.</center></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>