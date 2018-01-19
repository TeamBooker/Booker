function AdminController($scope, $http) {
	$scope._ = _;
	var baseUrl = '/admin';
	$scope.loadCatalog = function(pageNumber){
		pageNumber = pageNumber ? pageNumber : 0;
		return $http({
			url : baseUrl + '/catalog',
			params : { "page": pageNumber }
		});
	}
	$scope.loadCatalog(0)
	.then(function(resp){
		console.log(resp);
		$scope.data = resp.data;
	});

	$scope.nextCatalog = function(){
		if ($scope.data.last)
			return;
		$scope.loadCatalog($scope.data.number + 1)
		.then(function(resp){
			console.log(resp);
			$scope.data = resp.data;
		});
	}
	$scope.previousCatalog = function(){
		if ($scope.data.first)
			return;
		$scope.loadCatalog($scope.data.number - 1)
		.then(function(resp){
			console.log(resp);
			$scope.data = resp.data;
		});
	}
}