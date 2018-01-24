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
		list : {},
		load : function(){

		}
	});
	/* read */
	_.merge(($scope.read = {}), {
		list : {},
		load : function(){

		}
	});
	/* rental */
	_.merge(($scope.rental = {}), {
		list : {},
		load : function(){

		}
	});
	/* wish */
	_.merge(($scope.wish = {}), {
		list : {},
		load : function(){

		}
	});
}