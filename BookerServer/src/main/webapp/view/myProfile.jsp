<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html ng-app>
<head>
	<meta charset="UTF-8">
	<title>MyProfile</title>
	<style type="text/css">
	.container{
		padding-top: 100px;
		width: 960px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="box box-primary">
						<div class="box-body box-profile">
							<img class="profile-user-img img-responsive img-circle" ng-src="https://dummyimage.com/128/128/fff&text={{user.nameTag}}" alt="User profile picture"/>
							<h3 class="profile-username text-center">{{user.name}}</h3>
							<p class="text-muted text-center">-</p>
							<table class="table">
								<tr><td><b>Reservation</b></td><td class="text-left">{{user.numberOf.reservation}}</td></tr>
								<tr><td><b>Reading</b></td><td class="text-left">{{user.numberOf.reading}}</td></tr>
								<tr><td><b>Rental</b></td><td class="text-left">{{user.numberOf.rental}}</td></tr>
								<tr><td><b>Wish</b></td><td class="text-left">{{user.numberOf.wish}}</td></tr>
							</table>
							<a href="#" class="btn btn-primary btn-block"><b>logout</b></a>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
</body>
</html>