function AdminController($scope, $http) {
	var baseUrl = '/admin';
	var loadCatalog = function(pageNumber){
		pageNumber = pageNumber ? pageNumber : 0;
		return $http({
			url : baseUrl + '/catalog',
			params : pageNumber
		});
	}
	loadCatalog(0)
	.then(function(resp){
		console.log(resp);
		$scope.data = resp.data;
	});

	$scope.nextCatalog = function(){
		loadCatalog($scope.data.number)
		.then(function(resp){
			console.log(resp);
			$scope.data = resp.data;
		});
	}
}