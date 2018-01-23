function MyProfileController($scope, $http){
	_.merge($scope, {
		user : {
			name : '-',
			nameTag : '-',
			numberOf : {
				reservation : '-',
				reading : '-',
				rental : '-',
				wish : '-'
			}
		},
	});

	$http.get('currentUserProfile')
	.success(function(data){
		_.merge($scope.user, data);
		$scope.user.nameTag = data.name.toUpperCase().split('')[0]
	})
	console.log("MyProfileController loaded")
}