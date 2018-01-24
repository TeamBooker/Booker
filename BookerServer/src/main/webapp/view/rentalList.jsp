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
		<table class="table table-hover" ng-init="rental.load()">
			<thead>
				<tr>
					<th>Book</th>
					<th>Rental Date</th>
					<th>Library</th>
				</tr>
			</thead>
			<tbody ng-repeat="rental in rental.list">
				<tr>
					<td>{{rental.bookId}}</td>
					<td>{{rental.regDate}}</td>
					<td>-</td>
				</tr>
			</tbody>
			<tbody ng-hide="rental.list.length">
				<tr>
					<td colspan="3"><center>No results were found for your search.</center></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>