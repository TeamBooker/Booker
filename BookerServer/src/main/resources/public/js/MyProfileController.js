function MyProfileController($scope, $http){
	console.log("MyProfileController loaded");

	_.merge(($scope.user = {}), {
		name : '-',
		nameTag : '-',
		numberOf : {
			reservation : '-',
			read : '-',
			rental : '-',
			wish : '-'
		}
	});

	$http.get('currentUserProfile')
	.success(function(data){
		_.merge($scope.user, data);
		$scope.user.nameTag = data.name.toUpperCase().split('')[0]
	});

	/* reservation */
	_.merge(($scope.reservation = {}), {
		list : [],
		load : function(){
			console.log("load");
			$http.get('/currentUser/reservationList').success(function(data){
				$scope.reservation.list = data;
				console.log("reservation", data);
			}).error(console.error);
		}
	});
	/* read */
	_.merge(($scope.read = {}), {
		list : [],
		load : function(){

		}
	});
	/* rental */
	_.merge(($scope.rental = {}), {
		list : [],
		load : function(){
			console.log("load");
			$http.get('/currentUser/rentalList').success(function(data){
				$scope.rental.list = data;
				console.log("rental", data);
			}).error(console.error);
		}
	});
	/* wish */
	_.merge(($scope.wish = {}), {
		list : [],
		load : function(){

		}
	});
}