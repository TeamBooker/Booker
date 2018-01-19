function AdminController($scope, $http) {
	$scope._ = _;
	var baseUrl = '/admin';
	var loadCatalog = function(pageNumber){
		pageNumber = pageNumber ? pageNumber : 0;
		return $http({
			url : baseUrl + '/catalog',
			params : { "page": pageNumber }
		});
	};

	loadCatalog(0)
	.then(function(resp){
		console.log(resp);
		$scope.data = resp.data;
	});

	$scope.pageCatalog = function(page){
		loadCatalog(page)
		.then(function(resp){
			console.log(resp);
			$scope.data = resp.data;
		});
	}
	$scope.nextCatalog = function(){
		if ($scope.data.last)
			return;
		loadCatalog($scope.data.number + 1)
		.then(function(resp){
			console.log(resp);
			$scope.data = resp.data;
		});
	};

	$scope.previousCatalog = function(){
		if ($scope.data.first)
			return;
		loadCatalog($scope.data.number - 1)
		.then(function(resp){
			console.log(resp);
			$scope.data = resp.data;
		});
	};

}
