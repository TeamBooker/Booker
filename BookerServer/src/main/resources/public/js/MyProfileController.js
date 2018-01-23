function MyProfileController($scope, $http){
	console.log("MyProfileController loaded");

	_.merge(($scope.user = {}), {
		name : '-',
		nameTag : '-',
		numberOf : {
			reservation : '-',
			reading : '-',
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
		model : {},
		load : function(){

		}
	});
	/* read */
	_.merge(($scope.read = {}), {
		model : {},
		load : function(){

		}
	});
	/* rental */
	_.merge(($scope.rental = {}), {
		model : {},
		load : function(){

		}
	});
	/* wish */
	_.merge(($scope.wish = {}), {
		model : {},
		load : function(){

		}
	});
}